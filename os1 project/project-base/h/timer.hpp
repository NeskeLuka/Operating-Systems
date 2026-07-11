#ifndef TIMER_HPP
#define TIMER_HPP

#include "../lib/hw.h"

typedef unsigned long time_t;

class TCB;

class Timer {
public:
    static int sleep(time_t time);

    static void tick();

private:
    Timer() {};
    static TCB *sleepHead;
};

#endif
