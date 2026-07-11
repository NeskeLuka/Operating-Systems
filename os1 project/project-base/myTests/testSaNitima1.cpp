#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"

void fA(void *arg) {
    for (int i = 0; i < 5; i++) {
        putc('A');
        putc('0' + i + 1);
        putc('\n');
        thread_dispatch();
    }
}

void fB(void *arg) {
    for (int i = 0; i < 15; i++) {
        putc('B');
        putc('0' + i + 1);
        putc('\n');
        thread_dispatch();
    }
}

void fC(void *arg) {
    for (int i = 0; i < 15; i++) {
        putc('U');
        putc('N');
        putc('E');
        putc('S');
        putc('I');
        putc('\n');
        char c = getc();
        putc(c);
        putc('\n');
        thread_dispatch();
    }
}

void testSaNitima1() {
    thread_t threads[3];
    thread_create(&threads[0], fA, nullptr);
    thread_create(&threads[1], fB, nullptr);
    thread_create(&threads[2], fC, nullptr);
    while (!threads[0]->isFinished() || !threads[1]->isFinished() ||
           !threads[2]->isFinished()) {
        thread_dispatch();
    }
    delete threads[0];
    delete threads[1];
    delete threads[2];
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
Semaphore* consoleSem = nullptr;

void fA2(void *arg) {
    for (int i = 0; i < 5; i++) {
        consoleSem->wait();
        putc('A');
        putc('0' + i + 1);
        putc('\n');
        consoleSem->signal();

        thread_dispatch();
    }
}

void fB2(void *arg) {
    for (int i = 0; i < 15; i++) {
        consoleSem->wait();
        putc('B');
        putc('0' + i + 1);
        putc('\n');
        consoleSem->signal();

        thread_dispatch();
    }
}

void fC2(void *arg) {
    for (int i = 0; i < 5; i++) {
        consoleSem->wait();

        putc('U');
        putc('N');
        putc('E');
        putc('S');
        putc('I');
        putc('\n');
        char c = getc();
        putc(c);
        putc('\n');

        consoleSem->signal();

        thread_dispatch();
    }
}

void testSaNitima2() {
    consoleSem = new Semaphore(1);

    thread_t threads[3];

    thread_create(&threads[0], fA2, nullptr);
    thread_create(&threads[1], fB2, nullptr);
    thread_create(&threads[2], fC2, nullptr);

    while (!threads[0]->isFinished() ||
           !threads[1]->isFinished() ||
           !threads[2]->isFinished()) {
        thread_dispatch();
    }
    for(int i=0;i<3;i++)delete threads[i];
    delete consoleSem;
}