#include "../h/queue.hpp"
#include "../h/tcb.hpp"

void Queue::put(TCB *ccb) {
    if (!ccb)return;
    ccb->next = nullptr;
    if (tail) {
        tail->next = ccb;
        tail = ccb;
    } else {
        head = tail = ccb;
    }
}

TCB *Queue::get() {
    if (!head)return nullptr;
    TCB *ccb = head;
    head = head->next;
    if (!head)tail = head;
    ccb->next = nullptr;
    return ccb;
}

TCB *Queue::peek() {
    if (!head)return nullptr;
    return head;
}

void Queue::remove(TCB *ccb) {
    if (!ccb)return;
    if (head == ccb) {
        get();
        return;
    }
    TCB *curr = head, *prev = nullptr;
    while (curr && curr != ccb) {
        prev = curr;
        curr = curr->next;
    }
    if(curr){
        prev->next = curr->next; //Safe to assume that prev is not null since ccb was previously the head
        if(curr == tail)
            tail = prev;
        curr->next = nullptr;
    }
}
