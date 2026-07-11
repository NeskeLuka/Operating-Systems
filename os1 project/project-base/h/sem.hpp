#ifndef SEM_HPP
#define SEM_HPP

#include "../lib/hw.h"
#include "../h/queue.hpp"
//class Queue;

class Sem {
public:
    Sem(unsigned short int val = 1);
    ~Sem();

    int wait(unsigned int n = 1);

    int signal(unsigned int n = 1);

    int value() const;

    static Sem *semOpen(unsigned short int val);

    void close();

    bool isClosed() const { return closed; }

    static void *operator new(size_t size);

    static void operator delete(void *ptr) noexcept;

private:
    Sem() {};
    int val;
    bool closed = false;
    Queue blockedQueue;
};

#endif
