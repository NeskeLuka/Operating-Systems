#include "../h/riscv.hpp"
#include "../h/memoryAllocator.hpp"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"
#include "../h/timer.hpp"
#include "../h/MyConsole.hpp"
#include "../h/syscall_c.h"

void Riscv::popSppSpie() {
    if (!TCB::running->isKernelThread) {
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }
    Riscv::ms_sstatus(Riscv::SSTATUS_SPIE);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

inline void Riscv::handeEcall(uint64 code, uint64 arg1, uint64 arg2, uint64 arg3, uint64 arg4) {
    switch (code) {
        case 0x01: {//mem_alloc
            uint64 size = (uint64) arg1;//size in bytes
            //size in blocks
            size = ((size + sizeof(MemoryAllocator::BlockHeader)) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
            void *ptr = MemoryAllocator::mem_alloc(size);
            Riscv::updateResult((uint64) ptr);
            break;
        }
        case 0x02: {//mem_free
            void *ptr = (void *) arg1;
            Riscv::updateResult((uint64) MemoryAllocator::mem_free(ptr));
            break;
        }
        case 0x11: {//thread_create
            TCB **handle = (TCB **) arg1;
            *handle = TCB::createThread((void (*)(void *)) arg2, (void *) arg3, (uint64 *) arg4);
            (*handle == nullptr) ? Riscv::updateResult(-1) : Riscv::updateResult(0);
            break;
        }
        case 0x12: {//thread_exit
            TCB::thread_exit();
            (TCB::running == nullptr) ? Riscv::updateResult(-1) : Riscv::updateResult(0);
            break;
        }
        case 0x13: {//thread_dispatch
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            break;
        }
        case 0x14: {//thread_resume
            TCB::resume((thread_t)arg1);
            break;
        }
        case 0x15: {//thread_suspended
            TCB::suspend((thread_t)arg1);
            break;
        }
        case 0x21: {//sem_open
            Sem **sem = (Sem **) arg1;
            *sem = Sem::semOpen((unsigned short int) arg2);
            (*sem == nullptr) ? Riscv::updateResult(-1) : Riscv::updateResult(0);
            break;
        }
        case 0x22: {//sem_close
            Sem *handle = (Sem *) arg1;
            if (!handle) {
                Riscv::updateResult(-1);
                break;
            }
            handle->close();
            delete handle;
            Riscv::updateResult(0);
            break;
        }
        case 0x23: {//sem_wait
            Sem *id = (Sem *) arg1;
            Riscv::updateResult((uint64) id->wait());
            break;
        }
        case 0x24: {//sem_signal
            Sem *id = (Sem *) arg1;
            Riscv::updateResult((uint64) id->signal());
            break;
        }
        case 0x25: {//sem_wait(n)
            Sem *id = (Sem *) arg1;
            int res = id->wait((unsigned) arg2);
            Riscv::updateResult((uint64) res);
            break;
        }
        case 0x26: {//sem_signal(n)
            Sem *id = (Sem *) arg1;
            int res = id->signal((unsigned) arg2);
            Riscv::updateResult((uint64) res);
            break;
        }
        case 0x31: {//thread_sleep
            int res = Timer::sleep((time_t) arg1);
            Riscv::updateResult((uint64) res);
            break;
        }
        case 0x41: {//getc()
            char c = MyConsole::inputBuffer->get();
            Riscv::updateResult((uint64) c);
            break;
        }
        case 0x42: {//putc()
            MyConsole::outputBuffer->put((char) arg1);
            break;
        }
        default:
            break;
    }
}

inline void Riscv::printError(const char *msg) {
    volatile char *statusReg = (volatile char *) CONSOLE_STATUS;
    volatile char *txDataReg = (volatile char *) CONSOLE_TX_DATA;

    while (*msg) {
        while (!(*statusReg & CONSOLE_TX_STATUS_BIT)) {
        }
        *txDataReg = *msg;
        msg++;
    }
}

void Riscv::handleSupervisorTrap() {
    uint64 code, arg1, arg2, arg3, arg4;
    __asm__ volatile("mv %0, a0" : "=r"(code));
    __asm__ volatile("mv %0, a1" : "=r"(arg1));
    __asm__ volatile("mv %0, a2" : "=r"(arg2));
    __asm__ volatile("mv %0, a3" : "=r"(arg3));
    __asm__ volatile("mv %0, a4" : "=r"(arg4));

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
        Riscv::handeEcall(code, arg1, arg2, arg3, arg4);

        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL) {
        //interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        Timer::tick();
        if ((TCB::running && TCB::running->getTimeSlice() != 0)
            && (++TCB::timeSliceCounter >= TCB::running->getTimeSlice())) {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    } else if (scause == 0x8000000000000009UL) {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        int irq = plic_claim();

        if (irq == (int) CONSOLE_IRQ) {
            volatile char *rxDataReg = (volatile char *) CONSOLE_RX_DATA;

            while (*(volatile char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
                char c = *rxDataReg;

                MyConsole::inputBuffer->put(c);
            }
        }
        if (irq) {
            plic_complete(irq);
        }
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
        w_sstatus(sstatus);
        w_sepc(sepc);

    } else {
        if (scause <= 0xF && TCB::running != nullptr && !TCB::running->isKernelThread) {
            Riscv::printError("User thread tried to be kernel thread\n");
        }
        Riscv::endProgram();
    }
}


