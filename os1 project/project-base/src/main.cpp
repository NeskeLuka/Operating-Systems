#include "../h/riscv.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/syscall_c.h"
#include "../h/tcb.hpp"
#include "../h/MyConsole.hpp"

void userMain();

void main() {
    MemoryAllocator::init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    TCB::running = TCB::createThread(nullptr, nullptr);//idle main thread
    TCB::createGC();
    MyConsole::init();
    TCB::createThread(&MyConsole::consoleThreadBody, nullptr, nullptr, true);


    thread_t userThread;
    thread_create(&userThread,[](void*){userMain();}, nullptr);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!userThread->isFinished()) {
        thread_dispatch();
    }

    while (!MyConsole::outputBuffer->isEmpty()) {
        thread_dispatch();
    }

    delete TCB::running;
    delete TCB::garbageCollector;
    TCB::running = nullptr;
    Riscv::endProgram();
}