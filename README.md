# Operating-Systems
A compact yet fully functional multithreaded RISC-V operating system kernel, developed on Linux.
# RISC-V Kernel

A preemptive multithreaded operating system kernel for RISC-V, written from scratch in C++ and assembly. Runs bare metal on QEMU.

Built for the Operating Systems 1 course at the School of Electrical Engineering, University of Belgrade.

## What it is

There is no standard library here, no host operating system, and no allocator sitting underneath. The kernel boots into a bare machine, installs its own trap handler, and from that point provides threads, semaphores, dynamic memory, and console I/O to user programs.

Everything a normal program takes for granted — `new`, a thread, a mutex, a `printf` — had to be built before it could be used.

## The architecture

User code runs in RISC-V's unprivileged mode and cannot touch kernel memory or execute privileged instructions. Every request into the kernel crosses a real privilege boundary: an `ecall` traps into supervisor mode, arguments arrive in registers according to an ABI I defined, and control returns through `sret` to exactly the instruction the user program was suspended on.

Getting that return correct is more delicate than it sounds. The supervisor status and exception program counter registers have to be saved and restored around the trap, or the kernel returns a user thread into the wrong privilege level, or into the wrong instruction, or into itself. The system includes a test that deliberately attempts privileged instructions from user code and expects to be stopped — making it fail *correctly*, rather than crashing the kernel or quietly succeeding, was the sharpest edge of the whole project.

## Threads

Scheduling is preemptive. Every thread receives a time slice, and when a timer interrupt fires with the slice exhausted, the kernel picks the next ready thread and swaps to it. The context switch itself is assembly — stack pointer and return address exchanged between two thread control blocks, which is the smallest possible thing you can call an operating system.

Threads can also give up the processor voluntarily, block on a semaphore, or sleep for a fixed duration and be woken by the timer.

Two APIs sit on top of the same kernel. The C interface exposes the raw calls — create a thread, wait on a semaphore, allocate memory. The C++ interface wraps them in classes, where a thread is written by subclassing and overriding `run()`. Both can be mixed freely in the same program.

## The garbage collector

A thread cannot free the stack it is currently standing on.

This is obvious stated plainly and was not obvious while I was chasing the crash. A thread calling exit is still executing on its own stack. Releasing that memory means the very next instruction runs on freed memory, and the failure surfaces somewhere unrelated, much later, looking like something else entirely.

So exiting threads don't free themselves. They mark themselves finished and stop being scheduled, and a dedicated garbage collector thread reclaims their stacks afterward, once nothing is running on them anymore. The collector exists purely because of that constraint, and the constraint generalizes: a resource cannot clean itself up if the cleanup code needs the resource.

## Semaphores

Counting semaphores with genuine blocking. A thread that fails a wait is removed from the ready queue entirely and parked on the semaphore's own queue — it consumes no processor time while waiting, and a signal moves exactly one thread back. There is no spinning anywhere in the system.

They support waiting and signalling by more than one at a time, which the console depends on.

## Memory

Two layers. Underneath is a first-fit allocator working directly on a raw heap region the linker hands over, merging adjacent free blocks as they're released.

Above it is a pooled allocator for kernel objects. Thread control blocks and semaphores are small, numerous, and created and destroyed constantly, and running them through a general-purpose heap fragments it quickly. The pool carves fixed-size slots out of larger chunks instead, which keeps allocation constant-time and leaves the heap intact for user allocations. `new` and `delete` are overridden globally to route through it.

## Console

Input and output are a producer-consumer problem, so the kernel solves it with its own primitives.

User threads calling for a character block on a bounded buffer rather than polling the hardware. Kernel threads on the other side drain the buffer into the console port and fill it from the keyboard, synchronized by the same semaphores the rest of the system uses. The kernel eats its own cooking, which is the honest test of whether the primitives actually work.

## Building and running

Requires a RISC-V cross toolchain and `qemu-system-riscv64`. The Makefile locates the toolchain itself.
make        build the kernel image
make qemu   boot it under QEMU
make clean

MIT.
