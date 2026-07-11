#include "../h/memoryAllocator.hpp"

MemoryAllocator::BlockHeader* MemoryAllocator::freeMemHead = nullptr;
int MemoryAllocator::initialized = 0;

void MemoryAllocator::init() {
    if(initialized != 0)return;
    freeMemHead = (BlockHeader *) (HEAP_START_ADDR);
    freeMemHead->next = nullptr;
    //maximum number of blocks
    freeMemHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    initialized = 1;
}

//memory allocation using first fit algorithm
void *MemoryAllocator::mem_alloc(size_t size) { // size in bytes
    if(size <= 0)return nullptr;
    if(initialized == 0)init();

    BlockHeader* blk = freeMemHead, *prev = nullptr;
    for (; blk!=nullptr; prev = blk, blk = blk->next) {
        if (blk->size>=size)
            break;
    }

    if (!blk)return nullptr; //we do not have the free size that user needs
    size_t remainingSize = blk->size - size;
    if(remainingSize>0){
        BlockHeader* newBlock = (BlockHeader*)((char*)blk + size*MEM_BLOCK_SIZE);
        newBlock->next = blk->next;
        newBlock->size = remainingSize;

        if(prev)prev->next = newBlock;
        else freeMemHead = newBlock;
    }else{
        if(prev)prev->next = blk->next;
        else freeMemHead = blk->next;
    }
    blk->size = size;
    blk->next = nullptr;
    return (void*)((char*)blk + sizeof(BlockHeader));
}
//struct BlockHeader is sorted by address in ASC order
int MemoryAllocator::mem_free(void *ptr) {
    if(!ptr)return -1;
    if(initialized == 0)init();
    BlockHeader* blk = (BlockHeader*)((char*)ptr - sizeof(BlockHeader));
    BlockHeader* curr = freeMemHead, *prev = nullptr;

    for( ; curr && curr < blk; prev = curr, curr = curr->next);

    if(curr == blk || (prev && ((char*)prev + (prev->size * MEM_BLOCK_SIZE) > (char*)blk))){
        return -2; // ptr is already in BlockHeader freeList
    }
    blk->next = curr;
    if(prev)prev->next = blk;
    else freeMemHead = blk;

    if(curr && (char*)blk + (blk->size * MEM_BLOCK_SIZE) == (char*)curr){
        blk->size+=curr->size;
        blk->next = curr->next;
    }

    if(prev && (char*)prev + (prev->size * MEM_BLOCK_SIZE) == (char*)blk){
        prev->size+=blk->size;
        prev->next = blk->next;
    }
    return 0;
}

void *MemoryAllocator::kmalloc(size_t size) {
    if(size<=0)return nullptr;
    return mem_alloc((size + sizeof(BlockHeader) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
}

