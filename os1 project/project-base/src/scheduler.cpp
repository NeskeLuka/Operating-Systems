#include "../h/scheduler.hpp"

Queue Scheduler::readyQueue;

TCB *Scheduler::get() {
    return readyQueue.get();
}

void Scheduler::put(TCB *ccb) {
    readyQueue.put(ccb);
}

void Scheduler::remove(TCB* ccb) {
    readyQueue.remove(ccb);
}
