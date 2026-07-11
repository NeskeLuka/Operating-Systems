#ifndef QUEUE_HPP
#define QUEUE_HPP

class TCB;

class Queue {
public:
    Queue() : head(nullptr), tail(nullptr) {}

    void put(TCB *ccb);

    TCB *get();

    void remove(TCB *ccb);

    bool isEmpty() const { return head == nullptr; }

    TCB *peek();

private:
    TCB *head, *tail;
};

#endif
