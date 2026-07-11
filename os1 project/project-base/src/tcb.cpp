#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../h/slotAllocator.hpp"

TCB *TCB::running = nullptr;
TCB *TCB::garbageCollector = nullptr;
Queue TCB::finishedThreads;
uint64 TCB::timeSliceCounter = 0;


TCB *TCB::createThread(Body body, void *arg, uint64 *stackSpace, bool isKernelThread) {
    TCB *newThread = new TCB(body, arg, stackSpace);
    newThread->isKernelThread = isKernelThread;
    return newThread;
}

void TCB::yield() {
    __asm__ volatile("li a0, 0x13\n" "ecall");//syscall for dispatch
}

void TCB::dispatch() {
    TCB *old = running;
    if (old->state == ThreadState::RUNNING) {
        old->state = ThreadState::READY;
        Scheduler::put(old);
    } else if (old->state == ThreadState::FINISHED && old != TCB::garbageCollector) {
        finishedThreads.put(old);
    }
    running = Scheduler::get();
    if (running == nullptr) {
        running = old;
        running->state = ThreadState::RUNNING;
        return;
    }
    running->state = ThreadState::RUNNING;
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setState(ThreadState::FINISHED);
    TCB::yield();
}

void TCB::thread_exit() {
    if (TCB::running == nullptr)return;
    running->setState(ThreadState::FINISHED);
    TCB::timeSliceCounter = 0;
    TCB::dispatch();
}

void *TCB::operator new(size_t size) {
    return SlotAllocator<TCB>::allocateSlot();
}

void TCB::operator delete(void *ptr) noexcept {
    SlotAllocator<TCB>::deallocateSlot(ptr);
}

void TCB::garbageCollectorBody(void *) {
    while (true) {
        uint64 sstatus = Riscv::r_sstatus();
        Riscv::mc_sstatus(Riscv::SSTATUS_SIE); // lock
        TCB *dead = TCB::finishedThreads.get();
        Riscv::ms_sstatus(sstatus); // unlock
        if (dead != nullptr) {
            delete dead;
        } else TCB::yield();
    }
}

TCB *TCB::createGC() {
    TCB *gc = new TCB(&TCB::garbageCollectorBody, nullptr);
    gc->isKernelThread = true;
    gc->state = ThreadState::READY;
    TCB::garbageCollector = gc;
    return gc;
}

TCB::~TCB() {
    if (stack != nullptr) {
        MemoryAllocator::mem_free(stack);
    }
}

void TCB::suspend(TCB *tcb) {
    if(!tcb || tcb->getState() == BLOCKED)return;
    if(tcb == TCB::running){
        tcb->setState(BLOCKED);
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
    } else {
        if (tcb->getState() == READY) {
            Scheduler::remove(tcb);
        }
        tcb->setState(BLOCKED);
    }

}

void TCB::resume(TCB *tcb) {
    if(!tcb || tcb->getState() == READY)return;
    tcb->setState(READY);
    Scheduler::put(tcb);
}
