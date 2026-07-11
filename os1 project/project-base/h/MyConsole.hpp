#ifndef MYCONSOLE_HPP
#define MYCONSOLE_HPP

#include "../lib/hw.h"
#include "../h/boundedBuffer.hpp"

class MyConsole{
public:
    static BoundedBuffer *inputBuffer;  // RX buffer
    static BoundedBuffer *outputBuffer; // TX buffer

    static bool outputBufferEmpty();

    static void init();

    static void consoleThreadBody(void *);

private:
    MyConsole(){}//singleton
    static const int BUFFER_SIZE = 1024;
};


#endif
