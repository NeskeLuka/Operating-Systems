#ifndef SLOTALLOCATOR_HPP
#define SLOTALLOCATOR_HPP

#include "../lib/hw.h"
#include "../h/memoryAllocator.hpp"

//template class for allocating Semaphore and Thread dynamic objects
template<typename T, int CHUNK_SIZE = 64>

class SlotAllocator {
public:
    static void *allocateSlot() {
        Chunk *curr = head;
        while (curr) {
            for (int i = 0; i < CHUNK_SIZE; i++) {
                if (curr->used[i] == false) {
                    curr->used[i] = true;
                    curr->usedCnt++;
                    return (void *) (curr->data + i * sizeof(T));
                }
            }
            curr = curr->next;
        }

        Chunk *newChunk = (Chunk *) MemoryAllocator::kmalloc(sizeof(Chunk));
        if (!newChunk)return nullptr;
        newChunk->usedCnt = 1;
        newChunk->next = head;
        for (int i = 0; i < CHUNK_SIZE; i++) {
            newChunk->used[i] = false;
        }
        head = newChunk;
        head->used[0] = true;
        return (void *) (head->data + 0 * sizeof(T));
    }

    static void deallocateSlot(void *ptr) {
        if (!ptr)return;
        Chunk *curr = head, *prev = nullptr;
        while (curr) {
            if ((char *) ptr >= curr->data && (char *) ptr < &curr->data[CHUNK_SIZE * sizeof(T)]) {
                curr->used[((char *) ptr - curr->data) / sizeof(T)] = false;
                if (--curr->usedCnt == 0)break;
                return;
            }
            prev = curr;
            curr = curr->next;
        }
        if (!curr)return;
        if (prev)prev->next = curr->next;
        else head = curr->next;
        MemoryAllocator::mem_free(curr);
    }

private:
    SlotAllocator() {};

    struct Chunk {
        Chunk *next = nullptr;
        int usedCnt = 0;
        bool used[CHUNK_SIZE];
        char data[CHUNK_SIZE * sizeof(T)];
    };
    static Chunk *head;
};

template<typename T, int CHUNK_SIZE>
typename SlotAllocator<T, CHUNK_SIZE>::Chunk *
        SlotAllocator<T, CHUNK_SIZE>::head = nullptr;

#endif
