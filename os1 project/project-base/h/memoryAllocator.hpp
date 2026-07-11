#ifndef MEMORYALLOCATOR_HPP
#define MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

//Memory allocator class which implements first fit continual allocating method
class MemoryAllocator {
public:
    static void init();

    static void *kmalloc(size_t size);

    static int mem_free(void *ptr);


private:
    MemoryAllocator() = delete;

    MemoryAllocator(const MemoryAllocator &) = delete;

    static void *mem_alloc(size_t size);

    friend class Riscv;

    struct BlockHeader {
        BlockHeader *next;
        size_t size; //number of blocks in my BlockHeader
    };

    static BlockHeader *freeMemHead;

    static int initialized;

    friend class Riscv;
};

#endif
