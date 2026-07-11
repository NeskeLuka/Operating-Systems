#include "../h/syscall_cpp.hpp"

void *operator new(size_t size) {
    return mem_alloc(size);
}

void *operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete(void *ptr) noexcept {
    mem_free(ptr);
}

void operator delete[](void *ptr) noexcept {
    mem_free(ptr);
}

//Thread class
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {

}

int Thread::start() {
    if (myHandle)return -1;

    if (body != nullptr) {
        return thread_create(&myHandle, body, arg);
    }

    return thread_create(&myHandle, [](void *obj) { ((Thread *) obj)->run(); }, this);
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

void Thread::resume(Thread* thread) {
    thread_resume(thread->myHandle);
}

void Thread::suspend(Thread* thread) {
    thread_suspended(thread->myHandle);
}

//Semaphore
Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    if (myHandle) {
        sem_close(myHandle);
        myHandle = nullptr;
    }
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

//Console
char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

//Periodic thread
void PeriodicThread::terminate() {
    this->period = 0;
}

PeriodicThread::PeriodicThread(time_t period) {
    this->period = period;
}

void PeriodicThread::run() {
    while (this->period > 0) {
        periodicActivation();
        Thread::sleep(this->period);
    }
}
