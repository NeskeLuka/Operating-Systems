#include "../h/boundedBuffer.hpp"
#include "../h/memoryAllocator.hpp"

BoundedBuffer::BoundedBuffer(int capacity) : cap(capacity), head(0), tail(0) {
    buffer = (char *) MemoryAllocator::kmalloc(capacity * sizeof(char));

    itemAvailable = Sem::semOpen(0);
    spaceAvailable = Sem::semOpen(capacity);
}

BoundedBuffer::~BoundedBuffer() {
    MemoryAllocator::mem_free(buffer);
    delete itemAvailable;
    delete spaceAvailable;
}

void BoundedBuffer::put(char val) {
    spaceAvailable->wait();

    buffer[tail] = val;
    tail = (tail + 1) % cap;

    itemAvailable->signal();
}


char BoundedBuffer::get() {
    itemAvailable->wait();

    char ret = buffer[head];
    head = (head + 1) % cap;

    spaceAvailable->signal();
    return ret;
}

bool BoundedBuffer::isEmpty() {
    return head == tail;
}
