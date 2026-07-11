#include "../h/syscall_c.h"
#include "../h/tcb.hpp"

static void printChar(char c) {
    putc(c);
}

static void printStr(const char* s) {
    while (*s) putc(*s++);
}

static void printInt(int n) {
    if (n < 0) { putc('-'); n = -n; }
    if (n >= 10) printInt(n / 10);
    putc('0' + n % 10);
}
static const int ITER = 8;

static void threadA(void* /*arg*/) {
    for (int i = 1; i <= ITER; i++) {
        printStr("A:");
        printInt(i);
        printChar('\n');
//        for (volatile uint64 j = 0; j < 100000000UL; j++) {
//
//        }
        thread_dispatch();
    }
    printStr("A: finished\n");
}
//SLOWER THREADB
static void threadB(void* /*arg*/) {
    for (int i = 1; i <= ITER; i++) {
        printStr("B:");
        printInt(i);
        printStr(" (bb)\n");
//        for (volatile uint64 j = 0; j < 100000000UL; j++) {
//
//        }
        thread_dispatch();
    }
    printStr("B: finished\n");
}

//THREAD C SLEEPS 2 TICKS AND PRINTS THEN SLEEP AND SO ON
static void threadC(void* arg) {
    for (int i = 1; i <= 4; i++) {
        printStr("C: i'm waiting...\n");
        time_sleep(2);               // blocked for 2 ticks
        printStr("C: i woke up ");
        printInt(i);
        printChar('\n');
    }
    printStr("C: finished\n");
}

static void threadE(void* arg) {
    for (int i = 1; i <= 5; i++) {
        printStr("E: i'm waiting...\n");
        time_sleep(4);               // blocked for 4 ticks
        printStr("E: i woke up ");
        printInt(i);
        printChar('\n');
    }
    printStr("E: finished\n");
}

// -----------------------------------------------------------------------
// Thread D: "busy" thread -- returns in an infinite loop counting up to N
// Exists to check that the timer is overrunning heavy CPU-bound code.
// -----------------------------------------------------------------------

static void threadD(void* /*arg*/) {
    volatile long sum = 0;
    // racuna sumu da prevodilac ne optimizuje petlju
    for (long k = 0; k < 300000L; k++) sum += k;
    printStr("D: sum=");
    printInt((int)(sum % 100000));
    printChar('\n');
    printStr("D: finished\n");
}

// -----------------------------------------------------------------------
// The main test
// Starts all 4 threads and waits for them to finish synchronously from main-thread.
// main thread blocks itself with thread_dispatch() because it has to
// let the timer hijack it.
// -----------------------------------------------------------------------

void asynhroneThreadTest() {
    printStr("=== asynhroneTHreadTest1 STARTED ===\n");
    printStr("Expectation: Lines A/B/C/D INTERSECT (timer ticks over)\n");
    printStr("If A are all together and then B are all together -> the timer doesn't work!\n\n");

    thread_t tA, tB,tC,tD,tE;

    thread_create(&tA, threadA, nullptr);
    thread_create(&tB, threadB, nullptr);
    thread_create(&tC, threadC, nullptr);
    thread_create(&tD, threadD, nullptr);
    thread_create(&tE, threadE, nullptr);

   //waiting for all threads to finish
    while (!tA->isFinished() || !tB->isFinished() ||
           !tC->isFinished() || !tD->isFinished() || !tE->isFinished()) {
        thread_dispatch();
    }

    printStr("\n=== asynchroneThreadTest1 FINISHED ===\n");

//    delete tA;
//    delete tB;
//    delete tC;
//    delete tD;
//    delete tE;

}