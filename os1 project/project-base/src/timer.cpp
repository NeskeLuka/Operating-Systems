#include "../h/timer.hpp"
#include "../h/tcb.hpp"

TCB *Timer::sleepHead = nullptr;

int Timer::sleep(time_t time) {
    if (time <= 0)return -1;
    TCB *runningThread = TCB::running;

    runningThread->setState(TCB::ThreadState::SLEEPING);
    TCB *curr = sleepHead, *prev = nullptr;

    while (curr && time >= (time_t) curr->timeSleepCounter) {
        time -= curr->timeSleepCounter;
        prev = curr;
        curr = curr->nextSleep;
    }

    runningThread->timeSleepCounter = time;
    runningThread->nextSleep = curr;

    if (prev)prev->nextSleep = runningThread;
    else sleepHead = runningThread;

    if (curr)curr->timeSleepCounter -= time;

    TCB::timeSliceCounter = 0;//reset stopwatch
    TCB::dispatch();
    return 0;
}

void Timer::tick() {
    if (!sleepHead)return;
    sleepHead->timeSleepCounter--;

    while (sleepHead && sleepHead->timeSleepCounter == 0) {
        TCB *tcb = sleepHead;
        sleepHead = sleepHead->nextSleep;
        if (tcb->getState() != TCB::ThreadState::SLEEPING) continue;
        tcb->setState(TCB::ThreadState::READY);
        Scheduler::put(tcb);
    }
}
