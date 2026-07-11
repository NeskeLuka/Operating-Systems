#include "../h/syscall_c.h"

// --- Test Structures ---

// 1. A moderately sized struct with mixed data types
struct Employee {
    uint64 id;
    char name[32];
    double salary;
    bool isActive;
};

// 2. A node for testing scattered, small allocations (Linked List)
struct ListNode {
    uint64 data;
    ListNode* next;
};

// --- Custom Assert ---
// Replace this with your OS's actual panic, print, or handling function.
// If the condition is false, it halts the CPU.
#define ASSERT(condition) \
    if (!(condition)) { \
        /* Insert your print/panic or serial log here! */ \
        while(1); \
    }

// --- The Test Suite ---

bool run_syscall_memory_test() {
    // ---------------------------------------------------------
    // Phase 1: Basic Allocations and Data Integrity
    // ---------------------------------------------------------

    // Allocate a simple array
    int num_ints = 100;
    int* intArray = (int*)mem_alloc(num_ints * sizeof(int));
    ASSERT(intArray != nullptr);

    // Fill and verify (ensures memory is actually writable and non-overlapping)
    for (int i = 0; i < num_ints; i++) {
        intArray[i] = i * 2;
    }
    for (int i = 0; i < num_ints; i++) {
        ASSERT(intArray[i] == i * 2);
    }

    // Allocate an array of structs
    int num_emps = 50;
    Employee* empArray = (Employee*)mem_alloc(num_emps * sizeof(Employee));
    ASSERT(empArray != nullptr);

    for (int i = 0; i < num_emps; i++) {
        empArray[i].id = 1000 + i;
        empArray[i].isActive = (i % 2 == 0);
    }
    ASSERT(empArray[25].id == 1025);
    ASSERT(empArray[25].isActive == false);

    // ---------------------------------------------------------
    // Phase 2: Many Small Allocations (Linked List)
    // ---------------------------------------------------------

    ListNode* head = (ListNode*)mem_alloc(sizeof(ListNode));
    ASSERT(head != nullptr);
    head->data = 0;
    head->next = nullptr;

    ListNode* current = head;
    for (int i = 1; i < 200; i++) {
        current->next = (ListNode*)mem_alloc(sizeof(ListNode));
        ASSERT(current->next != nullptr);
        current = current->next;
        current->data = i;
        current->next = nullptr;
    }

    // Verify list integrity
    current = head;
    for (int i = 0; i < 200; i++) {
        ASSERT((int)current->data == i);
        current = current->next;
    }

    // Free the list
    current = head;
    while (current != nullptr) {
        ListNode* next = current->next;
        int status = mem_free(current);
        ASSERT(status == 0); // Assumes 0 means success
        current = next;
    }

    // ---------------------------------------------------------
    // Phase 3: The "Swiss Cheese" Fragmentation Test
    // ---------------------------------------------------------

    // Allocate 100 chunks of memory
    void* chunks[100];
    for (int i = 0; i < 100; i++) {
        chunks[i] = mem_alloc(128); // 128 bytes each
        ASSERT(chunks[i] != nullptr);
    }

    // Free EVERY OTHER chunk to create heavy fragmentation holes
    for (int i = 0; i < 100; i += 2) {
        ASSERT(mem_free(chunks[i]) == 0);
        chunks[i] = nullptr;
    }

    // Now request smaller fragments that should fit perfectly into those holes
    for (int i = 0; i < 100; i += 2) {
        chunks[i] = mem_alloc(64);
        ASSERT(chunks[i] != nullptr);
    }

    // Clean up Phase 3
    for (int i = 0; i < 100; i++) {
        ASSERT(mem_free(chunks[i]) == 0);
    }

    // ---------------------------------------------------------
    // Phase 4: Block Merging Test (Coalescing)
    // ---------------------------------------------------------

    // Allocate 3 contiguous blocks
    void* blockA = mem_alloc(1024);
    void* blockB = mem_alloc(1024);
    void* blockC = mem_alloc(1024);

    // Free them all. Your allocator should merge these back into one large contiguous block.
    ASSERT(mem_free(blockA) == 0);
    ASSERT(mem_free(blockB) == 0);
    ASSERT(mem_free(blockC) == 0);

    // Try to allocate a block larger than 1024, but smaller than the total merged space.
    // If your allocator fails to merge adjacent free blocks, this request will fail!
    void* giantBlock = mem_alloc(2048);
    ASSERT(giantBlock != nullptr);
    ASSERT(mem_free(giantBlock) == 0);

    // Clean up Phase 1 arrays
    ASSERT(mem_free(intArray) == 0);
    ASSERT(mem_free(empArray) == 0);

    return true; // All tests passed!
}