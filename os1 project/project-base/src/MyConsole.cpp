#include "../h/MyConsole.hpp"
#include "../h/tcb.hpp"

BoundedBuffer *MyConsole::inputBuffer = nullptr;
BoundedBuffer *MyConsole::outputBuffer = nullptr;

void MyConsole::init() {
    inputBuffer = new BoundedBuffer(BUFFER_SIZE);
    outputBuffer = new BoundedBuffer(BUFFER_SIZE);
}

void MyConsole::consoleThreadBody(void *) {
    volatile char *statusReg = (volatile char *) CONSOLE_STATUS;
    volatile char *txDataReg = (volatile char *) CONSOLE_TX_DATA;

    while (true) {
        char c = MyConsole::outputBuffer->get();


        while (!(*statusReg & CONSOLE_TX_STATUS_BIT)) {
        }

        *txDataReg = c;

    }

}

bool MyConsole::outputBufferEmpty() {
    return outputBuffer->isEmpty();
}
