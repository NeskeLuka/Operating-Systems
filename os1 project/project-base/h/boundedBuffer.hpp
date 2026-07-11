#ifndef BOUNDEDBUFFER_HPP
#define BOUNDEDBUFFER_HPP

#include "../lib/hw.h"
#include "../h/sem.hpp"

class BoundedBuffer {
public:
    BoundedBuffer(int capacity);

    ~BoundedBuffer();

    void put(char val);

    char get();

    bool isEmpty();

private:
    char *buffer;
    int cap, head, tail;

    Sem *itemAvailable;
    Sem *spaceAvailable;

};

#endif
