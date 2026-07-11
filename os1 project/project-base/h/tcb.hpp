#ifndef TCB_HPP
#define TCB_HPP

#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/memoryAllocator.hpp"

class TCB {
public:
    using Body = void (*)(void *);
    enum ThreadState {
        READY, RUNNING, BLOCKED, SLEEPING, FINISHED
    };

    static TCB *running;

    static TCB *createThread(Body body, void *arg, uint64 *stackSpace = nullptr, bool isKernelThread = false);

    static void yield();

    ThreadState getState() const { return state; }

    void setState(ThreadState threadState) { state = threadState; }

    bool isFinished() const { return state == ThreadState::FINISHED; }


    uint64 getTimeSlice() const { return timeSlice; }

    static void *operator new(size_t size);

    static void operator delete(void *ptr) noexcept;

    ~TCB();

    static TCB *createGC();

    static TCB *garbageCollector;

    static void suspend(TCB* tcb);

    static void resume(TCB* tcb);

private:
    TCB(Body body, void *arg, uint64 *stackSpace = nullptr, uint64 timeSlice = TIME_SLICE) :
            body(body),
            arg(arg),
            stack(stackSpace != nullptr ? stackSpace :
                  (body != nullptr ? (uint64 *) MemoryAllocator::kmalloc(STACK_SIZE * sizeof(uint64)) : nullptr)),
            context({body != nullptr ? (uint64) &threadWrapper : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
            timeSlice(timeSlice),
            next(nullptr), nextSleep(nullptr),
            state(body != nullptr ? ThreadState::READY : ThreadState::RUNNING),
            semWaitCnt(0) {
        if (body != nullptr) { Scheduler::put(this); }
    }

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void *arg;
    uint64 *stack;
    Context context;
    uint64 timeSlice, timeSleepCounter = 0;//how long can this thread run?, how long this thread should sleep?
    TCB *next, *nextSleep;
    ThreadState state;
    unsigned int semWaitCnt;

    bool isKernelThread = false;

    friend class Riscv;

    friend class Sem;

    friend class Timer;

    friend class Queue;

    friend class MyConsole;

    static Queue finishedThreads;

    static void garbageCollectorBody(void *);

    static void thread_exit();

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static uint64 timeSliceCounter;//stopwatch for current thread
    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;
};

#endif