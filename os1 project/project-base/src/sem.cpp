#include "../h/sem.hpp"
#include "../h/tcb.hpp"
#include "../h/slotAllocator.hpp"
#include "../h/riscv.hpp"

Sem::Sem(unsigned short val) : val(val) {}

int Sem::value() const {
    return val;
}

int Sem::wait(unsigned int n) {
    if (this->closed)return -1;
    if (val >= (int) n) {
        val -= (int) n;
    } else {
        TCB::running->setState(TCB::ThreadState::BLOCKED);
        TCB::running->semWaitCnt = n;
        blockedQueue.put(TCB::running);
        TCB::dispatch();
        if (this->closed)return -1;
    }
    return 0;
}

int Sem::signal(unsigned int n) {
    if (this->closed)return -1;
    val += (int) n;

    while (blockedQueue.peek()) {
        TCB *tcb = blockedQueue.peek();
        if (val >= (int) tcb->semWaitCnt) {
            val -= (int) tcb->semWaitCnt;
            tcb->semWaitCnt = 0;
            blockedQueue.get();
            tcb->setState(TCB::ThreadState::READY);
            Scheduler::put(tcb);
        } else break;
    }
    return 0;
}

Sem *Sem::semOpen(unsigned short val) {
    return new Sem(val);
}

void Sem::close() {
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    closed = true;
    while (true) {
        TCB *tcb = blockedQueue.get();
        if (!tcb)break;
        tcb->semWaitCnt = 0;
        tcb->setState(TCB::ThreadState::READY);
        Scheduler::put(tcb);
    }
    Riscv::w_sstatus(sstatus);
}

void *Sem::operator new(size_t) {
    return SlotAllocator<Sem>::allocateSlot();
}

void Sem::operator delete(void *ptr) noexcept {
    SlotAllocator<Sem>::deallocateSlot(ptr);
}

Sem::~Sem() {
    if (!this->closed)
        this->close();
}

