#include "printing.hpp"
#include "../h/syscall_cpp.hpp"

// C: biva suspendovana od A, budi je A na kraju
class ThreadC : public Thread {
public:
    ThreadC(Semaphore *sem) : Thread(), sem(sem) {}
protected:
    void run() override {
        printString("C: startovala\n");
        volatile int s = 0;
        for (int i = 0; i < 200; i++) for (int j = 0; j < 200; j++) s++;
        printString("C: nastavila (A me je probudila)\n");
        for (int i = 0; i < 200; i++) for (int j = 0; j < 200; j++) s++;
        printString("C: zavrsila\n");
        sem->signal();
    }
    Semaphore *sem;
};

// A: suspenduje C, pa sebe; kad je D probudi -> budi C
class ThreadA : public Thread {
public:
    ThreadA(Thread *c, Semaphore *sem) : Thread(), c(c), sem(sem) {}
protected:
    void run() override {
        printString("A: startovala\n");

        printString("A: suspendujem C\n");
        this->suspend(c);

        volatile int s = 0;
        for (int i = 0; i < 150; i++) for (int j = 0; j < 150; j++) s++;

        printString("A: suspendujem samu sebe\n");
        this->suspend(this);

        // stize TEK kad D uradi resume(A)
        printString("A: probudjena od D, budim C\n");
        this->resume(c);

        printString("A: zavrsila\n");
        sem->signal();
    }
    Thread *c;
    Semaphore *sem;
};

// B: radi obradu pa suspenduje A
class ThreadB : public Thread {
public:
    ThreadB(Thread *a, Semaphore *sem) : Thread(), a(a), sem(sem) {}
protected:
    void run() override {
        printString("B: startovala\n");
        volatile int s = 0;
        for (int i = 0; i < 250; i++) for (int j = 0; j < 250; j++) s++;
        printString("B: suspendujem A\n");
        this->suspend(a);
        for (int i = 0; i < 250; i++) for (int j = 0; j < 250; j++) s++;
        printString("B: zavrsila\n");
        sem->signal();
    }
    Thread *a;
    Semaphore *sem;
};

// D: ceka najduze, pa budi A
class ThreadD : public Thread {
public:
    ThreadD(Thread *a, Semaphore *sem) : Thread(), a(a), sem(sem) {}
protected:
    void run() override {
        printString("D: startovala\n");
        volatile int s = 0;
        for (int i = 0; i < 900; i++) for (int j = 0; j < 900; j++) s++;
        printString("D: budim A\n");
        this->resume(a);
        printString("D: zavrsila\n");
        sem->signal();
    }
    Thread *a;
    Semaphore *sem;
};

void threadSuspendChain() {
    Semaphore *sem = new Semaphore(0);

    ThreadC *c = new ThreadC(sem);
    ThreadA *a = new ThreadA(c, sem);
    ThreadB *b = new ThreadB(a, sem);
    ThreadD *d = new ThreadD(a, sem);

    a->start();
    b->start();
    c->start();
    d->start();

    for (int i = 0; i < 4; i++) sem->wait();
    printString("MAIN: kraj testa\n");
}