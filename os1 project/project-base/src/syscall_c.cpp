#include "../h/syscall_c.h"

// Simple macro for all necessary registers that we need in superVisorTrap
#define SYSCALL(code, arg1, arg2, arg3, arg4, ret)  \
    __asm__ volatile(                               \
        "mv  a4, %[a4]\n"                           \
        "mv  a3, %[a3]\n"                           \
        "mv  a2, %[a2]\n"                           \
        "mv  a1, %[a1]\n"                           \
        "li  a0, " #code "\n"                       \
        "ecall\n"                                   \
        "mv  %[ret], a0\n"                          \
        : [ret] "=r"(ret)                           \
        : [a1] "r"((uint64)(arg1)),                 \
          [a2] "r"((uint64)(arg2)),                 \
          [a3] "r"((uint64)(arg3)),                 \
          [a4] "r"((uint64)(arg4))                  \
    )

// Simplified syscall for those functions without arguments
#define SYSCALLZ(code, ret) SYSCALL(code, 0, 0, 0, 0, ret)


// MemoryAllocators
void *mem_alloc(size_t size) {
    uint64 ret;
    SYSCALL(0x01, size, 0, 0, 0, ret);
    return (void *) ret;
}

int mem_free(void *ptr) {
    uint64 ret;
    SYSCALL(0x02, ptr, 0, 0, 0, ret);
    return (int) ret;
}

// Threads
int thread_create(thread_t *handle, void(*start)(void *), void *arg) {
    uint64 ret;
    void *stack_space = mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    SYSCALL(0x11, handle, start, arg, stack_space, ret);
    return (int) ret;
}

int thread_exit() {
    uint64 ret;
    SYSCALLZ(0x12, ret);
    return (int) ret;
}

void thread_dispatch() {
    uint64 ret;
    SYSCALLZ(0x13, ret);
}

void thread_resume(thread_t handle) {
    uint64 ret;
    SYSCALL(0x14, handle, 0, 0, 0, ret);
}

void thread_suspended(thread_t handle) {
    uint64 ret;
    SYSCALL(0x15, handle, 0, 0, 0, ret);
}

// Semaphore
int sem_open(sem_t *handle, unsigned init) {
    uint64 ret;
    SYSCALL(0x21, handle, init, 0, 0, ret);
    return (int) ret;
}

int sem_close(sem_t handle) {
    uint64 ret;
    SYSCALL(0x22, handle, 0, 0, 0, ret);
    return (int) ret;
}

int sem_wait(sem_t id) {
    uint64 ret;
    SYSCALL(0x23, id, 0, 0, 0, ret);
    return (int) ret;
}

int sem_signal(sem_t id) {
    uint64 ret;
    SYSCALL(0x24, id, 0, 0, 0, ret);
    return (int) ret;
}

int sem_wait_n(sem_t id, unsigned n) {
    uint64 ret;
    SYSCALL(0x25, id, n, 0, 0, ret);
    return (int) ret;
}

int sem_signal_n(sem_t id, unsigned n) {
    uint64 ret;
    SYSCALL(0x26, id, n, 0, 0, ret);
    return (int) ret;
}

// Timer
int time_sleep(time_t time) {
    if (time <= 0) return -1;
    uint64 ret;
    SYSCALL(0x31, time, 0, 0, 0, ret);
    return (int) ret;
}

// Console
char getc() {
    uint64 ret;
    SYSCALLZ(0x41, ret);
    return (char) ret;
}

void putc(char c) {
    uint64 ret;
    SYSCALL(0x42, c, 0, 0, 0, ret);
}