#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "../h/queue.hpp"

class TCB;

//fifo && singleton
class Scheduler {
public:
    static TCB *get();

    static void put(TCB *ccb);

    static void remove(TCB *ccb);

private:
    Scheduler() {};
    static Queue readyQueue;
};

#endif
