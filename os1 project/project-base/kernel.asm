
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00010117          	auipc	sp,0x10
    80000004:	e4813103          	ld	sp,-440(sp) # 8000fe48 <_GLOBAL_OFFSET_TABLE_+0x48>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	008090ef          	jal	ra,80009024 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	17d010ef          	jal	ra,80002a00 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra,  0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp,  1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra,  0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp,  1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)


    ret
    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_ZN13BoundedBufferC1Ei>:
#include "../h/boundedBuffer.hpp"
#include "../h/memoryAllocator.hpp"

BoundedBuffer::BoundedBuffer(int capacity) : cap(capacity), head(0), tail(0) {
    80001144:	fe010113          	addi	sp,sp,-32
    80001148:	00113c23          	sd	ra,24(sp)
    8000114c:	00813823          	sd	s0,16(sp)
    80001150:	00913423          	sd	s1,8(sp)
    80001154:	01213023          	sd	s2,0(sp)
    80001158:	02010413          	addi	s0,sp,32
    8000115c:	00050493          	mv	s1,a0
    80001160:	00058913          	mv	s2,a1
    80001164:	00b52423          	sw	a1,8(a0)
    80001168:	00052623          	sw	zero,12(a0)
    8000116c:	00052823          	sw	zero,16(a0)
    buffer = (char *) MemoryAllocator::kmalloc(capacity * sizeof(char));
    80001170:	00058513          	mv	a0,a1
    80001174:	00001097          	auipc	ra,0x1
    80001178:	2ec080e7          	jalr	748(ra) # 80002460 <_ZN15MemoryAllocator7kmallocEm>
    8000117c:	00a4b023          	sd	a0,0(s1)

    itemAvailable = Sem::semOpen(0);
    80001180:	00000513          	li	a0,0
    80001184:	00002097          	auipc	ra,0x2
    80001188:	fb4080e7          	jalr	-76(ra) # 80003138 <_ZN3Sem7semOpenEt>
    8000118c:	00a4bc23          	sd	a0,24(s1)
    spaceAvailable = Sem::semOpen(capacity);
    80001190:	03091513          	slli	a0,s2,0x30
    80001194:	03055513          	srli	a0,a0,0x30
    80001198:	00002097          	auipc	ra,0x2
    8000119c:	fa0080e7          	jalr	-96(ra) # 80003138 <_ZN3Sem7semOpenEt>
    800011a0:	02a4b023          	sd	a0,32(s1)
}
    800011a4:	01813083          	ld	ra,24(sp)
    800011a8:	01013403          	ld	s0,16(sp)
    800011ac:	00813483          	ld	s1,8(sp)
    800011b0:	00013903          	ld	s2,0(sp)
    800011b4:	02010113          	addi	sp,sp,32
    800011b8:	00008067          	ret

00000000800011bc <_ZN13BoundedBufferD1Ev>:

BoundedBuffer::~BoundedBuffer() {
    800011bc:	fe010113          	addi	sp,sp,-32
    800011c0:	00113c23          	sd	ra,24(sp)
    800011c4:	00813823          	sd	s0,16(sp)
    800011c8:	00913423          	sd	s1,8(sp)
    800011cc:	01213023          	sd	s2,0(sp)
    800011d0:	02010413          	addi	s0,sp,32
    800011d4:	00050493          	mv	s1,a0
    MemoryAllocator::mem_free(buffer);
    800011d8:	00053503          	ld	a0,0(a0)
    800011dc:	00001097          	auipc	ra,0x1
    800011e0:	168080e7          	jalr	360(ra) # 80002344 <_ZN15MemoryAllocator8mem_freeEPv>
    delete itemAvailable;
    800011e4:	0184b903          	ld	s2,24(s1)
    800011e8:	00090e63          	beqz	s2,80001204 <_ZN13BoundedBufferD1Ev+0x48>
    800011ec:	00090513          	mv	a0,s2
    800011f0:	00002097          	auipc	ra,0x2
    800011f4:	048080e7          	jalr	72(ra) # 80003238 <_ZN3SemD1Ev>
    800011f8:	00090513          	mv	a0,s2
    800011fc:	00002097          	auipc	ra,0x2
    80001200:	f90080e7          	jalr	-112(ra) # 8000318c <_ZN3SemdlEPv>
    delete spaceAvailable;
    80001204:	0204b483          	ld	s1,32(s1)
    80001208:	00048e63          	beqz	s1,80001224 <_ZN13BoundedBufferD1Ev+0x68>
    8000120c:	00048513          	mv	a0,s1
    80001210:	00002097          	auipc	ra,0x2
    80001214:	028080e7          	jalr	40(ra) # 80003238 <_ZN3SemD1Ev>
    80001218:	00048513          	mv	a0,s1
    8000121c:	00002097          	auipc	ra,0x2
    80001220:	f70080e7          	jalr	-144(ra) # 8000318c <_ZN3SemdlEPv>
}
    80001224:	01813083          	ld	ra,24(sp)
    80001228:	01013403          	ld	s0,16(sp)
    8000122c:	00813483          	ld	s1,8(sp)
    80001230:	00013903          	ld	s2,0(sp)
    80001234:	02010113          	addi	sp,sp,32
    80001238:	00008067          	ret

000000008000123c <_ZN13BoundedBuffer3putEc>:

void BoundedBuffer::put(char val) {
    8000123c:	fe010113          	addi	sp,sp,-32
    80001240:	00113c23          	sd	ra,24(sp)
    80001244:	00813823          	sd	s0,16(sp)
    80001248:	00913423          	sd	s1,8(sp)
    8000124c:	01213023          	sd	s2,0(sp)
    80001250:	02010413          	addi	s0,sp,32
    80001254:	00050493          	mv	s1,a0
    80001258:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000125c:	00100593          	li	a1,1
    80001260:	02053503          	ld	a0,32(a0)
    80001264:	00002097          	auipc	ra,0x2
    80001268:	c28080e7          	jalr	-984(ra) # 80002e8c <_ZN3Sem4waitEj>

    buffer[tail] = val;
    8000126c:	0004b783          	ld	a5,0(s1)
    80001270:	0104a703          	lw	a4,16(s1)
    80001274:	00e787b3          	add	a5,a5,a4
    80001278:	01278023          	sb	s2,0(a5)
    tail = (tail + 1) % cap;
    8000127c:	0104a783          	lw	a5,16(s1)
    80001280:	0017879b          	addiw	a5,a5,1
    80001284:	0084a703          	lw	a4,8(s1)
    80001288:	02e7e7bb          	remw	a5,a5,a4
    8000128c:	00f4a823          	sw	a5,16(s1)

    itemAvailable->signal();
    80001290:	00100593          	li	a1,1
    80001294:	0184b503          	ld	a0,24(s1)
    80001298:	00002097          	auipc	ra,0x2
    8000129c:	c90080e7          	jalr	-880(ra) # 80002f28 <_ZN3Sem6signalEj>
}
    800012a0:	01813083          	ld	ra,24(sp)
    800012a4:	01013403          	ld	s0,16(sp)
    800012a8:	00813483          	ld	s1,8(sp)
    800012ac:	00013903          	ld	s2,0(sp)
    800012b0:	02010113          	addi	sp,sp,32
    800012b4:	00008067          	ret

00000000800012b8 <_ZN13BoundedBuffer3getEv>:


char BoundedBuffer::get() {
    800012b8:	fe010113          	addi	sp,sp,-32
    800012bc:	00113c23          	sd	ra,24(sp)
    800012c0:	00813823          	sd	s0,16(sp)
    800012c4:	00913423          	sd	s1,8(sp)
    800012c8:	01213023          	sd	s2,0(sp)
    800012cc:	02010413          	addi	s0,sp,32
    800012d0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800012d4:	00100593          	li	a1,1
    800012d8:	01853503          	ld	a0,24(a0)
    800012dc:	00002097          	auipc	ra,0x2
    800012e0:	bb0080e7          	jalr	-1104(ra) # 80002e8c <_ZN3Sem4waitEj>

    char ret = buffer[head];
    800012e4:	0004b703          	ld	a4,0(s1)
    800012e8:	00c4a783          	lw	a5,12(s1)
    800012ec:	00f70733          	add	a4,a4,a5
    800012f0:	00074903          	lbu	s2,0(a4)
    head = (head + 1) % cap;
    800012f4:	0017879b          	addiw	a5,a5,1
    800012f8:	0084a703          	lw	a4,8(s1)
    800012fc:	02e7e7bb          	remw	a5,a5,a4
    80001300:	00f4a623          	sw	a5,12(s1)

    spaceAvailable->signal();
    80001304:	00100593          	li	a1,1
    80001308:	0204b503          	ld	a0,32(s1)
    8000130c:	00002097          	auipc	ra,0x2
    80001310:	c1c080e7          	jalr	-996(ra) # 80002f28 <_ZN3Sem6signalEj>
    return ret;
}
    80001314:	00090513          	mv	a0,s2
    80001318:	01813083          	ld	ra,24(sp)
    8000131c:	01013403          	ld	s0,16(sp)
    80001320:	00813483          	ld	s1,8(sp)
    80001324:	00013903          	ld	s2,0(sp)
    80001328:	02010113          	addi	sp,sp,32
    8000132c:	00008067          	ret

0000000080001330 <_ZN13BoundedBuffer7isEmptyEv>:

bool BoundedBuffer::isEmpty() {
    80001330:	ff010113          	addi	sp,sp,-16
    80001334:	00813423          	sd	s0,8(sp)
    80001338:	01010413          	addi	s0,sp,16
    return head == tail;
    8000133c:	00c52783          	lw	a5,12(a0)
    80001340:	01052503          	lw	a0,16(a0)
    80001344:	40f50533          	sub	a0,a0,a5
}
    80001348:	00153513          	seqz	a0,a0
    8000134c:	00813403          	ld	s0,8(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <_Z9mem_allocm>:
// Simplified syscall for those functions without arguments
#define SYSCALLZ(code, ret) SYSCALL(code, 0, 0, 0, 0, ret)


// MemoryAllocators
void *mem_alloc(size_t size) {
    80001358:	ff010113          	addi	sp,sp,-16
    8000135c:	00813423          	sd	s0,8(sp)
    80001360:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x01, size, 0, 0, 0, ret);
    80001364:	00000793          	li	a5,0
    80001368:	00078713          	mv	a4,a5
    8000136c:	00078693          	mv	a3,a5
    80001370:	00078613          	mv	a2,a5
    80001374:	00050593          	mv	a1,a0
    80001378:	00100513          	li	a0,1
    8000137c:	00000073          	ecall
    80001380:	00050513          	mv	a0,a0
    return (void *) ret;
}
    80001384:	00813403          	ld	s0,8(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z8mem_freePv>:

int mem_free(void *ptr) {
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x02, ptr, 0, 0, 0, ret);
    8000139c:	00000793          	li	a5,0
    800013a0:	00078713          	mv	a4,a5
    800013a4:	00078693          	mv	a3,a5
    800013a8:	00078613          	mv	a2,a5
    800013ac:	00050593          	mv	a1,a0
    800013b0:	00200513          	li	a0,2
    800013b4:	00000073          	ecall
    800013b8:	00050793          	mv	a5,a0
    return (int) ret;
}
    800013bc:	0007851b          	sext.w	a0,a5
    800013c0:	00813403          	ld	s0,8(sp)
    800013c4:	01010113          	addi	sp,sp,16
    800013c8:	00008067          	ret

00000000800013cc <_Z13thread_createPP3TCBPFvPvES2_>:

// Threads
int thread_create(thread_t *handle, void(*start)(void *), void *arg) {
    800013cc:	fd010113          	addi	sp,sp,-48
    800013d0:	02113423          	sd	ra,40(sp)
    800013d4:	02813023          	sd	s0,32(sp)
    800013d8:	00913c23          	sd	s1,24(sp)
    800013dc:	01213823          	sd	s2,16(sp)
    800013e0:	01313423          	sd	s3,8(sp)
    800013e4:	03010413          	addi	s0,sp,48
    800013e8:	00050493          	mv	s1,a0
    800013ec:	00058913          	mv	s2,a1
    800013f0:	00060993          	mv	s3,a2
    uint64 ret;
    void *stack_space = mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    800013f4:	00008537          	lui	a0,0x8
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	f60080e7          	jalr	-160(ra) # 80001358 <_Z9mem_allocm>
    SYSCALL(0x11, handle, start, arg, stack_space, ret);
    80001400:	00050713          	mv	a4,a0
    80001404:	00098693          	mv	a3,s3
    80001408:	00090613          	mv	a2,s2
    8000140c:	00048593          	mv	a1,s1
    80001410:	01100513          	li	a0,17
    80001414:	00000073          	ecall
    80001418:	00050513          	mv	a0,a0
    return (int) ret;
}
    8000141c:	0005051b          	sext.w	a0,a0
    80001420:	02813083          	ld	ra,40(sp)
    80001424:	02013403          	ld	s0,32(sp)
    80001428:	01813483          	ld	s1,24(sp)
    8000142c:	01013903          	ld	s2,16(sp)
    80001430:	00813983          	ld	s3,8(sp)
    80001434:	03010113          	addi	sp,sp,48
    80001438:	00008067          	ret

000000008000143c <_Z11thread_exitv>:

int thread_exit() {
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00813423          	sd	s0,8(sp)
    80001444:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALLZ(0x12, ret);
    80001448:	00000513          	li	a0,0
    8000144c:	00050713          	mv	a4,a0
    80001450:	00050693          	mv	a3,a0
    80001454:	00050613          	mv	a2,a0
    80001458:	00050593          	mv	a1,a0
    8000145c:	01200513          	li	a0,18
    80001460:	00000073          	ecall
    80001464:	00050513          	mv	a0,a0
    return (int) ret;
}
    80001468:	0005051b          	sext.w	a0,a0
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <_Z15thread_dispatchv>:

void thread_dispatch() {
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALLZ(0x13, ret);
    80001484:	00000793          	li	a5,0
    80001488:	00078713          	mv	a4,a5
    8000148c:	00078693          	mv	a3,a5
    80001490:	00078613          	mv	a2,a5
    80001494:	00078593          	mv	a1,a5
    80001498:	01300513          	li	a0,19
    8000149c:	00000073          	ecall
    800014a0:	00050793          	mv	a5,a0
}
    800014a4:	00813403          	ld	s0,8(sp)
    800014a8:	01010113          	addi	sp,sp,16
    800014ac:	00008067          	ret

00000000800014b0 <_Z13thread_resumeP3TCB>:

void thread_resume(thread_t handle) {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00813423          	sd	s0,8(sp)
    800014b8:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x14, handle, 0, 0, 0, ret);
    800014bc:	00000793          	li	a5,0
    800014c0:	00078713          	mv	a4,a5
    800014c4:	00078693          	mv	a3,a5
    800014c8:	00078613          	mv	a2,a5
    800014cc:	00050593          	mv	a1,a0
    800014d0:	01400513          	li	a0,20
    800014d4:	00000073          	ecall
    800014d8:	00050793          	mv	a5,a0
}
    800014dc:	00813403          	ld	s0,8(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_Z16thread_suspendedP3TCB>:

void thread_suspended(thread_t handle) {
    800014e8:	ff010113          	addi	sp,sp,-16
    800014ec:	00813423          	sd	s0,8(sp)
    800014f0:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x15, handle, 0, 0, 0, ret);
    800014f4:	00000793          	li	a5,0
    800014f8:	00078713          	mv	a4,a5
    800014fc:	00078693          	mv	a3,a5
    80001500:	00078613          	mv	a2,a5
    80001504:	00050593          	mv	a1,a0
    80001508:	01500513          	li	a0,21
    8000150c:	00000073          	ecall
    80001510:	00050793          	mv	a5,a0
}
    80001514:	00813403          	ld	s0,8(sp)
    80001518:	01010113          	addi	sp,sp,16
    8000151c:	00008067          	ret

0000000080001520 <_Z8sem_openPP3Semj>:

// Semaphore
int sem_open(sem_t *handle, unsigned init) {
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00813423          	sd	s0,8(sp)
    80001528:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x21, handle, init, 0, 0, ret);
    8000152c:	02059593          	slli	a1,a1,0x20
    80001530:	0205d593          	srli	a1,a1,0x20
    80001534:	00000793          	li	a5,0
    80001538:	00078713          	mv	a4,a5
    8000153c:	00078693          	mv	a3,a5
    80001540:	00058613          	mv	a2,a1
    80001544:	00050593          	mv	a1,a0
    80001548:	02100513          	li	a0,33
    8000154c:	00000073          	ecall
    80001550:	00050513          	mv	a0,a0
    return (int) ret;
}
    80001554:	0005051b          	sext.w	a0,a0
    80001558:	00813403          	ld	s0,8(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00813423          	sd	s0,8(sp)
    8000156c:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x22, handle, 0, 0, 0, ret);
    80001570:	00000793          	li	a5,0
    80001574:	00078713          	mv	a4,a5
    80001578:	00078693          	mv	a3,a5
    8000157c:	00078613          	mv	a2,a5
    80001580:	00050593          	mv	a1,a0
    80001584:	02200513          	li	a0,34
    80001588:	00000073          	ecall
    8000158c:	00050793          	mv	a5,a0
    return (int) ret;
}
    80001590:	0007851b          	sext.w	a0,a5
    80001594:	00813403          	ld	s0,8(sp)
    80001598:	01010113          	addi	sp,sp,16
    8000159c:	00008067          	ret

00000000800015a0 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00813423          	sd	s0,8(sp)
    800015a8:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x23, id, 0, 0, 0, ret);
    800015ac:	00000793          	li	a5,0
    800015b0:	00078713          	mv	a4,a5
    800015b4:	00078693          	mv	a3,a5
    800015b8:	00078613          	mv	a2,a5
    800015bc:	00050593          	mv	a1,a0
    800015c0:	02300513          	li	a0,35
    800015c4:	00000073          	ecall
    800015c8:	00050793          	mv	a5,a0
    return (int) ret;
}
    800015cc:	0007851b          	sext.w	a0,a5
    800015d0:	00813403          	ld	s0,8(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00813423          	sd	s0,8(sp)
    800015e4:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x24, id, 0, 0, 0, ret);
    800015e8:	00000793          	li	a5,0
    800015ec:	00078713          	mv	a4,a5
    800015f0:	00078693          	mv	a3,a5
    800015f4:	00078613          	mv	a2,a5
    800015f8:	00050593          	mv	a1,a0
    800015fc:	02400513          	li	a0,36
    80001600:	00000073          	ecall
    80001604:	00050793          	mv	a5,a0
    return (int) ret;
}
    80001608:	0007851b          	sext.w	a0,a5
    8000160c:	00813403          	ld	s0,8(sp)
    80001610:	01010113          	addi	sp,sp,16
    80001614:	00008067          	ret

0000000080001618 <_Z10sem_wait_nP3Semj>:

int sem_wait_n(sem_t id, unsigned n) {
    80001618:	ff010113          	addi	sp,sp,-16
    8000161c:	00813423          	sd	s0,8(sp)
    80001620:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x25, id, n, 0, 0, ret);
    80001624:	02059593          	slli	a1,a1,0x20
    80001628:	0205d593          	srli	a1,a1,0x20
    8000162c:	00000793          	li	a5,0
    80001630:	00078713          	mv	a4,a5
    80001634:	00078693          	mv	a3,a5
    80001638:	00058613          	mv	a2,a1
    8000163c:	00050593          	mv	a1,a0
    80001640:	02500513          	li	a0,37
    80001644:	00000073          	ecall
    80001648:	00050513          	mv	a0,a0
    return (int) ret;
}
    8000164c:	0005051b          	sext.w	a0,a0
    80001650:	00813403          	ld	s0,8(sp)
    80001654:	01010113          	addi	sp,sp,16
    80001658:	00008067          	ret

000000008000165c <_Z12sem_signal_nP3Semj>:

int sem_signal_n(sem_t id, unsigned n) {
    8000165c:	ff010113          	addi	sp,sp,-16
    80001660:	00813423          	sd	s0,8(sp)
    80001664:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x26, id, n, 0, 0, ret);
    80001668:	02059593          	slli	a1,a1,0x20
    8000166c:	0205d593          	srli	a1,a1,0x20
    80001670:	00000793          	li	a5,0
    80001674:	00078713          	mv	a4,a5
    80001678:	00078693          	mv	a3,a5
    8000167c:	00058613          	mv	a2,a1
    80001680:	00050593          	mv	a1,a0
    80001684:	02600513          	li	a0,38
    80001688:	00000073          	ecall
    8000168c:	00050513          	mv	a0,a0
    return (int) ret;
}
    80001690:	0005051b          	sext.w	a0,a0
    80001694:	00813403          	ld	s0,8(sp)
    80001698:	01010113          	addi	sp,sp,16
    8000169c:	00008067          	ret

00000000800016a0 <_Z10time_sleepm>:

// Timer
int time_sleep(time_t time) {
    800016a0:	ff010113          	addi	sp,sp,-16
    800016a4:	00813423          	sd	s0,8(sp)
    800016a8:	01010413          	addi	s0,sp,16
    if (time <= 0) return -1;
    800016ac:	02050a63          	beqz	a0,800016e0 <_Z10time_sleepm+0x40>
    uint64 ret;
    SYSCALL(0x31, time, 0, 0, 0, ret);
    800016b0:	00000793          	li	a5,0
    800016b4:	00078713          	mv	a4,a5
    800016b8:	00078693          	mv	a3,a5
    800016bc:	00078613          	mv	a2,a5
    800016c0:	00050593          	mv	a1,a0
    800016c4:	03100513          	li	a0,49
    800016c8:	00000073          	ecall
    800016cc:	00050793          	mv	a5,a0
    return (int) ret;
    800016d0:	0007851b          	sext.w	a0,a5
}
    800016d4:	00813403          	ld	s0,8(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret
    if (time <= 0) return -1;
    800016e0:	fff00513          	li	a0,-1
    800016e4:	ff1ff06f          	j	800016d4 <_Z10time_sleepm+0x34>

00000000800016e8 <_Z4getcv>:

// Console
char getc() {
    800016e8:	ff010113          	addi	sp,sp,-16
    800016ec:	00813423          	sd	s0,8(sp)
    800016f0:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALLZ(0x41, ret);
    800016f4:	00000513          	li	a0,0
    800016f8:	00050713          	mv	a4,a0
    800016fc:	00050693          	mv	a3,a0
    80001700:	00050613          	mv	a2,a0
    80001704:	00050593          	mv	a1,a0
    80001708:	04100513          	li	a0,65
    8000170c:	00000073          	ecall
    80001710:	00050513          	mv	a0,a0
    return (char) ret;
}
    80001714:	0ff57513          	andi	a0,a0,255
    80001718:	00813403          	ld	s0,8(sp)
    8000171c:	01010113          	addi	sp,sp,16
    80001720:	00008067          	ret

0000000080001724 <_Z4putcc>:

void putc(char c) {
    80001724:	ff010113          	addi	sp,sp,-16
    80001728:	00813423          	sd	s0,8(sp)
    8000172c:	01010413          	addi	s0,sp,16
    uint64 ret;
    SYSCALL(0x42, c, 0, 0, 0, ret);
    80001730:	00000793          	li	a5,0
    80001734:	00078713          	mv	a4,a5
    80001738:	00078693          	mv	a3,a5
    8000173c:	00078613          	mv	a2,a5
    80001740:	00050593          	mv	a1,a0
    80001744:	04200513          	li	a0,66
    80001748:	00000073          	ecall
    8000174c:	00050793          	mv	a5,a0
    80001750:	00813403          	ld	s0,8(sp)
    80001754:	01010113          	addi	sp,sp,16
    80001758:	00008067          	ret

000000008000175c <_ZN5Queue3putEP3TCB>:
#include "../h/queue.hpp"
#include "../h/tcb.hpp"

void Queue::put(TCB *ccb) {
    8000175c:	ff010113          	addi	sp,sp,-16
    80001760:	00813423          	sd	s0,8(sp)
    80001764:	01010413          	addi	s0,sp,16
    if (!ccb)return;
    80001768:	00058c63          	beqz	a1,80001780 <_ZN5Queue3putEP3TCB+0x24>
    ccb->next = nullptr;
    8000176c:	0205bc23          	sd	zero,56(a1)
    if (tail) {
    80001770:	00853783          	ld	a5,8(a0) # 8008 <_entry-0x7fff7ff8>
    80001774:	00078c63          	beqz	a5,8000178c <_ZN5Queue3putEP3TCB+0x30>
        tail->next = ccb;
    80001778:	02b7bc23          	sd	a1,56(a5)
        tail = ccb;
    8000177c:	00b53423          	sd	a1,8(a0)
    } else {
        head = tail = ccb;
    }
}
    80001780:	00813403          	ld	s0,8(sp)
    80001784:	01010113          	addi	sp,sp,16
    80001788:	00008067          	ret
        head = tail = ccb;
    8000178c:	00b53423          	sd	a1,8(a0)
    80001790:	00b53023          	sd	a1,0(a0)
    80001794:	fedff06f          	j	80001780 <_ZN5Queue3putEP3TCB+0x24>

0000000080001798 <_ZN5Queue3getEv>:

TCB *Queue::get() {
    80001798:	ff010113          	addi	sp,sp,-16
    8000179c:	00813423          	sd	s0,8(sp)
    800017a0:	01010413          	addi	s0,sp,16
    800017a4:	00050793          	mv	a5,a0
    if (!head)return nullptr;
    800017a8:	00053503          	ld	a0,0(a0)
    800017ac:	00050a63          	beqz	a0,800017c0 <_ZN5Queue3getEv+0x28>
    TCB *ccb = head;
    head = head->next;
    800017b0:	03853703          	ld	a4,56(a0)
    800017b4:	00e7b023          	sd	a4,0(a5)
    if (!head)tail = head;
    800017b8:	00070a63          	beqz	a4,800017cc <_ZN5Queue3getEv+0x34>
    ccb->next = nullptr;
    800017bc:	02053c23          	sd	zero,56(a0)
    return ccb;
}
    800017c0:	00813403          	ld	s0,8(sp)
    800017c4:	01010113          	addi	sp,sp,16
    800017c8:	00008067          	ret
    if (!head)tail = head;
    800017cc:	00e7b423          	sd	a4,8(a5)
    800017d0:	fedff06f          	j	800017bc <_ZN5Queue3getEv+0x24>

00000000800017d4 <_ZN5Queue4peekEv>:

TCB *Queue::peek() {
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00813423          	sd	s0,8(sp)
    800017dc:	01010413          	addi	s0,sp,16
    if (!head)return nullptr;
    return head;
}
    800017e0:	00053503          	ld	a0,0(a0)
    800017e4:	00813403          	ld	s0,8(sp)
    800017e8:	01010113          	addi	sp,sp,16
    800017ec:	00008067          	ret

00000000800017f0 <_ZN5Queue6removeEP3TCB>:

void Queue::remove(TCB *ccb) {
    if (!ccb)return;
    800017f0:	06058863          	beqz	a1,80001860 <_ZN5Queue6removeEP3TCB+0x70>
    if (head == ccb) {
    800017f4:	00053783          	ld	a5,0(a0)
    800017f8:	00b78e63          	beq	a5,a1,80001814 <_ZN5Queue6removeEP3TCB+0x24>
        get();
        return;
    }
    TCB *curr = head, *prev = nullptr;
    800017fc:	00000713          	li	a4,0
    while (curr && curr != ccb) {
    80001800:	02078e63          	beqz	a5,8000183c <_ZN5Queue6removeEP3TCB+0x4c>
    80001804:	02b78c63          	beq	a5,a1,8000183c <_ZN5Queue6removeEP3TCB+0x4c>
        prev = curr;
    80001808:	00078713          	mv	a4,a5
        curr = curr->next;
    8000180c:	0387b783          	ld	a5,56(a5)
    while (curr && curr != ccb) {
    80001810:	ff1ff06f          	j	80001800 <_ZN5Queue6removeEP3TCB+0x10>
void Queue::remove(TCB *ccb) {
    80001814:	ff010113          	addi	sp,sp,-16
    80001818:	00113423          	sd	ra,8(sp)
    8000181c:	00813023          	sd	s0,0(sp)
    80001820:	01010413          	addi	s0,sp,16
        get();
    80001824:	00000097          	auipc	ra,0x0
    80001828:	f74080e7          	jalr	-140(ra) # 80001798 <_ZN5Queue3getEv>
        prev->next = curr->next; //Safe to assume that prev is not null since ccb was previously the head
        if(curr == tail)
            tail = prev;
        curr->next = nullptr;
    }
}
    8000182c:	00813083          	ld	ra,8(sp)
    80001830:	00013403          	ld	s0,0(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret
    if(curr){
    8000183c:	02078263          	beqz	a5,80001860 <_ZN5Queue6removeEP3TCB+0x70>
        prev->next = curr->next; //Safe to assume that prev is not null since ccb was previously the head
    80001840:	0387b683          	ld	a3,56(a5)
    80001844:	02d73c23          	sd	a3,56(a4)
        if(curr == tail)
    80001848:	00853683          	ld	a3,8(a0)
    8000184c:	00f68663          	beq	a3,a5,80001858 <_ZN5Queue6removeEP3TCB+0x68>
        curr->next = nullptr;
    80001850:	0207bc23          	sd	zero,56(a5)
    80001854:	00008067          	ret
            tail = prev;
    80001858:	00e53423          	sd	a4,8(a0)
    8000185c:	ff5ff06f          	j	80001850 <_ZN5Queue6removeEP3TCB+0x60>
    80001860:	00008067          	ret

0000000080001864 <_ZN9MyConsole4initEv>:
#include "../h/tcb.hpp"

BoundedBuffer *MyConsole::inputBuffer = nullptr;
BoundedBuffer *MyConsole::outputBuffer = nullptr;

void MyConsole::init() {
    80001864:	fe010113          	addi	sp,sp,-32
    80001868:	00113c23          	sd	ra,24(sp)
    8000186c:	00813823          	sd	s0,16(sp)
    80001870:	00913423          	sd	s1,8(sp)
    80001874:	01213023          	sd	s2,0(sp)
    80001878:	02010413          	addi	s0,sp,32
    inputBuffer = new BoundedBuffer(BUFFER_SIZE);
    8000187c:	02800513          	li	a0,40
    80001880:	00001097          	auipc	ra,0x1
    80001884:	ca0080e7          	jalr	-864(ra) # 80002520 <_Znwm>
    80001888:	00050493          	mv	s1,a0
    8000188c:	40000593          	li	a1,1024
    80001890:	00000097          	auipc	ra,0x0
    80001894:	8b4080e7          	jalr	-1868(ra) # 80001144 <_ZN13BoundedBufferC1Ei>
    80001898:	0000e797          	auipc	a5,0xe
    8000189c:	6297bc23          	sd	s1,1592(a5) # 8000fed0 <_ZN9MyConsole11inputBufferE>
    outputBuffer = new BoundedBuffer(BUFFER_SIZE);
    800018a0:	02800513          	li	a0,40
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	c7c080e7          	jalr	-900(ra) # 80002520 <_Znwm>
    800018ac:	00050493          	mv	s1,a0
    800018b0:	40000593          	li	a1,1024
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	890080e7          	jalr	-1904(ra) # 80001144 <_ZN13BoundedBufferC1Ei>
    800018bc:	0000e797          	auipc	a5,0xe
    800018c0:	6097be23          	sd	s1,1564(a5) # 8000fed8 <_ZN9MyConsole12outputBufferE>
}
    800018c4:	01813083          	ld	ra,24(sp)
    800018c8:	01013403          	ld	s0,16(sp)
    800018cc:	00813483          	ld	s1,8(sp)
    800018d0:	00013903          	ld	s2,0(sp)
    800018d4:	02010113          	addi	sp,sp,32
    800018d8:	00008067          	ret
    800018dc:	00050913          	mv	s2,a0
    inputBuffer = new BoundedBuffer(BUFFER_SIZE);
    800018e0:	00048513          	mv	a0,s1
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	c8c080e7          	jalr	-884(ra) # 80002570 <_ZdlPv>
    800018ec:	00090513          	mv	a0,s2
    800018f0:	0000f097          	auipc	ra,0xf
    800018f4:	7b8080e7          	jalr	1976(ra) # 800110a8 <_Unwind_Resume>
    800018f8:	00050913          	mv	s2,a0
    outputBuffer = new BoundedBuffer(BUFFER_SIZE);
    800018fc:	00048513          	mv	a0,s1
    80001900:	00001097          	auipc	ra,0x1
    80001904:	c70080e7          	jalr	-912(ra) # 80002570 <_ZdlPv>
    80001908:	00090513          	mv	a0,s2
    8000190c:	0000f097          	auipc	ra,0xf
    80001910:	79c080e7          	jalr	1948(ra) # 800110a8 <_Unwind_Resume>

0000000080001914 <_ZN9MyConsole17consoleThreadBodyEPv>:

void MyConsole::consoleThreadBody(void *) {
    80001914:	fe010113          	addi	sp,sp,-32
    80001918:	00113c23          	sd	ra,24(sp)
    8000191c:	00813823          	sd	s0,16(sp)
    80001920:	00913423          	sd	s1,8(sp)
    80001924:	01213023          	sd	s2,0(sp)
    80001928:	02010413          	addi	s0,sp,32
    volatile char *statusReg = (volatile char *) CONSOLE_STATUS;
    8000192c:	0000e797          	auipc	a5,0xe
    80001930:	4e47b783          	ld	a5,1252(a5) # 8000fe10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001934:	0007b483          	ld	s1,0(a5)
    volatile char *txDataReg = (volatile char *) CONSOLE_TX_DATA;
    80001938:	0000e797          	auipc	a5,0xe
    8000193c:	5087b783          	ld	a5,1288(a5) # 8000fe40 <_GLOBAL_OFFSET_TABLE_+0x40>
    80001940:	0007b903          	ld	s2,0(a5)
    80001944:	0080006f          	j	8000194c <_ZN9MyConsole17consoleThreadBodyEPv+0x38>


        while (!(*statusReg & CONSOLE_TX_STATUS_BIT)) {
        }

        *txDataReg = c;
    80001948:	00a90023          	sb	a0,0(s2)
        char c = MyConsole::outputBuffer->get();
    8000194c:	0000e517          	auipc	a0,0xe
    80001950:	58c53503          	ld	a0,1420(a0) # 8000fed8 <_ZN9MyConsole12outputBufferE>
    80001954:	00000097          	auipc	ra,0x0
    80001958:	964080e7          	jalr	-1692(ra) # 800012b8 <_ZN13BoundedBuffer3getEv>
        while (!(*statusReg & CONSOLE_TX_STATUS_BIT)) {
    8000195c:	0004c783          	lbu	a5,0(s1)
    80001960:	0ff7f793          	andi	a5,a5,255
    80001964:	0207f793          	andi	a5,a5,32
    80001968:	fe078ae3          	beqz	a5,8000195c <_ZN9MyConsole17consoleThreadBodyEPv+0x48>
    8000196c:	fddff06f          	j	80001948 <_ZN9MyConsole17consoleThreadBodyEPv+0x34>

0000000080001970 <_ZN9MyConsole17outputBufferEmptyEv>:

    }

}

bool MyConsole::outputBufferEmpty() {
    80001970:	ff010113          	addi	sp,sp,-16
    80001974:	00113423          	sd	ra,8(sp)
    80001978:	00813023          	sd	s0,0(sp)
    8000197c:	01010413          	addi	s0,sp,16
    return outputBuffer->isEmpty();
    80001980:	0000e517          	auipc	a0,0xe
    80001984:	55853503          	ld	a0,1368(a0) # 8000fed8 <_ZN9MyConsole12outputBufferE>
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	9a8080e7          	jalr	-1624(ra) # 80001330 <_ZN13BoundedBuffer7isEmptyEv>
}
    80001990:	00813083          	ld	ra,8(sp)
    80001994:	00013403          	ld	s0,0(sp)
    80001998:	01010113          	addi	sp,sp,16
    8000199c:	00008067          	ret

00000000800019a0 <_ZZ4mainENUlPvE_4_FUNES_>:
    MyConsole::init();
    TCB::createThread(&MyConsole::consoleThreadBody, nullptr, nullptr, true);


    thread_t userThread;
    thread_create(&userThread,[](void*){userMain();}, nullptr);
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	00813023          	sd	s0,0(sp)
    800019ac:	01010413          	addi	s0,sp,16
    800019b0:	00005097          	auipc	ra,0x5
    800019b4:	dac080e7          	jalr	-596(ra) # 8000675c <_Z8userMainv>
    800019b8:	00813083          	ld	ra,8(sp)
    800019bc:	00013403          	ld	s0,0(sp)
    800019c0:	01010113          	addi	sp,sp,16
    800019c4:	00008067          	ret

00000000800019c8 <main>:
void main() {
    800019c8:	fd010113          	addi	sp,sp,-48
    800019cc:	02113423          	sd	ra,40(sp)
    800019d0:	02813023          	sd	s0,32(sp)
    800019d4:	00913c23          	sd	s1,24(sp)
    800019d8:	03010413          	addi	s0,sp,48
    MemoryAllocator::init();
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	828080e7          	jalr	-2008(ra) # 80002204 <_ZN15MemoryAllocator4initEv>
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800019e4:	0000e797          	auipc	a5,0xe
    800019e8:	44c7b783          	ld	a5,1100(a5) # 8000fe30 <_GLOBAL_OFFSET_TABLE_+0x30>
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800019ec:	10579073          	csrw	stvec,a5
    TCB::running = TCB::createThread(nullptr, nullptr);//idle main thread
    800019f0:	00000693          	li	a3,0
    800019f4:	00000613          	li	a2,0
    800019f8:	00000593          	li	a1,0
    800019fc:	00000513          	li	a0,0
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	46c080e7          	jalr	1132(ra) # 80001e6c <_ZN3TCB12createThreadEPFvPvES0_Pmb>
    80001a08:	0000e797          	auipc	a5,0xe
    80001a0c:	4607b783          	ld	a5,1120(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001a10:	00a7b023          	sd	a0,0(a5)
    TCB::createGC();
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	574080e7          	jalr	1396(ra) # 80001f88 <_ZN3TCB8createGCEv>
    MyConsole::init();
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	e48080e7          	jalr	-440(ra) # 80001864 <_ZN9MyConsole4initEv>
    TCB::createThread(&MyConsole::consoleThreadBody, nullptr, nullptr, true);
    80001a24:	00100693          	li	a3,1
    80001a28:	00000613          	li	a2,0
    80001a2c:	00000593          	li	a1,0
    80001a30:	0000e517          	auipc	a0,0xe
    80001a34:	3f053503          	ld	a0,1008(a0) # 8000fe20 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	434080e7          	jalr	1076(ra) # 80001e6c <_ZN3TCB12createThreadEPFvPvES0_Pmb>
    thread_create(&userThread,[](void*){userMain();}, nullptr);
    80001a40:	00000613          	li	a2,0
    80001a44:	00000597          	auipc	a1,0x0
    80001a48:	f5c58593          	addi	a1,a1,-164 # 800019a0 <_ZZ4mainENUlPvE_4_FUNES_>
    80001a4c:	fd840513          	addi	a0,s0,-40
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	97c080e7          	jalr	-1668(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a58:	00200793          	li	a5,2
    80001a5c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while (!userThread->isFinished()) {
    80001a60:	fd843783          	ld	a5,-40(s0)

    ThreadState getState() const { return state; }

    void setState(ThreadState threadState) { state = threadState; }

    bool isFinished() const { return state == ThreadState::FINISHED; }
    80001a64:	0487a703          	lw	a4,72(a5)
    80001a68:	00400793          	li	a5,4
    80001a6c:	00f70863          	beq	a4,a5,80001a7c <main+0xb4>
        thread_dispatch();
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	a08080e7          	jalr	-1528(ra) # 80001478 <_Z15thread_dispatchv>
    80001a78:	fe9ff06f          	j	80001a60 <main+0x98>
    }

    while (!MyConsole::outputBuffer->isEmpty()) {
    80001a7c:	0000e797          	auipc	a5,0xe
    80001a80:	3dc7b783          	ld	a5,988(a5) # 8000fe58 <_GLOBAL_OFFSET_TABLE_+0x58>
    80001a84:	0007b503          	ld	a0,0(a5)
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	8a8080e7          	jalr	-1880(ra) # 80001330 <_ZN13BoundedBuffer7isEmptyEv>
    80001a90:	00051863          	bnez	a0,80001aa0 <main+0xd8>
        thread_dispatch();
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	9e4080e7          	jalr	-1564(ra) # 80001478 <_Z15thread_dispatchv>
    80001a9c:	fe1ff06f          	j	80001a7c <main+0xb4>
    }

    delete TCB::running;
    80001aa0:	0000e797          	auipc	a5,0xe
    80001aa4:	3c87b783          	ld	a5,968(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001aa8:	0007b483          	ld	s1,0(a5)
    80001aac:	00048e63          	beqz	s1,80001ac8 <main+0x100>
    80001ab0:	00048513          	mv	a0,s1
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	5bc080e7          	jalr	1468(ra) # 80002070 <_ZN3TCBD1Ev>
    80001abc:	00048513          	mv	a0,s1
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	2f8080e7          	jalr	760(ra) # 80001db8 <_ZN3TCBdlEPv>
    delete TCB::garbageCollector;
    80001ac8:	0000e797          	auipc	a5,0xe
    80001acc:	3987b783          	ld	a5,920(a5) # 8000fe60 <_GLOBAL_OFFSET_TABLE_+0x60>
    80001ad0:	0007b483          	ld	s1,0(a5)
    80001ad4:	00048e63          	beqz	s1,80001af0 <main+0x128>
    80001ad8:	00048513          	mv	a0,s1
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	594080e7          	jalr	1428(ra) # 80002070 <_ZN3TCBD1Ev>
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	2d0080e7          	jalr	720(ra) # 80001db8 <_ZN3TCBdlEPv>
    TCB::running = nullptr;
    80001af0:	0000e797          	auipc	a5,0xe
    80001af4:	3787b783          	ld	a5,888(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80001af8:	0007b023          	sd	zero,0(a5)
}

inline void Riscv::endProgram() {
    __asm__ volatile(
    "li t0, 0x5555\n" "li t1, 0x100000\n" "sw t0, 0(t1)\n"
    );
    80001afc:	000052b7          	lui	t0,0x5
    80001b00:	5552829b          	addiw	t0,t0,1365
    80001b04:	00100337          	lui	t1,0x100
    80001b08:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
    Riscv::endProgram();
    80001b0c:	02813083          	ld	ra,40(sp)
    80001b10:	02013403          	ld	s0,32(sp)
    80001b14:	01813483          	ld	s1,24(sp)
    80001b18:	03010113          	addi	sp,sp,48
    80001b1c:	00008067          	ret

0000000080001b20 <_Z41__static_initialization_and_destruction_0ii>:

void TCB::resume(TCB *tcb) {
    if(!tcb || tcb->getState() == READY)return;
    tcb->setState(READY);
    Scheduler::put(tcb);
}
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00813423          	sd	s0,8(sp)
    80001b28:	01010413          	addi	s0,sp,16
    80001b2c:	00100793          	li	a5,1
    80001b30:	00f50863          	beq	a0,a5,80001b40 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b34:	00813403          	ld	s0,8(sp)
    80001b38:	01010113          	addi	sp,sp,16
    80001b3c:	00008067          	ret
    80001b40:	000107b7          	lui	a5,0x10
    80001b44:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b48:	fef596e3          	bne	a1,a5,80001b34 <_Z41__static_initialization_and_destruction_0ii+0x14>

class TCB;

class Queue {
public:
    Queue() : head(nullptr), tail(nullptr) {}
    80001b4c:	0000e797          	auipc	a5,0xe
    80001b50:	39478793          	addi	a5,a5,916 # 8000fee0 <_ZN3TCB15finishedThreadsE>
    80001b54:	0007b023          	sd	zero,0(a5)
    80001b58:	0007b423          	sd	zero,8(a5)
    80001b5c:	fd9ff06f          	j	80001b34 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b60 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13\n" "ecall");//syscall for dispatch
    80001b6c:	01300513          	li	a0,19
    80001b70:	00000073          	ecall
}
    80001b74:	00813403          	ld	s0,8(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper() {
    80001b80:	fe010113          	addi	sp,sp,-32
    80001b84:	00113c23          	sd	ra,24(sp)
    80001b88:	00813823          	sd	s0,16(sp)
    80001b8c:	00913423          	sd	s1,8(sp)
    80001b90:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	e28080e7          	jalr	-472(ra) # 800029bc <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001b9c:	0000e497          	auipc	s1,0xe
    80001ba0:	34448493          	addi	s1,s1,836 # 8000fee0 <_ZN3TCB15finishedThreadsE>
    80001ba4:	0104b783          	ld	a5,16(s1)
    80001ba8:	0007b703          	ld	a4,0(a5)
    80001bac:	0087b503          	ld	a0,8(a5)
    80001bb0:	000700e7          	jalr	a4
    running->setState(ThreadState::FINISHED);
    80001bb4:	0104b783          	ld	a5,16(s1)
    void setState(ThreadState threadState) { state = threadState; }
    80001bb8:	00400713          	li	a4,4
    80001bbc:	04e7a423          	sw	a4,72(a5)
    TCB::yield();
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	fa0080e7          	jalr	-96(ra) # 80001b60 <_ZN3TCB5yieldEv>
}
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	02010113          	addi	sp,sp,32
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001bdc:	fe010113          	addi	sp,sp,-32
    80001be0:	00113c23          	sd	ra,24(sp)
    80001be4:	00813823          	sd	s0,16(sp)
    80001be8:	00913423          	sd	s1,8(sp)
    80001bec:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001bf0:	0000e497          	auipc	s1,0xe
    80001bf4:	3004b483          	ld	s1,768(s1) # 8000fef0 <_ZN3TCB7runningE>
    if (old->state == ThreadState::RUNNING) {
    80001bf8:	0484a783          	lw	a5,72(s1)
    80001bfc:	00100713          	li	a4,1
    80001c00:	04e78663          	beq	a5,a4,80001c4c <_ZN3TCB8dispatchEv+0x70>
    } else if (old->state == ThreadState::FINISHED && old != TCB::garbageCollector) {
    80001c04:	00400713          	li	a4,4
    80001c08:	04e78c63          	beq	a5,a4,80001c60 <_ZN3TCB8dispatchEv+0x84>
    running = Scheduler::get();
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	6a0080e7          	jalr	1696(ra) # 800032ac <_ZN9Scheduler3getEv>
    80001c14:	0000e797          	auipc	a5,0xe
    80001c18:	2ca7be23          	sd	a0,732(a5) # 8000fef0 <_ZN3TCB7runningE>
    if (running == nullptr) {
    80001c1c:	06050463          	beqz	a0,80001c84 <_ZN3TCB8dispatchEv+0xa8>
    running->state = ThreadState::RUNNING;
    80001c20:	00100793          	li	a5,1
    80001c24:	04f52423          	sw	a5,72(a0)
    TCB::contextSwitch(&old->context, &running->context);
    80001c28:	01850593          	addi	a1,a0,24
    80001c2c:	01848513          	addi	a0,s1,24
    80001c30:	fffff097          	auipc	ra,0xfffff
    80001c34:	4e0080e7          	jalr	1248(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001c38:	01813083          	ld	ra,24(sp)
    80001c3c:	01013403          	ld	s0,16(sp)
    80001c40:	00813483          	ld	s1,8(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret
        old->state = ThreadState::READY;
    80001c4c:	0404a423          	sw	zero,72(s1)
        Scheduler::put(old);
    80001c50:	00048513          	mv	a0,s1
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	688080e7          	jalr	1672(ra) # 800032dc <_ZN9Scheduler3putEP3TCB>
    80001c5c:	fb1ff06f          	j	80001c0c <_ZN3TCB8dispatchEv+0x30>
    } else if (old->state == ThreadState::FINISHED && old != TCB::garbageCollector) {
    80001c60:	0000e797          	auipc	a5,0xe
    80001c64:	2987b783          	ld	a5,664(a5) # 8000fef8 <_ZN3TCB16garbageCollectorE>
    80001c68:	fa9782e3          	beq	a5,s1,80001c0c <_ZN3TCB8dispatchEv+0x30>
        finishedThreads.put(old);
    80001c6c:	00048593          	mv	a1,s1
    80001c70:	0000e517          	auipc	a0,0xe
    80001c74:	27050513          	addi	a0,a0,624 # 8000fee0 <_ZN3TCB15finishedThreadsE>
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	ae4080e7          	jalr	-1308(ra) # 8000175c <_ZN5Queue3putEP3TCB>
    80001c80:	f8dff06f          	j	80001c0c <_ZN3TCB8dispatchEv+0x30>
        running = old;
    80001c84:	0000e797          	auipc	a5,0xe
    80001c88:	2697b623          	sd	s1,620(a5) # 8000fef0 <_ZN3TCB7runningE>
        running->state = ThreadState::RUNNING;
    80001c8c:	00100793          	li	a5,1
    80001c90:	04f4a423          	sw	a5,72(s1)
        return;
    80001c94:	fa5ff06f          	j	80001c38 <_ZN3TCB8dispatchEv+0x5c>

0000000080001c98 <_ZN3TCB11thread_exitEv>:
    if (TCB::running == nullptr)return;
    80001c98:	0000e797          	auipc	a5,0xe
    80001c9c:	2587b783          	ld	a5,600(a5) # 8000fef0 <_ZN3TCB7runningE>
    80001ca0:	02078e63          	beqz	a5,80001cdc <_ZN3TCB11thread_exitEv+0x44>
void TCB::thread_exit() {
    80001ca4:	ff010113          	addi	sp,sp,-16
    80001ca8:	00113423          	sd	ra,8(sp)
    80001cac:	00813023          	sd	s0,0(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    80001cb4:	00400713          	li	a4,4
    80001cb8:	04e7a423          	sw	a4,72(a5)
    TCB::timeSliceCounter = 0;
    80001cbc:	0000e797          	auipc	a5,0xe
    80001cc0:	2407b223          	sd	zero,580(a5) # 8000ff00 <_ZN3TCB16timeSliceCounterE>
    TCB::dispatch();
    80001cc4:	00000097          	auipc	ra,0x0
    80001cc8:	f18080e7          	jalr	-232(ra) # 80001bdc <_ZN3TCB8dispatchEv>
}
    80001ccc:	00813083          	ld	ra,8(sp)
    80001cd0:	00013403          	ld	s0,0(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN3TCBnwEm>:
template<typename T, int CHUNK_SIZE = 64>

class SlotAllocator {
public:
    static void *allocateSlot() {
        Chunk *curr = head;
    80001ce0:	0000e517          	auipc	a0,0xe
    80001ce4:	22853503          	ld	a0,552(a0) # 8000ff08 <_ZN13SlotAllocatorI3TCBLi64EE4headE>
        while (curr) {
    80001ce8:	04050c63          	beqz	a0,80001d40 <_ZN3TCBnwEm+0x60>
            for (int i = 0; i < CHUNK_SIZE; i++) {
    80001cec:	00000793          	li	a5,0
    80001cf0:	03f00713          	li	a4,63
    80001cf4:	04f74263          	blt	a4,a5,80001d38 <_ZN3TCBnwEm+0x58>
                if (curr->used[i] == false) {
    80001cf8:	00f50733          	add	a4,a0,a5
    80001cfc:	00c74703          	lbu	a4,12(a4)
    80001d00:	00070663          	beqz	a4,80001d0c <_ZN3TCBnwEm+0x2c>
            for (int i = 0; i < CHUNK_SIZE; i++) {
    80001d04:	0017879b          	addiw	a5,a5,1
    80001d08:	fe9ff06f          	j	80001cf0 <_ZN3TCBnwEm+0x10>
                    curr->used[i] = true;
    80001d0c:	00f50733          	add	a4,a0,a5
    80001d10:	00100693          	li	a3,1
    80001d14:	00d70623          	sb	a3,12(a4)
                    curr->usedCnt++;
    80001d18:	00852703          	lw	a4,8(a0)
    80001d1c:	0017071b          	addiw	a4,a4,1
    80001d20:	00e52423          	sw	a4,8(a0)
                    return (void *) (curr->data + i * sizeof(T));
    80001d24:	04c50513          	addi	a0,a0,76
    80001d28:	05800713          	li	a4,88
    80001d2c:	02e787b3          	mul	a5,a5,a4
    80001d30:	00f50533          	add	a0,a0,a5
}
    80001d34:	00008067          	ret
                }
            }
            curr = curr->next;
    80001d38:	00053503          	ld	a0,0(a0)
        while (curr) {
    80001d3c:	fadff06f          	j	80001ce8 <_ZN3TCBnwEm+0x8>
void *TCB::operator new(size_t size) {
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00113423          	sd	ra,8(sp)
    80001d48:	00813023          	sd	s0,0(sp)
    80001d4c:	01010413          	addi	s0,sp,16
        }

        Chunk *newChunk = (Chunk *) MemoryAllocator::kmalloc(sizeof(Chunk));
    80001d50:	00001537          	lui	a0,0x1
    80001d54:	65050513          	addi	a0,a0,1616 # 1650 <_entry-0x7fffe9b0>
    80001d58:	00000097          	auipc	ra,0x0
    80001d5c:	708080e7          	jalr	1800(ra) # 80002460 <_ZN15MemoryAllocator7kmallocEm>
        if (!newChunk)return nullptr;
    80001d60:	04050463          	beqz	a0,80001da8 <_ZN3TCBnwEm+0xc8>
        newChunk->usedCnt = 1;
    80001d64:	00100793          	li	a5,1
    80001d68:	00f52423          	sw	a5,8(a0)
        newChunk->next = head;
    80001d6c:	0000e797          	auipc	a5,0xe
    80001d70:	19c7b783          	ld	a5,412(a5) # 8000ff08 <_ZN13SlotAllocatorI3TCBLi64EE4headE>
    80001d74:	00f53023          	sd	a5,0(a0)
        for (int i = 0; i < CHUNK_SIZE; i++) {
    80001d78:	00000793          	li	a5,0
    80001d7c:	03f00713          	li	a4,63
    80001d80:	00f74a63          	blt	a4,a5,80001d94 <_ZN3TCBnwEm+0xb4>
            newChunk->used[i] = false;
    80001d84:	00f50733          	add	a4,a0,a5
    80001d88:	00070623          	sb	zero,12(a4)
        for (int i = 0; i < CHUNK_SIZE; i++) {
    80001d8c:	0017879b          	addiw	a5,a5,1
    80001d90:	fedff06f          	j	80001d7c <_ZN3TCBnwEm+0x9c>
        }
        head = newChunk;
    80001d94:	0000e797          	auipc	a5,0xe
    80001d98:	16a7ba23          	sd	a0,372(a5) # 8000ff08 <_ZN13SlotAllocatorI3TCBLi64EE4headE>
        head->used[0] = true;
    80001d9c:	00100793          	li	a5,1
    80001da0:	00f50623          	sb	a5,12(a0)
        return (void *) (head->data + 0 * sizeof(T));
    80001da4:	04c50513          	addi	a0,a0,76
}
    80001da8:	00813083          	ld	ra,8(sp)
    80001dac:	00013403          	ld	s0,0(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret

0000000080001db8 <_ZN3TCBdlEPv>:
    }

    static void deallocateSlot(void *ptr) {
        if (!ptr)return;
    80001db8:	0a050863          	beqz	a0,80001e68 <_ZN3TCBdlEPv+0xb0>
    80001dbc:	00050793          	mv	a5,a0
        Chunk *curr = head, *prev = nullptr;
    80001dc0:	0000e517          	auipc	a0,0xe
    80001dc4:	14853503          	ld	a0,328(a0) # 8000ff08 <_ZN13SlotAllocatorI3TCBLi64EE4headE>
    80001dc8:	00000693          	li	a3,0
    80001dcc:	0100006f          	j	80001ddc <_ZN3TCBdlEPv+0x24>
    80001dd0:	00008067          	ret
            if ((char *) ptr >= curr->data && (char *) ptr < &curr->data[CHUNK_SIZE * sizeof(T)]) {
                curr->used[((char *) ptr - curr->data) / sizeof(T)] = false;
                if (--curr->usedCnt == 0)break;
                return;
            }
            prev = curr;
    80001dd4:	00050693          	mv	a3,a0
            curr = curr->next;
    80001dd8:	00053503          	ld	a0,0(a0)
        while (curr) {
    80001ddc:	04050263          	beqz	a0,80001e20 <_ZN3TCBdlEPv+0x68>
            if ((char *) ptr >= curr->data && (char *) ptr < &curr->data[CHUNK_SIZE * sizeof(T)]) {
    80001de0:	04c50613          	addi	a2,a0,76
    80001de4:	fec7e8e3          	bltu	a5,a2,80001dd4 <_ZN3TCBdlEPv+0x1c>
    80001de8:	00001737          	lui	a4,0x1
    80001dec:	64c70713          	addi	a4,a4,1612 # 164c <_entry-0x7fffe9b4>
    80001df0:	00e50733          	add	a4,a0,a4
    80001df4:	fee7f0e3          	bgeu	a5,a4,80001dd4 <_ZN3TCBdlEPv+0x1c>
                curr->used[((char *) ptr - curr->data) / sizeof(T)] = false;
    80001df8:	40c787b3          	sub	a5,a5,a2
    80001dfc:	05800713          	li	a4,88
    80001e00:	02e7d7b3          	divu	a5,a5,a4
    80001e04:	00f507b3          	add	a5,a0,a5
    80001e08:	00078623          	sb	zero,12(a5)
                if (--curr->usedCnt == 0)break;
    80001e0c:	00852783          	lw	a5,8(a0)
    80001e10:	fff7879b          	addiw	a5,a5,-1
    80001e14:	0007871b          	sext.w	a4,a5
    80001e18:	00f52423          	sw	a5,8(a0)
    80001e1c:	fa071ae3          	bnez	a4,80001dd0 <_ZN3TCBdlEPv+0x18>
        }
        if (!curr)return;
    80001e20:	04050463          	beqz	a0,80001e68 <_ZN3TCBdlEPv+0xb0>
void TCB::operator delete(void *ptr) noexcept {
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00113423          	sd	ra,8(sp)
    80001e2c:	00813023          	sd	s0,0(sp)
    80001e30:	01010413          	addi	s0,sp,16
        if (prev)prev->next = curr->next;
    80001e34:	02068263          	beqz	a3,80001e58 <_ZN3TCBdlEPv+0xa0>
    80001e38:	00053783          	ld	a5,0(a0)
    80001e3c:	00f6b023          	sd	a5,0(a3)
        else head = curr->next;
        MemoryAllocator::mem_free(curr);
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	504080e7          	jalr	1284(ra) # 80002344 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001e48:	00813083          	ld	ra,8(sp)
    80001e4c:	00013403          	ld	s0,0(sp)
    80001e50:	01010113          	addi	sp,sp,16
    80001e54:	00008067          	ret
        else head = curr->next;
    80001e58:	00053783          	ld	a5,0(a0)
    80001e5c:	0000e717          	auipc	a4,0xe
    80001e60:	0af73623          	sd	a5,172(a4) # 8000ff08 <_ZN13SlotAllocatorI3TCBLi64EE4headE>
    80001e64:	fddff06f          	j	80001e40 <_ZN3TCBdlEPv+0x88>
    80001e68:	00008067          	ret

0000000080001e6c <_ZN3TCB12createThreadEPFvPvES0_Pmb>:
TCB *TCB::createThread(Body body, void *arg, uint64 *stackSpace, bool isKernelThread) {
    80001e6c:	fc010113          	addi	sp,sp,-64
    80001e70:	02113c23          	sd	ra,56(sp)
    80001e74:	02813823          	sd	s0,48(sp)
    80001e78:	02913423          	sd	s1,40(sp)
    80001e7c:	03213023          	sd	s2,32(sp)
    80001e80:	01313c23          	sd	s3,24(sp)
    80001e84:	01413823          	sd	s4,16(sp)
    80001e88:	01513423          	sd	s5,8(sp)
    80001e8c:	04010413          	addi	s0,sp,64
    80001e90:	00050993          	mv	s3,a0
    80001e94:	00058a13          	mv	s4,a1
    80001e98:	00060913          	mv	s2,a2
    80001e9c:	00068a93          	mv	s5,a3
    TCB *newThread = new TCB(body, arg, stackSpace);
    80001ea0:	05800513          	li	a0,88
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	e3c080e7          	jalr	-452(ra) # 80001ce0 <_ZN3TCBnwEm>
    80001eac:	00050493          	mv	s1,a0
            context({body != nullptr ? (uint64) &threadWrapper : 0,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
            timeSlice(timeSlice),
            next(nullptr), nextSleep(nullptr),
            state(body != nullptr ? ThreadState::READY : ThreadState::RUNNING),
            semWaitCnt(0) {
    80001eb0:	01353023          	sd	s3,0(a0)
    80001eb4:	01453423          	sd	s4,8(a0)
            stack(stackSpace != nullptr ? stackSpace :
    80001eb8:	06090063          	beqz	s2,80001f18 <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xac>
            semWaitCnt(0) {
    80001ebc:	0124b823          	sd	s2,16(s1)
            context({body != nullptr ? (uint64) &threadWrapper : 0,
    80001ec0:	06098863          	beqz	s3,80001f30 <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xc4>
    80001ec4:	00000797          	auipc	a5,0x0
    80001ec8:	cbc78793          	addi	a5,a5,-836 # 80001b80 <_ZN3TCB13threadWrapperEv>
            semWaitCnt(0) {
    80001ecc:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80001ed0:	06090463          	beqz	s2,80001f38 <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xcc>
    80001ed4:	00008637          	lui	a2,0x8
    80001ed8:	00c90933          	add	s2,s2,a2
            semWaitCnt(0) {
    80001edc:	0324b023          	sd	s2,32(s1)
    80001ee0:	00200793          	li	a5,2
    80001ee4:	02f4b423          	sd	a5,40(s1)
    80001ee8:	0204b823          	sd	zero,48(s1)
    80001eec:	0204bc23          	sd	zero,56(s1)
    80001ef0:	0404b023          	sd	zero,64(s1)
            state(body != nullptr ? ThreadState::READY : ThreadState::RUNNING),
    80001ef4:	0019b793          	seqz	a5,s3
            semWaitCnt(0) {
    80001ef8:	04f4a423          	sw	a5,72(s1)
    80001efc:	0404a623          	sw	zero,76(s1)
    80001f00:	04048823          	sb	zero,80(s1)
        if (body != nullptr) { Scheduler::put(this); }
    80001f04:	04098c63          	beqz	s3,80001f5c <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xf0>
    80001f08:	00048513          	mv	a0,s1
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	3d0080e7          	jalr	976(ra) # 800032dc <_ZN9Scheduler3putEP3TCB>
    80001f14:	0480006f          	j	80001f5c <_ZN3TCB12createThreadEPFvPvES0_Pmb+0xf0>
                  (body != nullptr ? (uint64 *) MemoryAllocator::kmalloc(STACK_SIZE * sizeof(uint64)) : nullptr)),
    80001f18:	fa0982e3          	beqz	s3,80001ebc <_ZN3TCB12createThreadEPFvPvES0_Pmb+0x50>
    80001f1c:	00008537          	lui	a0,0x8
    80001f20:	00000097          	auipc	ra,0x0
    80001f24:	540080e7          	jalr	1344(ra) # 80002460 <_ZN15MemoryAllocator7kmallocEm>
    80001f28:	00050913          	mv	s2,a0
    80001f2c:	f91ff06f          	j	80001ebc <_ZN3TCB12createThreadEPFvPvES0_Pmb+0x50>
            context({body != nullptr ? (uint64) &threadWrapper : 0,
    80001f30:	00000793          	li	a5,0
    80001f34:	f99ff06f          	j	80001ecc <_ZN3TCB12createThreadEPFvPvES0_Pmb+0x60>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80001f38:	00000913          	li	s2,0
    80001f3c:	fa1ff06f          	j	80001edc <_ZN3TCB12createThreadEPFvPvES0_Pmb+0x70>
    80001f40:	00050913          	mv	s2,a0
    80001f44:	00048513          	mv	a0,s1
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	e70080e7          	jalr	-400(ra) # 80001db8 <_ZN3TCBdlEPv>
    80001f50:	00090513          	mv	a0,s2
    80001f54:	0000f097          	auipc	ra,0xf
    80001f58:	154080e7          	jalr	340(ra) # 800110a8 <_Unwind_Resume>
    newThread->isKernelThread = isKernelThread;
    80001f5c:	05548823          	sb	s5,80(s1)
}
    80001f60:	00048513          	mv	a0,s1
    80001f64:	03813083          	ld	ra,56(sp)
    80001f68:	03013403          	ld	s0,48(sp)
    80001f6c:	02813483          	ld	s1,40(sp)
    80001f70:	02013903          	ld	s2,32(sp)
    80001f74:	01813983          	ld	s3,24(sp)
    80001f78:	01013a03          	ld	s4,16(sp)
    80001f7c:	00813a83          	ld	s5,8(sp)
    80001f80:	04010113          	addi	sp,sp,64
    80001f84:	00008067          	ret

0000000080001f88 <_ZN3TCB8createGCEv>:
TCB *TCB::createGC() {
    80001f88:	fe010113          	addi	sp,sp,-32
    80001f8c:	00113c23          	sd	ra,24(sp)
    80001f90:	00813823          	sd	s0,16(sp)
    80001f94:	00913423          	sd	s1,8(sp)
    80001f98:	01213023          	sd	s2,0(sp)
    80001f9c:	02010413          	addi	s0,sp,32
    TCB *gc = new TCB(&TCB::garbageCollectorBody, nullptr);
    80001fa0:	05800513          	li	a0,88
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	d3c080e7          	jalr	-708(ra) # 80001ce0 <_ZN3TCBnwEm>
    80001fac:	00050493          	mv	s1,a0
            semWaitCnt(0) {
    80001fb0:	00000797          	auipc	a5,0x0
    80001fb4:	0f478793          	addi	a5,a5,244 # 800020a4 <_ZN3TCB20garbageCollectorBodyEPv>
    80001fb8:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    80001fbc:	00053423          	sd	zero,8(a0)
                  (body != nullptr ? (uint64 *) MemoryAllocator::kmalloc(STACK_SIZE * sizeof(uint64)) : nullptr)),
    80001fc0:	00008537          	lui	a0,0x8
    80001fc4:	00000097          	auipc	ra,0x0
    80001fc8:	49c080e7          	jalr	1180(ra) # 80002460 <_ZN15MemoryAllocator7kmallocEm>
            semWaitCnt(0) {
    80001fcc:	00a4b823          	sd	a0,16(s1)
            context({body != nullptr ? (uint64) &threadWrapper : 0,
    80001fd0:	00000797          	auipc	a5,0x0
    80001fd4:	bb078793          	addi	a5,a5,-1104 # 80001b80 <_ZN3TCB13threadWrapperEv>
            semWaitCnt(0) {
    80001fd8:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    80001fdc:	04050063          	beqz	a0,8000201c <_ZN3TCB8createGCEv+0x94>
    80001fe0:	000087b7          	lui	a5,0x8
    80001fe4:	00f50533          	add	a0,a0,a5
            semWaitCnt(0) {
    80001fe8:	02a4b023          	sd	a0,32(s1)
    80001fec:	00200793          	li	a5,2
    80001ff0:	02f4b423          	sd	a5,40(s1)
    80001ff4:	0204b823          	sd	zero,48(s1)
    80001ff8:	0204bc23          	sd	zero,56(s1)
    80001ffc:	0404b023          	sd	zero,64(s1)
    80002000:	0404a423          	sw	zero,72(s1)
    80002004:	0404a623          	sw	zero,76(s1)
    80002008:	04048823          	sb	zero,80(s1)
        if (body != nullptr) { Scheduler::put(this); }
    8000200c:	00048513          	mv	a0,s1
    80002010:	00001097          	auipc	ra,0x1
    80002014:	2cc080e7          	jalr	716(ra) # 800032dc <_ZN9Scheduler3putEP3TCB>
    80002018:	0280006f          	j	80002040 <_ZN3TCB8createGCEv+0xb8>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0}),
    8000201c:	00000513          	li	a0,0
    80002020:	fc9ff06f          	j	80001fe8 <_ZN3TCB8createGCEv+0x60>
    80002024:	00050913          	mv	s2,a0
    80002028:	00048513          	mv	a0,s1
    8000202c:	00000097          	auipc	ra,0x0
    80002030:	d8c080e7          	jalr	-628(ra) # 80001db8 <_ZN3TCBdlEPv>
    80002034:	00090513          	mv	a0,s2
    80002038:	0000f097          	auipc	ra,0xf
    8000203c:	070080e7          	jalr	112(ra) # 800110a8 <_Unwind_Resume>
    gc->isKernelThread = true;
    80002040:	00100793          	li	a5,1
    80002044:	04f48823          	sb	a5,80(s1)
    gc->state = ThreadState::READY;
    80002048:	0404a423          	sw	zero,72(s1)
    TCB::garbageCollector = gc;
    8000204c:	0000e797          	auipc	a5,0xe
    80002050:	ea97b623          	sd	s1,-340(a5) # 8000fef8 <_ZN3TCB16garbageCollectorE>
}
    80002054:	00048513          	mv	a0,s1
    80002058:	01813083          	ld	ra,24(sp)
    8000205c:	01013403          	ld	s0,16(sp)
    80002060:	00813483          	ld	s1,8(sp)
    80002064:	00013903          	ld	s2,0(sp)
    80002068:	02010113          	addi	sp,sp,32
    8000206c:	00008067          	ret

0000000080002070 <_ZN3TCBD1Ev>:
    if (stack != nullptr) {
    80002070:	01053503          	ld	a0,16(a0) # 8010 <_entry-0x7fff7ff0>
    80002074:	02050663          	beqz	a0,800020a0 <_ZN3TCBD1Ev+0x30>
TCB::~TCB() {
    80002078:	ff010113          	addi	sp,sp,-16
    8000207c:	00113423          	sd	ra,8(sp)
    80002080:	00813023          	sd	s0,0(sp)
    80002084:	01010413          	addi	s0,sp,16
        MemoryAllocator::mem_free(stack);
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	2bc080e7          	jalr	700(ra) # 80002344 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00013403          	ld	s0,0(sp)
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00008067          	ret
    800020a0:	00008067          	ret

00000000800020a4 <_ZN3TCB20garbageCollectorBodyEPv>:
void TCB::garbageCollectorBody(void *) {
    800020a4:	fd010113          	addi	sp,sp,-48
    800020a8:	02113423          	sd	ra,40(sp)
    800020ac:	02813023          	sd	s0,32(sp)
    800020b0:	00913c23          	sd	s1,24(sp)
    800020b4:	01213823          	sd	s2,16(sp)
    800020b8:	03010413          	addi	s0,sp,48
    800020bc:	00c0006f          	j	800020c8 <_ZN3TCB20garbageCollectorBodyEPv+0x24>
        } else TCB::yield();
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	aa0080e7          	jalr	-1376(ra) # 80001b60 <_ZN3TCB5yieldEv>
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020c8:	100027f3          	csrr	a5,sstatus
    800020cc:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800020d0:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800020d4:	00200793          	li	a5,2
    800020d8:	1007b073          	csrc	sstatus,a5
        TCB *dead = TCB::finishedThreads.get();
    800020dc:	0000e517          	auipc	a0,0xe
    800020e0:	e0450513          	addi	a0,a0,-508 # 8000fee0 <_ZN3TCB15finishedThreadsE>
    800020e4:	fffff097          	auipc	ra,0xfffff
    800020e8:	6b4080e7          	jalr	1716(ra) # 80001798 <_ZN5Queue3getEv>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800020ec:	10092073          	csrs	sstatus,s2
        if (dead != nullptr) {
    800020f0:	fc0508e3          	beqz	a0,800020c0 <_ZN3TCB20garbageCollectorBodyEPv+0x1c>
    800020f4:	00050493          	mv	s1,a0
            delete dead;
    800020f8:	fc0508e3          	beqz	a0,800020c8 <_ZN3TCB20garbageCollectorBodyEPv+0x24>
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	f74080e7          	jalr	-140(ra) # 80002070 <_ZN3TCBD1Ev>
    80002104:	00048513          	mv	a0,s1
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	cb0080e7          	jalr	-848(ra) # 80001db8 <_ZN3TCBdlEPv>
    80002110:	fb9ff06f          	j	800020c8 <_ZN3TCB20garbageCollectorBodyEPv+0x24>

0000000080002114 <_ZN3TCB7suspendEPS_>:
    if(!tcb || tcb->getState() == BLOCKED)return;
    80002114:	06050e63          	beqz	a0,80002190 <_ZN3TCB7suspendEPS_+0x7c>
void TCB::suspend(TCB *tcb) {
    80002118:	fe010113          	addi	sp,sp,-32
    8000211c:	00113c23          	sd	ra,24(sp)
    80002120:	00813823          	sd	s0,16(sp)
    80002124:	00913423          	sd	s1,8(sp)
    80002128:	02010413          	addi	s0,sp,32
    8000212c:	00050493          	mv	s1,a0
    ThreadState getState() const { return state; }
    80002130:	04852783          	lw	a5,72(a0)
    if(!tcb || tcb->getState() == BLOCKED)return;
    80002134:	00200713          	li	a4,2
    80002138:	00e78e63          	beq	a5,a4,80002154 <_ZN3TCB7suspendEPS_+0x40>
    if(tcb == TCB::running){
    8000213c:	0000e717          	auipc	a4,0xe
    80002140:	db473703          	ld	a4,-588(a4) # 8000fef0 <_ZN3TCB7runningE>
    80002144:	02a70263          	beq	a4,a0,80002168 <_ZN3TCB7suspendEPS_+0x54>
        if (tcb->getState() == READY) {
    80002148:	02078e63          	beqz	a5,80002184 <_ZN3TCB7suspendEPS_+0x70>
    void setState(ThreadState threadState) { state = threadState; }
    8000214c:	00200793          	li	a5,2
    80002150:	04f4a423          	sw	a5,72(s1)
}
    80002154:	01813083          	ld	ra,24(sp)
    80002158:	01013403          	ld	s0,16(sp)
    8000215c:	00813483          	ld	s1,8(sp)
    80002160:	02010113          	addi	sp,sp,32
    80002164:	00008067          	ret
    80002168:	00200793          	li	a5,2
    8000216c:	04f52423          	sw	a5,72(a0)
        TCB::timeSliceCounter = 0;
    80002170:	0000e797          	auipc	a5,0xe
    80002174:	d807b823          	sd	zero,-624(a5) # 8000ff00 <_ZN3TCB16timeSliceCounterE>
        TCB::dispatch();
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	a64080e7          	jalr	-1436(ra) # 80001bdc <_ZN3TCB8dispatchEv>
    80002180:	fd5ff06f          	j	80002154 <_ZN3TCB7suspendEPS_+0x40>
            Scheduler::remove(tcb);
    80002184:	00001097          	auipc	ra,0x1
    80002188:	18c080e7          	jalr	396(ra) # 80003310 <_ZN9Scheduler6removeEP3TCB>
    8000218c:	fc1ff06f          	j	8000214c <_ZN3TCB7suspendEPS_+0x38>
    80002190:	00008067          	ret

0000000080002194 <_ZN3TCB6resumeEPS_>:
    if(!tcb || tcb->getState() == READY)return;
    80002194:	00050663          	beqz	a0,800021a0 <_ZN3TCB6resumeEPS_+0xc>
    ThreadState getState() const { return state; }
    80002198:	04852783          	lw	a5,72(a0)
    8000219c:	00079463          	bnez	a5,800021a4 <_ZN3TCB6resumeEPS_+0x10>
    800021a0:	00008067          	ret
void TCB::resume(TCB *tcb) {
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00113423          	sd	ra,8(sp)
    800021ac:	00813023          	sd	s0,0(sp)
    800021b0:	01010413          	addi	s0,sp,16
    void setState(ThreadState threadState) { state = threadState; }
    800021b4:	04052423          	sw	zero,72(a0)
    Scheduler::put(tcb);
    800021b8:	00001097          	auipc	ra,0x1
    800021bc:	124080e7          	jalr	292(ra) # 800032dc <_ZN9Scheduler3putEP3TCB>
}
    800021c0:	00813083          	ld	ra,8(sp)
    800021c4:	00013403          	ld	s0,0(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret

00000000800021d0 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00113423          	sd	ra,8(sp)
    800021d8:	00813023          	sd	s0,0(sp)
    800021dc:	01010413          	addi	s0,sp,16
    800021e0:	000105b7          	lui	a1,0x10
    800021e4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800021e8:	00100513          	li	a0,1
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	934080e7          	jalr	-1740(ra) # 80001b20 <_Z41__static_initialization_and_destruction_0ii>
    800021f4:	00813083          	ld	ra,8(sp)
    800021f8:	00013403          	ld	s0,0(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN15MemoryAllocator4initEv>:
#include "../h/memoryAllocator.hpp"

MemoryAllocator::BlockHeader* MemoryAllocator::freeMemHead = nullptr;
int MemoryAllocator::initialized = 0;

void MemoryAllocator::init() {
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813423          	sd	s0,8(sp)
    8000220c:	01010413          	addi	s0,sp,16
    if(initialized != 0)return;
    80002210:	0000e797          	auipc	a5,0xe
    80002214:	d007a783          	lw	a5,-768(a5) # 8000ff10 <_ZN15MemoryAllocator11initializedE>
    80002218:	04079463          	bnez	a5,80002260 <_ZN15MemoryAllocator4initEv+0x5c>
    freeMemHead = (BlockHeader *) (HEAP_START_ADDR);
    8000221c:	0000e697          	auipc	a3,0xe
    80002220:	bfc6b683          	ld	a3,-1028(a3) # 8000fe18 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002224:	0006b783          	ld	a5,0(a3)
    80002228:	0000e717          	auipc	a4,0xe
    8000222c:	ce870713          	addi	a4,a4,-792 # 8000ff10 <_ZN15MemoryAllocator11initializedE>
    80002230:	00f73423          	sd	a5,8(a4)
    freeMemHead->next = nullptr;
    80002234:	0007b023          	sd	zero,0(a5)
    //maximum number of blocks
    freeMemHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    80002238:	0000e797          	auipc	a5,0xe
    8000223c:	c387b783          	ld	a5,-968(a5) # 8000fe70 <_GLOBAL_OFFSET_TABLE_+0x70>
    80002240:	0007b783          	ld	a5,0(a5)
    80002244:	0006b683          	ld	a3,0(a3)
    80002248:	40d787b3          	sub	a5,a5,a3
    8000224c:	00873683          	ld	a3,8(a4)
    80002250:	0067d793          	srli	a5,a5,0x6
    80002254:	00f6b423          	sd	a5,8(a3)
    initialized = 1;
    80002258:	00100793          	li	a5,1
    8000225c:	00f72023          	sw	a5,0(a4)
}
    80002260:	00813403          	ld	s0,8(sp)
    80002264:	01010113          	addi	sp,sp,16
    80002268:	00008067          	ret

000000008000226c <_ZN15MemoryAllocator9mem_allocEm>:

//memory allocation using first fit algorithm
void *MemoryAllocator::mem_alloc(size_t size) { // size in bytes
    if(size <= 0)return nullptr;
    8000226c:	0c050863          	beqz	a0,8000233c <_ZN15MemoryAllocator9mem_allocEm+0xd0>
void *MemoryAllocator::mem_alloc(size_t size) { // size in bytes
    80002270:	fe010113          	addi	sp,sp,-32
    80002274:	00113c23          	sd	ra,24(sp)
    80002278:	00813823          	sd	s0,16(sp)
    8000227c:	00913423          	sd	s1,8(sp)
    80002280:	02010413          	addi	s0,sp,32
    80002284:	00050493          	mv	s1,a0
    if(initialized == 0)init();
    80002288:	0000e797          	auipc	a5,0xe
    8000228c:	c887a783          	lw	a5,-888(a5) # 8000ff10 <_ZN15MemoryAllocator11initializedE>
    80002290:	02078463          	beqz	a5,800022b8 <_ZN15MemoryAllocator9mem_allocEm+0x4c>

    BlockHeader* blk = freeMemHead, *prev = nullptr;
    80002294:	0000e517          	auipc	a0,0xe
    80002298:	c8453503          	ld	a0,-892(a0) # 8000ff18 <_ZN15MemoryAllocator11freeMemHeadE>
    8000229c:	00000713          	li	a4,0
    for (; blk!=nullptr; prev = blk, blk = blk->next) {
    800022a0:	02050263          	beqz	a0,800022c4 <_ZN15MemoryAllocator9mem_allocEm+0x58>
        if (blk->size>=size)
    800022a4:	00853783          	ld	a5,8(a0)
    800022a8:	0097fe63          	bgeu	a5,s1,800022c4 <_ZN15MemoryAllocator9mem_allocEm+0x58>
    for (; blk!=nullptr; prev = blk, blk = blk->next) {
    800022ac:	00050713          	mv	a4,a0
    800022b0:	00053503          	ld	a0,0(a0)
    800022b4:	fedff06f          	j	800022a0 <_ZN15MemoryAllocator9mem_allocEm+0x34>
    if(initialized == 0)init();
    800022b8:	00000097          	auipc	ra,0x0
    800022bc:	f4c080e7          	jalr	-180(ra) # 80002204 <_ZN15MemoryAllocator4initEv>
    800022c0:	fd5ff06f          	j	80002294 <_ZN15MemoryAllocator9mem_allocEm+0x28>
            break;
    }

    if (!blk)return nullptr; //we do not have the free size that user needs
    800022c4:	02050c63          	beqz	a0,800022fc <_ZN15MemoryAllocator9mem_allocEm+0x90>
    size_t remainingSize = blk->size - size;
    800022c8:	00853783          	ld	a5,8(a0)
    800022cc:	409786b3          	sub	a3,a5,s1
    if(remainingSize>0){
    800022d0:	04978663          	beq	a5,s1,8000231c <_ZN15MemoryAllocator9mem_allocEm+0xb0>
        BlockHeader* newBlock = (BlockHeader*)((char*)blk + size*MEM_BLOCK_SIZE);
    800022d4:	00649793          	slli	a5,s1,0x6
    800022d8:	00f507b3          	add	a5,a0,a5
        newBlock->next = blk->next;
    800022dc:	00053603          	ld	a2,0(a0)
    800022e0:	00c7b023          	sd	a2,0(a5)
        newBlock->size = remainingSize;
    800022e4:	00d7b423          	sd	a3,8(a5)

        if(prev)prev->next = newBlock;
    800022e8:	02070463          	beqz	a4,80002310 <_ZN15MemoryAllocator9mem_allocEm+0xa4>
    800022ec:	00f73023          	sd	a5,0(a4)
        else freeMemHead = newBlock;
    }else{
        if(prev)prev->next = blk->next;
        else freeMemHead = blk->next;
    }
    blk->size = size;
    800022f0:	00953423          	sd	s1,8(a0)
    blk->next = nullptr;
    800022f4:	00053023          	sd	zero,0(a0)
    return (void*)((char*)blk + sizeof(BlockHeader));
    800022f8:	01050513          	addi	a0,a0,16
}
    800022fc:	01813083          	ld	ra,24(sp)
    80002300:	01013403          	ld	s0,16(sp)
    80002304:	00813483          	ld	s1,8(sp)
    80002308:	02010113          	addi	sp,sp,32
    8000230c:	00008067          	ret
        else freeMemHead = newBlock;
    80002310:	0000e717          	auipc	a4,0xe
    80002314:	c0f73423          	sd	a5,-1016(a4) # 8000ff18 <_ZN15MemoryAllocator11freeMemHeadE>
    80002318:	fd9ff06f          	j	800022f0 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        if(prev)prev->next = blk->next;
    8000231c:	00070863          	beqz	a4,8000232c <_ZN15MemoryAllocator9mem_allocEm+0xc0>
    80002320:	00053783          	ld	a5,0(a0)
    80002324:	00f73023          	sd	a5,0(a4)
    80002328:	fc9ff06f          	j	800022f0 <_ZN15MemoryAllocator9mem_allocEm+0x84>
        else freeMemHead = blk->next;
    8000232c:	00053783          	ld	a5,0(a0)
    80002330:	0000e717          	auipc	a4,0xe
    80002334:	bef73423          	sd	a5,-1048(a4) # 8000ff18 <_ZN15MemoryAllocator11freeMemHeadE>
    80002338:	fb9ff06f          	j	800022f0 <_ZN15MemoryAllocator9mem_allocEm+0x84>
    if(size <= 0)return nullptr;
    8000233c:	00000513          	li	a0,0
}
    80002340:	00008067          	ret

0000000080002344 <_ZN15MemoryAllocator8mem_freeEPv>:
//struct BlockHeader is sorted by address in ASC order
int MemoryAllocator::mem_free(void *ptr) {
    if(!ptr)return -1;
    80002344:	0e050e63          	beqz	a0,80002440 <_ZN15MemoryAllocator8mem_freeEPv+0xfc>
int MemoryAllocator::mem_free(void *ptr) {
    80002348:	fe010113          	addi	sp,sp,-32
    8000234c:	00113c23          	sd	ra,24(sp)
    80002350:	00813823          	sd	s0,16(sp)
    80002354:	00913423          	sd	s1,8(sp)
    80002358:	02010413          	addi	s0,sp,32
    8000235c:	00050493          	mv	s1,a0
    if(initialized == 0)init();
    80002360:	0000e797          	auipc	a5,0xe
    80002364:	bb07a783          	lw	a5,-1104(a5) # 8000ff10 <_ZN15MemoryAllocator11initializedE>
    80002368:	02078463          	beqz	a5,80002390 <_ZN15MemoryAllocator8mem_freeEPv+0x4c>
    BlockHeader* blk = (BlockHeader*)((char*)ptr - sizeof(BlockHeader));
    8000236c:	ff048693          	addi	a3,s1,-16
    BlockHeader* curr = freeMemHead, *prev = nullptr;
    80002370:	0000e797          	auipc	a5,0xe
    80002374:	ba87b783          	ld	a5,-1112(a5) # 8000ff18 <_ZN15MemoryAllocator11freeMemHeadE>
    80002378:	00000713          	li	a4,0

    for( ; curr && curr < blk; prev = curr, curr = curr->next);
    8000237c:	02078063          	beqz	a5,8000239c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002380:	00d7fe63          	bgeu	a5,a3,8000239c <_ZN15MemoryAllocator8mem_freeEPv+0x58>
    80002384:	00078713          	mv	a4,a5
    80002388:	0007b783          	ld	a5,0(a5)
    8000238c:	ff1ff06f          	j	8000237c <_ZN15MemoryAllocator8mem_freeEPv+0x38>
    if(initialized == 0)init();
    80002390:	00000097          	auipc	ra,0x0
    80002394:	e74080e7          	jalr	-396(ra) # 80002204 <_ZN15MemoryAllocator4initEv>
    80002398:	fd5ff06f          	j	8000236c <_ZN15MemoryAllocator8mem_freeEPv+0x28>

    if(curr == blk || (prev && ((char*)prev + (prev->size * MEM_BLOCK_SIZE) > (char*)blk))){
    8000239c:	0ad78663          	beq	a5,a3,80002448 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    800023a0:	00070a63          	beqz	a4,800023b4 <_ZN15MemoryAllocator8mem_freeEPv+0x70>
    800023a4:	00873603          	ld	a2,8(a4)
    800023a8:	00661613          	slli	a2,a2,0x6
    800023ac:	00c70633          	add	a2,a4,a2
    800023b0:	0ac6e063          	bltu	a3,a2,80002450 <_ZN15MemoryAllocator8mem_freeEPv+0x10c>
        return -2; // ptr is already in BlockHeader freeList
    }
    blk->next = curr;
    800023b4:	fef4b823          	sd	a5,-16(s1)
    if(prev)prev->next = blk;
    800023b8:	04070463          	beqz	a4,80002400 <_ZN15MemoryAllocator8mem_freeEPv+0xbc>
    800023bc:	00d73023          	sd	a3,0(a4)
    else freeMemHead = blk;

    if(curr && (char*)blk + (blk->size * MEM_BLOCK_SIZE) == (char*)curr){
    800023c0:	00078a63          	beqz	a5,800023d4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
    800023c4:	ff84b583          	ld	a1,-8(s1)
    800023c8:	00659613          	slli	a2,a1,0x6
    800023cc:	00c68633          	add	a2,a3,a2
    800023d0:	02f60e63          	beq	a2,a5,8000240c <_ZN15MemoryAllocator8mem_freeEPv+0xc8>
        blk->size+=curr->size;
        blk->next = curr->next;
    }

    if(prev && (char*)prev + (prev->size * MEM_BLOCK_SIZE) == (char*)blk){
    800023d4:	08070263          	beqz	a4,80002458 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
    800023d8:	00873603          	ld	a2,8(a4)
    800023dc:	00661793          	slli	a5,a2,0x6
    800023e0:	00f707b3          	add	a5,a4,a5
    800023e4:	04d78063          	beq	a5,a3,80002424 <_ZN15MemoryAllocator8mem_freeEPv+0xe0>
        prev->size+=blk->size;
        prev->next = blk->next;
    }
    return 0;
    800023e8:	00000513          	li	a0,0
}
    800023ec:	01813083          	ld	ra,24(sp)
    800023f0:	01013403          	ld	s0,16(sp)
    800023f4:	00813483          	ld	s1,8(sp)
    800023f8:	02010113          	addi	sp,sp,32
    800023fc:	00008067          	ret
    else freeMemHead = blk;
    80002400:	0000e617          	auipc	a2,0xe
    80002404:	b0d63c23          	sd	a3,-1256(a2) # 8000ff18 <_ZN15MemoryAllocator11freeMemHeadE>
    80002408:	fb9ff06f          	j	800023c0 <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
        blk->size+=curr->size;
    8000240c:	0087b603          	ld	a2,8(a5)
    80002410:	00c585b3          	add	a1,a1,a2
    80002414:	feb4bc23          	sd	a1,-8(s1)
        blk->next = curr->next;
    80002418:	0007b783          	ld	a5,0(a5)
    8000241c:	fef4b823          	sd	a5,-16(s1)
    80002420:	fb5ff06f          	j	800023d4 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
        prev->size+=blk->size;
    80002424:	ff84b783          	ld	a5,-8(s1)
    80002428:	00f60633          	add	a2,a2,a5
    8000242c:	00c73423          	sd	a2,8(a4)
        prev->next = blk->next;
    80002430:	ff04b783          	ld	a5,-16(s1)
    80002434:	00f73023          	sd	a5,0(a4)
    return 0;
    80002438:	00000513          	li	a0,0
    8000243c:	fb1ff06f          	j	800023ec <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    if(!ptr)return -1;
    80002440:	fff00513          	li	a0,-1
}
    80002444:	00008067          	ret
        return -2; // ptr is already in BlockHeader freeList
    80002448:	ffe00513          	li	a0,-2
    8000244c:	fa1ff06f          	j	800023ec <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    80002450:	ffe00513          	li	a0,-2
    80002454:	f99ff06f          	j	800023ec <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    return 0;
    80002458:	00000513          	li	a0,0
    8000245c:	f91ff06f          	j	800023ec <_ZN15MemoryAllocator8mem_freeEPv+0xa8>

0000000080002460 <_ZN15MemoryAllocator7kmallocEm>:

void *MemoryAllocator::kmalloc(size_t size) {
    if(size<=0)return nullptr;
    80002460:	02050a63          	beqz	a0,80002494 <_ZN15MemoryAllocator7kmallocEm+0x34>
void *MemoryAllocator::kmalloc(size_t size) {
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    return mem_alloc((size + sizeof(BlockHeader) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE);
    80002474:	04f50513          	addi	a0,a0,79
    80002478:	00655513          	srli	a0,a0,0x6
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	df0080e7          	jalr	-528(ra) # 8000226c <_ZN15MemoryAllocator9mem_allocEm>
}
    80002484:	00813083          	ld	ra,8(sp)
    80002488:	00013403          	ld	s0,0(sp)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret
    if(size<=0)return nullptr;
    80002494:	00000513          	li	a0,0
}
    80002498:	00008067          	ret

000000008000249c <_ZN6ThreadD1Ev>:
}

//Thread class
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}

Thread::~Thread() {
    8000249c:	ff010113          	addi	sp,sp,-16
    800024a0:	00813423          	sd	s0,8(sp)
    800024a4:	01010413          	addi	s0,sp,16

}
    800024a8:	00813403          	ld	s0,8(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZZN6Thread5startEvENUlPvE_4_FUNES0_>:

    if (body != nullptr) {
        return thread_create(&myHandle, body, arg);
    }

    return thread_create(&myHandle, [](void *obj) { ((Thread *) obj)->run(); }, this);
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    800024c4:	00053783          	ld	a5,0(a0)
    800024c8:	0107b783          	ld	a5,16(a5)
    800024cc:	000780e7          	jalr	a5
    800024d0:	00813083          	ld	ra,8(sp)
    800024d4:	00013403          	ld	s0,0(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_ZN9SemaphoreD1Ev>:
//Semaphore
Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800024e0:	0000d797          	auipc	a5,0xd
    800024e4:	64078793          	addi	a5,a5,1600 # 8000fb20 <_ZTV9Semaphore+0x10>
    800024e8:	00f53023          	sd	a5,0(a0)
    if (myHandle) {
    800024ec:	00853503          	ld	a0,8(a0)
    800024f0:	02050663          	beqz	a0,8000251c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    80002504:	fffff097          	auipc	ra,0xfffff
    80002508:	060080e7          	jalr	96(ra) # 80001564 <_Z9sem_closeP3Sem>
        myHandle = nullptr;
    }
}
    8000250c:	00813083          	ld	ra,8(sp)
    80002510:	00013403          	ld	s0,0(sp)
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00008067          	ret
    8000251c:	00008067          	ret

0000000080002520 <_Znwm>:
void *operator new(size_t size) {
    80002520:	ff010113          	addi	sp,sp,-16
    80002524:	00113423          	sd	ra,8(sp)
    80002528:	00813023          	sd	s0,0(sp)
    8000252c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	e28080e7          	jalr	-472(ra) # 80001358 <_Z9mem_allocm>
}
    80002538:	00813083          	ld	ra,8(sp)
    8000253c:	00013403          	ld	s0,0(sp)
    80002540:	01010113          	addi	sp,sp,16
    80002544:	00008067          	ret

0000000080002548 <_Znam>:
void *operator new[](size_t size) {
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	e00080e7          	jalr	-512(ra) # 80001358 <_Z9mem_allocm>
}
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_ZdlPv>:
void operator delete(void *ptr) noexcept {
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	e10080e7          	jalr	-496(ra) # 80001390 <_Z8mem_freePv>
}
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	00813023          	sd	s0,0(sp)
    800025a4:	01010413          	addi	s0,sp,16
}
    800025a8:	00000097          	auipc	ra,0x0
    800025ac:	fc8080e7          	jalr	-56(ra) # 80002570 <_ZdlPv>
    800025b0:	00813083          	ld	ra,8(sp)
    800025b4:	00013403          	ld	s0,0(sp)
    800025b8:	01010113          	addi	sp,sp,16
    800025bc:	00008067          	ret

00000000800025c0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	02010413          	addi	s0,sp,32
    800025d4:	00050493          	mv	s1,a0
}
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	f08080e7          	jalr	-248(ra) # 800024e0 <_ZN9SemaphoreD1Ev>
    800025e0:	00048513          	mv	a0,s1
    800025e4:	00000097          	auipc	ra,0x0
    800025e8:	f8c080e7          	jalr	-116(ra) # 80002570 <_ZdlPv>
    800025ec:	01813083          	ld	ra,24(sp)
    800025f0:	01013403          	ld	s0,16(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	02010113          	addi	sp,sp,32
    800025fc:	00008067          	ret

0000000080002600 <_ZdaPv>:
void operator delete[](void *ptr) noexcept {
    80002600:	ff010113          	addi	sp,sp,-16
    80002604:	00113423          	sd	ra,8(sp)
    80002608:	00813023          	sd	s0,0(sp)
    8000260c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002610:	fffff097          	auipc	ra,0xfffff
    80002614:	d80080e7          	jalr	-640(ra) # 80001390 <_Z8mem_freePv>
}
    80002618:	00813083          	ld	ra,8(sp)
    8000261c:	00013403          	ld	s0,0(sp)
    80002620:	01010113          	addi	sp,sp,16
    80002624:	00008067          	ret

0000000080002628 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : myHandle(nullptr), body(body), arg(arg) {}
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00813423          	sd	s0,8(sp)
    80002630:	01010413          	addi	s0,sp,16
    80002634:	0000d797          	auipc	a5,0xd
    80002638:	4c478793          	addi	a5,a5,1220 # 8000faf8 <_ZTV6Thread+0x10>
    8000263c:	00f53023          	sd	a5,0(a0)
    80002640:	00053423          	sd	zero,8(a0)
    80002644:	00b53823          	sd	a1,16(a0)
    80002648:	00c53c23          	sd	a2,24(a0)
    8000264c:	00813403          	ld	s0,8(sp)
    80002650:	01010113          	addi	sp,sp,16
    80002654:	00008067          	ret

0000000080002658 <_ZN6Thread5startEv>:
    if (myHandle)return -1;
    80002658:	00853783          	ld	a5,8(a0)
    8000265c:	04079c63          	bnez	a5,800026b4 <_ZN6Thread5startEv+0x5c>
int Thread::start() {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00113423          	sd	ra,8(sp)
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	01010413          	addi	s0,sp,16
    if (body != nullptr) {
    80002670:	01053583          	ld	a1,16(a0)
    80002674:	02058263          	beqz	a1,80002698 <_ZN6Thread5startEv+0x40>
        return thread_create(&myHandle, body, arg);
    80002678:	01853603          	ld	a2,24(a0)
    8000267c:	00850513          	addi	a0,a0,8
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	d4c080e7          	jalr	-692(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
}
    80002688:	00813083          	ld	ra,8(sp)
    8000268c:	00013403          	ld	s0,0(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret
    return thread_create(&myHandle, [](void *obj) { ((Thread *) obj)->run(); }, this);
    80002698:	00050613          	mv	a2,a0
    8000269c:	00000597          	auipc	a1,0x0
    800026a0:	e1858593          	addi	a1,a1,-488 # 800024b4 <_ZZN6Thread5startEvENUlPvE_4_FUNES0_>
    800026a4:	00850513          	addi	a0,a0,8
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	d24080e7          	jalr	-732(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    800026b0:	fd9ff06f          	j	80002688 <_ZN6Thread5startEv+0x30>
    if (myHandle)return -1;
    800026b4:	fff00513          	li	a0,-1
}
    800026b8:	00008067          	ret

00000000800026bc <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	00813023          	sd	s0,0(sp)
    800026c8:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800026cc:	fffff097          	auipc	ra,0xfffff
    800026d0:	dac080e7          	jalr	-596(ra) # 80001478 <_Z15thread_dispatchv>
}
    800026d4:	00813083          	ld	ra,8(sp)
    800026d8:	00013403          	ld	s0,0(sp)
    800026dc:	01010113          	addi	sp,sp,16
    800026e0:	00008067          	ret

00000000800026e4 <_ZN6ThreadC1Ev>:
Thread::Thread() : myHandle(nullptr), body(nullptr), arg(nullptr) {}
    800026e4:	ff010113          	addi	sp,sp,-16
    800026e8:	00813423          	sd	s0,8(sp)
    800026ec:	01010413          	addi	s0,sp,16
    800026f0:	0000d797          	auipc	a5,0xd
    800026f4:	40878793          	addi	a5,a5,1032 # 8000faf8 <_ZTV6Thread+0x10>
    800026f8:	00f53023          	sd	a5,0(a0)
    800026fc:	00053423          	sd	zero,8(a0)
    80002700:	00053823          	sd	zero,16(a0)
    80002704:	00053c23          	sd	zero,24(a0)
    80002708:	00813403          	ld	s0,8(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00113423          	sd	ra,8(sp)
    8000271c:	00813023          	sd	s0,0(sp)
    80002720:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002724:	fffff097          	auipc	ra,0xfffff
    80002728:	f7c080e7          	jalr	-132(ra) # 800016a0 <_Z10time_sleepm>
}
    8000272c:	00813083          	ld	ra,8(sp)
    80002730:	00013403          	ld	s0,0(sp)
    80002734:	01010113          	addi	sp,sp,16
    80002738:	00008067          	ret

000000008000273c <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) {
    this->period = period;
}

void PeriodicThread::run() {
    8000273c:	fe010113          	addi	sp,sp,-32
    80002740:	00113c23          	sd	ra,24(sp)
    80002744:	00813823          	sd	s0,16(sp)
    80002748:	00913423          	sd	s1,8(sp)
    8000274c:	02010413          	addi	s0,sp,32
    80002750:	00050493          	mv	s1,a0
    while (this->period > 0) {
    80002754:	0204b783          	ld	a5,32(s1)
    80002758:	02078263          	beqz	a5,8000277c <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    8000275c:	0004b783          	ld	a5,0(s1)
    80002760:	0187b783          	ld	a5,24(a5)
    80002764:	00048513          	mv	a0,s1
    80002768:	000780e7          	jalr	a5
        Thread::sleep(this->period);
    8000276c:	0204b503          	ld	a0,32(s1)
    80002770:	00000097          	auipc	ra,0x0
    80002774:	fa4080e7          	jalr	-92(ra) # 80002714 <_ZN6Thread5sleepEm>
    while (this->period > 0) {
    80002778:	fddff06f          	j	80002754 <_ZN14PeriodicThread3runEv+0x18>
    }
}
    8000277c:	01813083          	ld	ra,24(sp)
    80002780:	01013403          	ld	s0,16(sp)
    80002784:	00813483          	ld	s1,8(sp)
    80002788:	02010113          	addi	sp,sp,32
    8000278c:	00008067          	ret

0000000080002790 <_ZN6Thread6resumeEPS_>:
void Thread::resume(Thread* thread) {
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00113423          	sd	ra,8(sp)
    80002798:	00813023          	sd	s0,0(sp)
    8000279c:	01010413          	addi	s0,sp,16
    thread_resume(thread->myHandle);
    800027a0:	0085b503          	ld	a0,8(a1)
    800027a4:	fffff097          	auipc	ra,0xfffff
    800027a8:	d0c080e7          	jalr	-756(ra) # 800014b0 <_Z13thread_resumeP3TCB>
}
    800027ac:	00813083          	ld	ra,8(sp)
    800027b0:	00013403          	ld	s0,0(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZN6Thread7suspendEPS_>:
void Thread::suspend(Thread* thread) {
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00113423          	sd	ra,8(sp)
    800027c4:	00813023          	sd	s0,0(sp)
    800027c8:	01010413          	addi	s0,sp,16
    thread_suspended(thread->myHandle);
    800027cc:	0085b503          	ld	a0,8(a1)
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	d18080e7          	jalr	-744(ra) # 800014e8 <_Z16thread_suspendedP3TCB>
}
    800027d8:	00813083          	ld	ra,8(sp)
    800027dc:	00013403          	ld	s0,0(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00113423          	sd	ra,8(sp)
    800027f0:	00813023          	sd	s0,0(sp)
    800027f4:	01010413          	addi	s0,sp,16
    800027f8:	0000d797          	auipc	a5,0xd
    800027fc:	32878793          	addi	a5,a5,808 # 8000fb20 <_ZTV9Semaphore+0x10>
    80002800:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002804:	00850513          	addi	a0,a0,8
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	d18080e7          	jalr	-744(ra) # 80001520 <_Z8sem_openPP3Semj>
}
    80002810:	00813083          	ld	ra,8(sp)
    80002814:	00013403          	ld	s0,0(sp)
    80002818:	01010113          	addi	sp,sp,16
    8000281c:	00008067          	ret

0000000080002820 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002820:	ff010113          	addi	sp,sp,-16
    80002824:	00113423          	sd	ra,8(sp)
    80002828:	00813023          	sd	s0,0(sp)
    8000282c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002830:	00853503          	ld	a0,8(a0)
    80002834:	fffff097          	auipc	ra,0xfffff
    80002838:	d6c080e7          	jalr	-660(ra) # 800015a0 <_Z8sem_waitP3Sem>
}
    8000283c:	00813083          	ld	ra,8(sp)
    80002840:	00013403          	ld	s0,0(sp)
    80002844:	01010113          	addi	sp,sp,16
    80002848:	00008067          	ret

000000008000284c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000284c:	ff010113          	addi	sp,sp,-16
    80002850:	00113423          	sd	ra,8(sp)
    80002854:	00813023          	sd	s0,0(sp)
    80002858:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000285c:	00853503          	ld	a0,8(a0)
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	d7c080e7          	jalr	-644(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    80002868:	00813083          	ld	ra,8(sp)
    8000286c:	00013403          	ld	s0,0(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret

0000000080002878 <_ZN7Console4getcEv>:
char Console::getc() {
    80002878:	ff010113          	addi	sp,sp,-16
    8000287c:	00113423          	sd	ra,8(sp)
    80002880:	00813023          	sd	s0,0(sp)
    80002884:	01010413          	addi	s0,sp,16
    return ::getc();
    80002888:	fffff097          	auipc	ra,0xfffff
    8000288c:	e60080e7          	jalr	-416(ra) # 800016e8 <_Z4getcv>
}
    80002890:	00813083          	ld	ra,8(sp)
    80002894:	00013403          	ld	s0,0(sp)
    80002898:	01010113          	addi	sp,sp,16
    8000289c:	00008067          	ret

00000000800028a0 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    800028a0:	ff010113          	addi	sp,sp,-16
    800028a4:	00113423          	sd	ra,8(sp)
    800028a8:	00813023          	sd	s0,0(sp)
    800028ac:	01010413          	addi	s0,sp,16
    ::putc(c);
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	e74080e7          	jalr	-396(ra) # 80001724 <_Z4putcc>
}
    800028b8:	00813083          	ld	ra,8(sp)
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret

00000000800028c8 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00813423          	sd	s0,8(sp)
    800028d0:	01010413          	addi	s0,sp,16
    this->period = 0;
    800028d4:	02053023          	sd	zero,32(a0)
}
    800028d8:	00813403          	ld	s0,8(sp)
    800028dc:	01010113          	addi	sp,sp,16
    800028e0:	00008067          	ret

00000000800028e4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    800028e4:	fe010113          	addi	sp,sp,-32
    800028e8:	00113c23          	sd	ra,24(sp)
    800028ec:	00813823          	sd	s0,16(sp)
    800028f0:	00913423          	sd	s1,8(sp)
    800028f4:	01213023          	sd	s2,0(sp)
    800028f8:	02010413          	addi	s0,sp,32
    800028fc:	00050493          	mv	s1,a0
    80002900:	00058913          	mv	s2,a1
    80002904:	00000097          	auipc	ra,0x0
    80002908:	de0080e7          	jalr	-544(ra) # 800026e4 <_ZN6ThreadC1Ev>
    8000290c:	0000d797          	auipc	a5,0xd
    80002910:	23478793          	addi	a5,a5,564 # 8000fb40 <_ZTV14PeriodicThread+0x10>
    80002914:	00f4b023          	sd	a5,0(s1)
    this->period = period;
    80002918:	0324b023          	sd	s2,32(s1)
}
    8000291c:	01813083          	ld	ra,24(sp)
    80002920:	01013403          	ld	s0,16(sp)
    80002924:	00813483          	ld	s1,8(sp)
    80002928:	00013903          	ld	s2,0(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret

0000000080002934 <_ZN6Thread3runEv>:
    void suspend(Thread* thread);

protected:
    Thread();

    virtual void run() {}
    80002934:	ff010113          	addi	sp,sp,-16
    80002938:	00813423          	sd	s0,8(sp)
    8000293c:	01010413          	addi	s0,sp,16
    80002940:	00813403          	ld	s0,8(sp)
    80002944:	01010113          	addi	sp,sp,16
    80002948:	00008067          	ret

000000008000294c <_ZN14PeriodicThread18periodicActivationEv>:
    void terminate();

protected:
    PeriodicThread(time_t period);

    virtual void periodicActivation() {}
    8000294c:	ff010113          	addi	sp,sp,-16
    80002950:	00813423          	sd	s0,8(sp)
    80002954:	01010413          	addi	s0,sp,16
    80002958:	00813403          	ld	s0,8(sp)
    8000295c:	01010113          	addi	sp,sp,16
    80002960:	00008067          	ret

0000000080002964 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002964:	ff010113          	addi	sp,sp,-16
    80002968:	00813423          	sd	s0,8(sp)
    8000296c:	01010413          	addi	s0,sp,16
    80002970:	0000d797          	auipc	a5,0xd
    80002974:	1d078793          	addi	a5,a5,464 # 8000fb40 <_ZTV14PeriodicThread+0x10>
    80002978:	00f53023          	sd	a5,0(a0)
    8000297c:	00813403          	ld	s0,8(sp)
    80002980:	01010113          	addi	sp,sp,16
    80002984:	00008067          	ret

0000000080002988 <_ZN14PeriodicThreadD0Ev>:
    80002988:	ff010113          	addi	sp,sp,-16
    8000298c:	00113423          	sd	ra,8(sp)
    80002990:	00813023          	sd	s0,0(sp)
    80002994:	01010413          	addi	s0,sp,16
    80002998:	0000d797          	auipc	a5,0xd
    8000299c:	1a878793          	addi	a5,a5,424 # 8000fb40 <_ZTV14PeriodicThread+0x10>
    800029a0:	00f53023          	sd	a5,0(a0)
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	bcc080e7          	jalr	-1076(ra) # 80002570 <_ZdlPv>
    800029ac:	00813083          	ld	ra,8(sp)
    800029b0:	00013403          	ld	s0,0(sp)
    800029b4:	01010113          	addi	sp,sp,16
    800029b8:	00008067          	ret

00000000800029bc <_ZN5Riscv10popSppSpieEv>:
#include "../h/sem.hpp"
#include "../h/timer.hpp"
#include "../h/MyConsole.hpp"
#include "../h/syscall_c.h"

void Riscv::popSppSpie() {
    800029bc:	ff010113          	addi	sp,sp,-16
    800029c0:	00813423          	sd	s0,8(sp)
    800029c4:	01010413          	addi	s0,sp,16
    if (!TCB::running->isKernelThread) {
    800029c8:	0000d797          	auipc	a5,0xd
    800029cc:	4a07b783          	ld	a5,1184(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    800029d0:	0007b783          	ld	a5,0(a5)
    800029d4:	0507c783          	lbu	a5,80(a5)
    800029d8:	00079663          	bnez	a5,800029e4 <_ZN5Riscv10popSppSpieEv+0x28>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800029dc:	10000793          	li	a5,256
    800029e0:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800029e4:	02000793          	li	a5,32
    800029e8:	1007a073          	csrs	sstatus,a5
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }
    Riscv::ms_sstatus(Riscv::SSTATUS_SPIE);
    __asm__ volatile("csrw sepc, ra");
    800029ec:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800029f0:	10200073          	sret
}
    800029f4:	00813403          	ld	s0,8(sp)
    800029f8:	01010113          	addi	sp,sp,16
    800029fc:	00008067          	ret

0000000080002a00 <_ZN5Riscv20handleSupervisorTrapEv>:
        *txDataReg = *msg;
        msg++;
    }
}

void Riscv::handleSupervisorTrap() {
    80002a00:	f7010113          	addi	sp,sp,-144
    80002a04:	08113423          	sd	ra,136(sp)
    80002a08:	08813023          	sd	s0,128(sp)
    80002a0c:	06913c23          	sd	s1,120(sp)
    80002a10:	07213823          	sd	s2,112(sp)
    80002a14:	09010413          	addi	s0,sp,144
    uint64 code, arg1, arg2, arg3, arg4;
    __asm__ volatile("mv %0, a0" : "=r"(code));
    80002a18:	00050793          	mv	a5,a0
    __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002a1c:	00058493          	mv	s1,a1
    __asm__ volatile("mv %0, a2" : "=r"(arg2));
    80002a20:	00060513          	mv	a0,a2
    __asm__ volatile("mv %0, a3" : "=r"(arg3));
    80002a24:	00068593          	mv	a1,a3
    __asm__ volatile("mv %0, a4" : "=r"(arg4));
    80002a28:	00070613          	mv	a2,a4
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002a2c:	14202773          	csrr	a4,scause
    80002a30:	fae43423          	sd	a4,-88(s0)
    return scause;
    80002a34:	fa843703          	ld	a4,-88(s0)

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002a38:	ff870813          	addi	a6,a4,-8
    80002a3c:	00100693          	li	a3,1
    80002a40:	0706f463          	bgeu	a3,a6,80002aa8 <_ZN5Riscv20handleSupervisorTrapEv+0xa8>
        uint64 volatile sstatus = r_sstatus();
        Riscv::handeEcall(code, arg1, arg2, arg3, arg4);

        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL) {
    80002a44:	fff00793          	li	a5,-1
    80002a48:	03f79793          	slli	a5,a5,0x3f
    80002a4c:	00178793          	addi	a5,a5,1
    80002a50:	28f70663          	beq	a4,a5,80002cdc <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    } else if (scause == 0x8000000000000009UL) {
    80002a54:	fff00793          	li	a5,-1
    80002a58:	03f79793          	slli	a5,a5,0x3f
    80002a5c:	00978793          	addi	a5,a5,9
    80002a60:	2ef70e63          	beq	a4,a5,80002d5c <_ZN5Riscv20handleSupervisorTrapEv+0x35c>
        uint64 volatile sstatus = r_sstatus();
        w_sstatus(sstatus);
        w_sepc(sepc);

    } else {
        if (scause <= 0xF && TCB::running != nullptr && !TCB::running->isKernelThread) {
    80002a64:	00f00793          	li	a5,15
    80002a68:	3ae7ec63          	bltu	a5,a4,80002e20 <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    80002a6c:	0000d797          	auipc	a5,0xd
    80002a70:	3fc7b783          	ld	a5,1020(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002a74:	0007b783          	ld	a5,0(a5)
    80002a78:	3a078463          	beqz	a5,80002e20 <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    80002a7c:	0507c783          	lbu	a5,80(a5)
    80002a80:	3a079063          	bnez	a5,80002e20 <_ZN5Riscv20handleSupervisorTrapEv+0x420>
    volatile char *statusReg = (volatile char *) CONSOLE_STATUS;
    80002a84:	0000d797          	auipc	a5,0xd
    80002a88:	38c7b783          	ld	a5,908(a5) # 8000fe10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002a8c:	0007b703          	ld	a4,0(a5)
    volatile char *txDataReg = (volatile char *) CONSOLE_TX_DATA;
    80002a90:	0000d797          	auipc	a5,0xd
    80002a94:	3b07b783          	ld	a5,944(a5) # 8000fe40 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002a98:	0007b583          	ld	a1,0(a5)
    80002a9c:	00009697          	auipc	a3,0x9
    80002aa0:	58468693          	addi	a3,a3,1412 # 8000c020 <CONSOLE_STATUS+0x10>
    80002aa4:	3600006f          	j	80002e04 <_ZN5Riscv20handleSupervisorTrapEv+0x404>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002aa8:	14102773          	csrr	a4,sepc
    80002aac:	fae43c23          	sd	a4,-72(s0)
    return sepc;
    80002ab0:	fb843703          	ld	a4,-72(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80002ab4:	00470713          	addi	a4,a4,4
    80002ab8:	f6e43c23          	sd	a4,-136(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002abc:	10002773          	csrr	a4,sstatus
    80002ac0:	fae43823          	sd	a4,-80(s0)
    return sstatus;
    80002ac4:	fb043703          	ld	a4,-80(s0)
        uint64 volatile sstatus = r_sstatus();
    80002ac8:	f8e43023          	sd	a4,-128(s0)
    switch (code) {
    80002acc:	04200713          	li	a4,66
    80002ad0:	02f76a63          	bltu	a4,a5,80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    80002ad4:	00279793          	slli	a5,a5,0x2
    80002ad8:	00009717          	auipc	a4,0x9
    80002adc:	57070713          	addi	a4,a4,1392 # 8000c048 <CONSOLE_STATUS+0x38>
    80002ae0:	00e787b3          	add	a5,a5,a4
    80002ae4:	0007a783          	lw	a5,0(a5)
    80002ae8:	00e787b3          	add	a5,a5,a4
    80002aec:	00078067          	jr	a5
            size = ((size + sizeof(MemoryAllocator::BlockHeader)) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80002af0:	04f48513          	addi	a0,s1,79
            void *ptr = MemoryAllocator::mem_alloc(size);
    80002af4:	00655513          	srli	a0,a0,0x6
    80002af8:	fffff097          	auipc	ra,0xfffff
    80002afc:	774080e7          	jalr	1908(ra) # 8000226c <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002b00:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80002b04:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002b08:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002b0c:	f7843783          	ld	a5,-136(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002b10:	14179073          	csrw	sepc,a5
}
    80002b14:	31c0006f          	j	80002e30 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
            Riscv::updateResult((uint64) MemoryAllocator::mem_free(ptr));
    80002b18:	00048513          	mv	a0,s1
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	828080e7          	jalr	-2008(ra) # 80002344 <_ZN15MemoryAllocator8mem_freeEPv>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002b24:	04a43823          	sd	a0,80(s0)
}
    80002b28:	fddff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            *handle = TCB::createThread((void (*)(void *)) arg2, (void *) arg3, (uint64 *) arg4);
    80002b2c:	00000693          	li	a3,0
    80002b30:	fffff097          	auipc	ra,0xfffff
    80002b34:	33c080e7          	jalr	828(ra) # 80001e6c <_ZN3TCB12createThreadEPFvPvES0_Pmb>
    80002b38:	00a4b023          	sd	a0,0(s1)
            (*handle == nullptr) ? Riscv::updateResult(-1) : Riscv::updateResult(0);
    80002b3c:	00050863          	beqz	a0,80002b4c <_ZN5Riscv20handleSupervisorTrapEv+0x14c>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002b40:	00000793          	li	a5,0
    80002b44:	04f43823          	sd	a5,80(s0)
}
    80002b48:	fbdff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002b4c:	fff00793          	li	a5,-1
    80002b50:	04f43823          	sd	a5,80(s0)
}
    80002b54:	fb1ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::thread_exit();
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	140080e7          	jalr	320(ra) # 80001c98 <_ZN3TCB11thread_exitEv>
            (TCB::running == nullptr) ? Riscv::updateResult(-1) : Riscv::updateResult(0);
    80002b60:	0000d797          	auipc	a5,0xd
    80002b64:	3087b783          	ld	a5,776(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002b68:	0007b783          	ld	a5,0(a5)
    80002b6c:	00078863          	beqz	a5,80002b7c <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002b70:	00000793          	li	a5,0
    80002b74:	04f43823          	sd	a5,80(s0)
}
    80002b78:	f8dff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002b7c:	fff00793          	li	a5,-1
    80002b80:	04f43823          	sd	a5,80(s0)
}
    80002b84:	f81ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::timeSliceCounter = 0;
    80002b88:	0000d797          	auipc	a5,0xd
    80002b8c:	2b07b783          	ld	a5,688(a5) # 8000fe38 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002b90:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	048080e7          	jalr	72(ra) # 80001bdc <_ZN3TCB8dispatchEv>
            break;
    80002b9c:	f69ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::resume((thread_t)arg1);
    80002ba0:	00048513          	mv	a0,s1
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	5f0080e7          	jalr	1520(ra) # 80002194 <_ZN3TCB6resumeEPS_>
            break;
    80002bac:	f59ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::suspend((thread_t)arg1);
    80002bb0:	00048513          	mv	a0,s1
    80002bb4:	fffff097          	auipc	ra,0xfffff
    80002bb8:	560080e7          	jalr	1376(ra) # 80002114 <_ZN3TCB7suspendEPS_>
            break;
    80002bbc:	f49ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            *sem = Sem::semOpen((unsigned short int) arg2);
    80002bc0:	03051513          	slli	a0,a0,0x30
    80002bc4:	03055513          	srli	a0,a0,0x30
    80002bc8:	00000097          	auipc	ra,0x0
    80002bcc:	570080e7          	jalr	1392(ra) # 80003138 <_ZN3Sem7semOpenEt>
    80002bd0:	00a4b023          	sd	a0,0(s1)
            (*sem == nullptr) ? Riscv::updateResult(-1) : Riscv::updateResult(0);
    80002bd4:	00050863          	beqz	a0,80002be4 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002bd8:	00000793          	li	a5,0
    80002bdc:	04f43823          	sd	a5,80(s0)
}
    80002be0:	f25ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002be4:	fff00793          	li	a5,-1
    80002be8:	04f43823          	sd	a5,80(s0)
}
    80002bec:	f19ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            if (!handle) {
    80002bf0:	00049863          	bnez	s1,80002c00 <_ZN5Riscv20handleSupervisorTrapEv+0x200>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002bf4:	fff00793          	li	a5,-1
    80002bf8:	04f43823          	sd	a5,80(s0)
}
    80002bfc:	f09ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            handle->close();
    80002c00:	00048513          	mv	a0,s1
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	3e4080e7          	jalr	996(ra) # 80002fe8 <_ZN3Sem5closeEv>
            delete handle;
    80002c0c:	00048513          	mv	a0,s1
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	628080e7          	jalr	1576(ra) # 80003238 <_ZN3SemD1Ev>
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	570080e7          	jalr	1392(ra) # 8000318c <_ZN3SemdlEPv>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002c24:	00000793          	li	a5,0
    80002c28:	04f43823          	sd	a5,80(s0)
}
    80002c2c:	ed9ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            Riscv::updateResult((uint64) id->wait());
    80002c30:	00100593          	li	a1,1
    80002c34:	00048513          	mv	a0,s1
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	254080e7          	jalr	596(ra) # 80002e8c <_ZN3Sem4waitEj>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002c40:	04a43823          	sd	a0,80(s0)
}
    80002c44:	ec1ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            Riscv::updateResult((uint64) id->signal());
    80002c48:	00100593          	li	a1,1
    80002c4c:	00048513          	mv	a0,s1
    80002c50:	00000097          	auipc	ra,0x0
    80002c54:	2d8080e7          	jalr	728(ra) # 80002f28 <_ZN3Sem6signalEj>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002c58:	04a43823          	sd	a0,80(s0)
}
    80002c5c:	ea9ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            int res = id->wait((unsigned) arg2);
    80002c60:	0005059b          	sext.w	a1,a0
    80002c64:	00048513          	mv	a0,s1
    80002c68:	00000097          	auipc	ra,0x0
    80002c6c:	224080e7          	jalr	548(ra) # 80002e8c <_ZN3Sem4waitEj>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002c70:	04a43823          	sd	a0,80(s0)
}
    80002c74:	e91ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            int res = id->signal((unsigned) arg2);
    80002c78:	0005059b          	sext.w	a1,a0
    80002c7c:	00048513          	mv	a0,s1
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	2a8080e7          	jalr	680(ra) # 80002f28 <_ZN3Sem6signalEj>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002c88:	04a43823          	sd	a0,80(s0)
}
    80002c8c:	e79ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            int res = Timer::sleep((time_t) arg1);
    80002c90:	00048513          	mv	a0,s1
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	6e4080e7          	jalr	1764(ra) # 80003378 <_ZN5Timer5sleepEm>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002c9c:	04a43823          	sd	a0,80(s0)
}
    80002ca0:	e65ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            char c = MyConsole::inputBuffer->get();
    80002ca4:	0000d797          	auipc	a5,0xd
    80002ca8:	1ac7b783          	ld	a5,428(a5) # 8000fe50 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002cac:	0007b503          	ld	a0,0(a5)
    80002cb0:	ffffe097          	auipc	ra,0xffffe
    80002cb4:	608080e7          	jalr	1544(ra) # 800012b8 <_ZN13BoundedBuffer3getEv>
    __asm__ volatile("sd %0, 80(x8)" : : "r"(res));
    80002cb8:	04a43823          	sd	a0,80(s0)
}
    80002cbc:	e49ff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            MyConsole::outputBuffer->put((char) arg1);
    80002cc0:	0ff4f593          	andi	a1,s1,255
    80002cc4:	0000d797          	auipc	a5,0xd
    80002cc8:	1947b783          	ld	a5,404(a5) # 8000fe58 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ccc:	0007b503          	ld	a0,0(a5)
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	56c080e7          	jalr	1388(ra) # 8000123c <_ZN13BoundedBuffer3putEc>
            break;
    80002cd8:	e2dff06f          	j	80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002cdc:	00200793          	li	a5,2
    80002ce0:	1447b073          	csrc	sip,a5
        Timer::tick();
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	740080e7          	jalr	1856(ra) # 80003424 <_ZN5Timer4tickEv>
        if ((TCB::running && TCB::running->getTimeSlice() != 0)
    80002cec:	0000d797          	auipc	a5,0xd
    80002cf0:	17c7b783          	ld	a5,380(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002cf4:	0007b783          	ld	a5,0(a5)
            && (++TCB::timeSliceCounter >= TCB::running->getTimeSlice())) {
    80002cf8:	12078c63          	beqz	a5,80002e30 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
    uint64 getTimeSlice() const { return timeSlice; }
    80002cfc:	0287b783          	ld	a5,40(a5)
        if ((TCB::running && TCB::running->getTimeSlice() != 0)
    80002d00:	12078863          	beqz	a5,80002e30 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
            && (++TCB::timeSliceCounter >= TCB::running->getTimeSlice())) {
    80002d04:	0000d697          	auipc	a3,0xd
    80002d08:	1346b683          	ld	a3,308(a3) # 8000fe38 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002d0c:	0006b703          	ld	a4,0(a3)
    80002d10:	00170713          	addi	a4,a4,1
    80002d14:	00e6b023          	sd	a4,0(a3)
    80002d18:	10f76c63          	bltu	a4,a5,80002e30 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002d1c:	141027f3          	csrr	a5,sepc
    80002d20:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002d24:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = r_sepc();
    80002d28:	f8f43423          	sd	a5,-120(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002d2c:	100027f3          	csrr	a5,sstatus
    80002d30:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002d34:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = r_sstatus();
    80002d38:	f8f43823          	sd	a5,-112(s0)
            TCB::timeSliceCounter = 0;
    80002d3c:	0006b023          	sd	zero,0(a3)
            TCB::dispatch();
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	e9c080e7          	jalr	-356(ra) # 80001bdc <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    80002d48:	f9043783          	ld	a5,-112(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002d4c:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    80002d50:	f8843783          	ld	a5,-120(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002d54:	14179073          	csrw	sepc,a5
}
    80002d58:	0d80006f          	j	80002e30 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
        int irq = plic_claim();
    80002d5c:	00007097          	auipc	ra,0x7
    80002d60:	b28080e7          	jalr	-1240(ra) # 80009884 <plic_claim>
    80002d64:	00050493          	mv	s1,a0
        if (irq == (int) CONSOLE_IRQ) {
    80002d68:	00a00793          	li	a5,10
    80002d6c:	02f50e63          	beq	a0,a5,80002da8 <_ZN5Riscv20handleSupervisorTrapEv+0x3a8>
        if (irq) {
    80002d70:	06049e63          	bnez	s1,80002dec <_ZN5Riscv20handleSupervisorTrapEv+0x3ec>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002d74:	141027f3          	csrr	a5,sepc
    80002d78:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002d7c:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    80002d80:	f8f43c23          	sd	a5,-104(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002d84:	100027f3          	csrr	a5,sstatus
    80002d88:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80002d8c:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002d90:	faf43023          	sd	a5,-96(s0)
        w_sstatus(sstatus);
    80002d94:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002d98:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002d9c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002da0:	14179073          	csrw	sepc,a5
}
    80002da4:	08c0006f          	j	80002e30 <_ZN5Riscv20handleSupervisorTrapEv+0x430>
            volatile char *rxDataReg = (volatile char *) CONSOLE_RX_DATA;
    80002da8:	0000d797          	auipc	a5,0xd
    80002dac:	0607b783          	ld	a5,96(a5) # 8000fe08 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002db0:	0007b903          	ld	s2,0(a5)
            while (*(volatile char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002db4:	0000d797          	auipc	a5,0xd
    80002db8:	05c7b783          	ld	a5,92(a5) # 8000fe10 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002dbc:	0007b783          	ld	a5,0(a5)
    80002dc0:	0007c783          	lbu	a5,0(a5)
    80002dc4:	0017f793          	andi	a5,a5,1
    80002dc8:	fa0784e3          	beqz	a5,80002d70 <_ZN5Riscv20handleSupervisorTrapEv+0x370>
                char c = *rxDataReg;
    80002dcc:	00094583          	lbu	a1,0(s2)
                MyConsole::inputBuffer->put(c);
    80002dd0:	0ff5f593          	andi	a1,a1,255
    80002dd4:	0000d797          	auipc	a5,0xd
    80002dd8:	07c7b783          	ld	a5,124(a5) # 8000fe50 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002ddc:	0007b503          	ld	a0,0(a5)
    80002de0:	ffffe097          	auipc	ra,0xffffe
    80002de4:	45c080e7          	jalr	1116(ra) # 8000123c <_ZN13BoundedBuffer3putEc>
            while (*(volatile char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
    80002de8:	fcdff06f          	j	80002db4 <_ZN5Riscv20handleSupervisorTrapEv+0x3b4>
            plic_complete(irq);
    80002dec:	00048513          	mv	a0,s1
    80002df0:	00007097          	auipc	ra,0x7
    80002df4:	acc080e7          	jalr	-1332(ra) # 800098bc <plic_complete>
    80002df8:	f7dff06f          	j	80002d74 <_ZN5Riscv20handleSupervisorTrapEv+0x374>
        *txDataReg = *msg;
    80002dfc:	00c58023          	sb	a2,0(a1)
        msg++;
    80002e00:	00168693          	addi	a3,a3,1
    while (*msg) {
    80002e04:	0006c603          	lbu	a2,0(a3)
    80002e08:	00060c63          	beqz	a2,80002e20 <_ZN5Riscv20handleSupervisorTrapEv+0x420>
        while (!(*statusReg & CONSOLE_TX_STATUS_BIT)) {
    80002e0c:	00074783          	lbu	a5,0(a4)
    80002e10:	0ff7f793          	andi	a5,a5,255
    80002e14:	0207f793          	andi	a5,a5,32
    80002e18:	fe078ae3          	beqz	a5,80002e0c <_ZN5Riscv20handleSupervisorTrapEv+0x40c>
    80002e1c:	fe1ff06f          	j	80002dfc <_ZN5Riscv20handleSupervisorTrapEv+0x3fc>
    );
    80002e20:	000052b7          	lui	t0,0x5
    80002e24:	5552829b          	addiw	t0,t0,1365
    80002e28:	00100337          	lui	t1,0x100
    80002e2c:	00532023          	sw	t0,0(t1) # 100000 <_entry-0x7ff00000>
            Riscv::printError("User thread tried to be kernel thread\n");
        }
        Riscv::endProgram();
    }
}
    80002e30:	08813083          	ld	ra,136(sp)
    80002e34:	08013403          	ld	s0,128(sp)
    80002e38:	07813483          	ld	s1,120(sp)
    80002e3c:	07013903          	ld	s2,112(sp)
    80002e40:	09010113          	addi	sp,sp,144
    80002e44:	00008067          	ret

0000000080002e48 <_ZN3SemC1Et>:
#include "../h/sem.hpp"
#include "../h/tcb.hpp"
#include "../h/slotAllocator.hpp"
#include "../h/riscv.hpp"

Sem::Sem(unsigned short val) : val(val) {}
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00813423          	sd	s0,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    80002e54:	00b52023          	sw	a1,0(a0)
    80002e58:	00050223          	sb	zero,4(a0)

class TCB;

class Queue {
public:
    Queue() : head(nullptr), tail(nullptr) {}
    80002e5c:	00053423          	sd	zero,8(a0)
    80002e60:	00053823          	sd	zero,16(a0)
    80002e64:	00813403          	ld	s0,8(sp)
    80002e68:	01010113          	addi	sp,sp,16
    80002e6c:	00008067          	ret

0000000080002e70 <_ZNK3Sem5valueEv>:

int Sem::value() const {
    80002e70:	ff010113          	addi	sp,sp,-16
    80002e74:	00813423          	sd	s0,8(sp)
    80002e78:	01010413          	addi	s0,sp,16
    return val;
}
    80002e7c:	00052503          	lw	a0,0(a0)
    80002e80:	00813403          	ld	s0,8(sp)
    80002e84:	01010113          	addi	sp,sp,16
    80002e88:	00008067          	ret

0000000080002e8c <_ZN3Sem4waitEj>:

int Sem::wait(unsigned int n) {
    if (this->closed)return -1;
    80002e8c:	00454703          	lbu	a4,4(a0)
    80002e90:	08071463          	bnez	a4,80002f18 <_ZN3Sem4waitEj+0x8c>
int Sem::wait(unsigned int n) {
    80002e94:	fe010113          	addi	sp,sp,-32
    80002e98:	00113c23          	sd	ra,24(sp)
    80002e9c:	00813823          	sd	s0,16(sp)
    80002ea0:	00913423          	sd	s1,8(sp)
    80002ea4:	02010413          	addi	s0,sp,32
    80002ea8:	00050493          	mv	s1,a0
    80002eac:	00058793          	mv	a5,a1
    if (val >= (int) n) {
    80002eb0:	00052703          	lw	a4,0(a0)
    80002eb4:	0005869b          	sext.w	a3,a1
    80002eb8:	02d74263          	blt	a4,a3,80002edc <_ZN3Sem4waitEj+0x50>
        val -= (int) n;
    80002ebc:	40d7073b          	subw	a4,a4,a3
    80002ec0:	00e52023          	sw	a4,0(a0)
        TCB::running->semWaitCnt = n;
        blockedQueue.put(TCB::running);
        TCB::dispatch();
        if (this->closed)return -1;
    }
    return 0;
    80002ec4:	00000513          	li	a0,0
}
    80002ec8:	01813083          	ld	ra,24(sp)
    80002ecc:	01013403          	ld	s0,16(sp)
    80002ed0:	00813483          	ld	s1,8(sp)
    80002ed4:	02010113          	addi	sp,sp,32
    80002ed8:	00008067          	ret
        TCB::running->setState(TCB::ThreadState::BLOCKED);
    80002edc:	0000d717          	auipc	a4,0xd
    80002ee0:	f8c73703          	ld	a4,-116(a4) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80002ee4:	00073583          	ld	a1,0(a4)
    void setState(ThreadState threadState) { state = threadState; }
    80002ee8:	00200713          	li	a4,2
    80002eec:	04e5a423          	sw	a4,72(a1)
        TCB::running->semWaitCnt = n;
    80002ef0:	04f5a623          	sw	a5,76(a1)
        blockedQueue.put(TCB::running);
    80002ef4:	00850513          	addi	a0,a0,8
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	864080e7          	jalr	-1948(ra) # 8000175c <_ZN5Queue3putEP3TCB>
        TCB::dispatch();
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	cdc080e7          	jalr	-804(ra) # 80001bdc <_ZN3TCB8dispatchEv>
        if (this->closed)return -1;
    80002f08:	0044c783          	lbu	a5,4(s1)
    80002f0c:	00079a63          	bnez	a5,80002f20 <_ZN3Sem4waitEj+0x94>
    return 0;
    80002f10:	00000513          	li	a0,0
    80002f14:	fb5ff06f          	j	80002ec8 <_ZN3Sem4waitEj+0x3c>
    if (this->closed)return -1;
    80002f18:	fff00513          	li	a0,-1
}
    80002f1c:	00008067          	ret
        if (this->closed)return -1;
    80002f20:	fff00513          	li	a0,-1
    80002f24:	fa5ff06f          	j	80002ec8 <_ZN3Sem4waitEj+0x3c>

0000000080002f28 <_ZN3Sem6signalEj>:

int Sem::signal(unsigned int n) {
    if (this->closed)return -1;
    80002f28:	00454783          	lbu	a5,4(a0)
    80002f2c:	08079663          	bnez	a5,80002fb8 <_ZN3Sem6signalEj+0x90>
int Sem::signal(unsigned int n) {
    80002f30:	fd010113          	addi	sp,sp,-48
    80002f34:	02113423          	sd	ra,40(sp)
    80002f38:	02813023          	sd	s0,32(sp)
    80002f3c:	00913c23          	sd	s1,24(sp)
    80002f40:	01213823          	sd	s2,16(sp)
    80002f44:	01313423          	sd	s3,8(sp)
    80002f48:	03010413          	addi	s0,sp,48
    80002f4c:	00050993          	mv	s3,a0
    val += (int) n;
    80002f50:	00052783          	lw	a5,0(a0)
    80002f54:	00b785bb          	addw	a1,a5,a1
    80002f58:	00b52023          	sw	a1,0(a0)

    while (blockedQueue.peek()) {
    80002f5c:	00898913          	addi	s2,s3,8
    80002f60:	00090513          	mv	a0,s2
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	870080e7          	jalr	-1936(ra) # 800017d4 <_ZN5Queue4peekEv>
    80002f6c:	04050a63          	beqz	a0,80002fc0 <_ZN3Sem6signalEj+0x98>
        TCB *tcb = blockedQueue.peek();
    80002f70:	00090513          	mv	a0,s2
    80002f74:	fffff097          	auipc	ra,0xfffff
    80002f78:	860080e7          	jalr	-1952(ra) # 800017d4 <_ZN5Queue4peekEv>
    80002f7c:	00050493          	mv	s1,a0
        if (val >= (int) tcb->semWaitCnt) {
    80002f80:	0009a783          	lw	a5,0(s3)
    80002f84:	04c52703          	lw	a4,76(a0)
    80002f88:	04e7cc63          	blt	a5,a4,80002fe0 <_ZN3Sem6signalEj+0xb8>
            val -= (int) tcb->semWaitCnt;
    80002f8c:	40e787bb          	subw	a5,a5,a4
    80002f90:	00f9a023          	sw	a5,0(s3)
            tcb->semWaitCnt = 0;
    80002f94:	04052623          	sw	zero,76(a0)
            blockedQueue.get();
    80002f98:	00090513          	mv	a0,s2
    80002f9c:	ffffe097          	auipc	ra,0xffffe
    80002fa0:	7fc080e7          	jalr	2044(ra) # 80001798 <_ZN5Queue3getEv>
    80002fa4:	0404a423          	sw	zero,72(s1)
            tcb->setState(TCB::ThreadState::READY);
            Scheduler::put(tcb);
    80002fa8:	00048513          	mv	a0,s1
    80002fac:	00000097          	auipc	ra,0x0
    80002fb0:	330080e7          	jalr	816(ra) # 800032dc <_ZN9Scheduler3putEP3TCB>
    while (blockedQueue.peek()) {
    80002fb4:	fa9ff06f          	j	80002f5c <_ZN3Sem6signalEj+0x34>
    if (this->closed)return -1;
    80002fb8:	fff00513          	li	a0,-1
        } else break;
    }
    return 0;
}
    80002fbc:	00008067          	ret
    return 0;
    80002fc0:	00000513          	li	a0,0
}
    80002fc4:	02813083          	ld	ra,40(sp)
    80002fc8:	02013403          	ld	s0,32(sp)
    80002fcc:	01813483          	ld	s1,24(sp)
    80002fd0:	01013903          	ld	s2,16(sp)
    80002fd4:	00813983          	ld	s3,8(sp)
    80002fd8:	03010113          	addi	sp,sp,48
    80002fdc:	00008067          	ret
    return 0;
    80002fe0:	00000513          	li	a0,0
    80002fe4:	fe1ff06f          	j	80002fc4 <_ZN3Sem6signalEj+0x9c>

0000000080002fe8 <_ZN3Sem5closeEv>:

Sem *Sem::semOpen(unsigned short val) {
    return new Sem(val);
}

void Sem::close() {
    80002fe8:	fd010113          	addi	sp,sp,-48
    80002fec:	02113423          	sd	ra,40(sp)
    80002ff0:	02813023          	sd	s0,32(sp)
    80002ff4:	00913c23          	sd	s1,24(sp)
    80002ff8:	01213823          	sd	s2,16(sp)
    80002ffc:	03010413          	addi	s0,sp,48
    80003000:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003004:	100027f3          	csrr	a5,sstatus
    80003008:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000300c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80003010:	00200793          	li	a5,2
    80003014:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    closed = true;
    80003018:	00100793          	li	a5,1
    8000301c:	00f50223          	sb	a5,4(a0)
    while (true) {
        TCB *tcb = blockedQueue.get();
    80003020:	00848513          	addi	a0,s1,8
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	774080e7          	jalr	1908(ra) # 80001798 <_ZN5Queue3getEv>
        if (!tcb)break;
    8000302c:	00050c63          	beqz	a0,80003044 <_ZN3Sem5closeEv+0x5c>
        tcb->semWaitCnt = 0;
    80003030:	04052623          	sw	zero,76(a0)
    80003034:	04052423          	sw	zero,72(a0)
        tcb->setState(TCB::ThreadState::READY);
        Scheduler::put(tcb);
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	2a4080e7          	jalr	676(ra) # 800032dc <_ZN9Scheduler3putEP3TCB>
    }
    80003040:	fe1ff06f          	j	80003020 <_ZN3Sem5closeEv+0x38>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003044:	10091073          	csrw	sstatus,s2
    Riscv::w_sstatus(sstatus);
}
    80003048:	02813083          	ld	ra,40(sp)
    8000304c:	02013403          	ld	s0,32(sp)
    80003050:	01813483          	ld	s1,24(sp)
    80003054:	01013903          	ld	s2,16(sp)
    80003058:	03010113          	addi	sp,sp,48
    8000305c:	00008067          	ret

0000000080003060 <_ZN3SemnwEm>:
        Chunk *curr = head;
    80003060:	0000d517          	auipc	a0,0xd
    80003064:	ec053503          	ld	a0,-320(a0) # 8000ff20 <_ZN13SlotAllocatorI3SemLi64EE4headE>
        while (curr) {
    80003068:	04050e63          	beqz	a0,800030c4 <_ZN3SemnwEm+0x64>
            for (int i = 0; i < CHUNK_SIZE; i++) {
    8000306c:	00000793          	li	a5,0
    80003070:	03f00713          	li	a4,63
    80003074:	04f74463          	blt	a4,a5,800030bc <_ZN3SemnwEm+0x5c>
                if (curr->used[i] == false) {
    80003078:	00f50733          	add	a4,a0,a5
    8000307c:	00c74703          	lbu	a4,12(a4)
    80003080:	00070663          	beqz	a4,8000308c <_ZN3SemnwEm+0x2c>
            for (int i = 0; i < CHUNK_SIZE; i++) {
    80003084:	0017879b          	addiw	a5,a5,1
    80003088:	fe9ff06f          	j	80003070 <_ZN3SemnwEm+0x10>
                    curr->used[i] = true;
    8000308c:	00f50733          	add	a4,a0,a5
    80003090:	00100693          	li	a3,1
    80003094:	00d70623          	sb	a3,12(a4)
                    curr->usedCnt++;
    80003098:	00852703          	lw	a4,8(a0)
    8000309c:	0017071b          	addiw	a4,a4,1
    800030a0:	00e52423          	sw	a4,8(a0)
                    return (void *) (curr->data + i * sizeof(T));
    800030a4:	04c50513          	addi	a0,a0,76
    800030a8:	00179713          	slli	a4,a5,0x1
    800030ac:	00f707b3          	add	a5,a4,a5
    800030b0:	00379793          	slli	a5,a5,0x3
    800030b4:	00f50533          	add	a0,a0,a5

void *Sem::operator new(size_t) {
    return SlotAllocator<Sem>::allocateSlot();
}
    800030b8:	00008067          	ret
            curr = curr->next;
    800030bc:	00053503          	ld	a0,0(a0)
        while (curr) {
    800030c0:	fa9ff06f          	j	80003068 <_ZN3SemnwEm+0x8>
void *Sem::operator new(size_t) {
    800030c4:	ff010113          	addi	sp,sp,-16
    800030c8:	00113423          	sd	ra,8(sp)
    800030cc:	00813023          	sd	s0,0(sp)
    800030d0:	01010413          	addi	s0,sp,16
        Chunk *newChunk = (Chunk *) MemoryAllocator::kmalloc(sizeof(Chunk));
    800030d4:	65000513          	li	a0,1616
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	388080e7          	jalr	904(ra) # 80002460 <_ZN15MemoryAllocator7kmallocEm>
        if (!newChunk)return nullptr;
    800030e0:	04050463          	beqz	a0,80003128 <_ZN3SemnwEm+0xc8>
        newChunk->usedCnt = 1;
    800030e4:	00100793          	li	a5,1
    800030e8:	00f52423          	sw	a5,8(a0)
        newChunk->next = head;
    800030ec:	0000d797          	auipc	a5,0xd
    800030f0:	e347b783          	ld	a5,-460(a5) # 8000ff20 <_ZN13SlotAllocatorI3SemLi64EE4headE>
    800030f4:	00f53023          	sd	a5,0(a0)
        for (int i = 0; i < CHUNK_SIZE; i++) {
    800030f8:	00000793          	li	a5,0
    800030fc:	03f00713          	li	a4,63
    80003100:	00f74a63          	blt	a4,a5,80003114 <_ZN3SemnwEm+0xb4>
            newChunk->used[i] = false;
    80003104:	00f50733          	add	a4,a0,a5
    80003108:	00070623          	sb	zero,12(a4)
        for (int i = 0; i < CHUNK_SIZE; i++) {
    8000310c:	0017879b          	addiw	a5,a5,1
    80003110:	fedff06f          	j	800030fc <_ZN3SemnwEm+0x9c>
        head = newChunk;
    80003114:	0000d797          	auipc	a5,0xd
    80003118:	e0a7b623          	sd	a0,-500(a5) # 8000ff20 <_ZN13SlotAllocatorI3SemLi64EE4headE>
        head->used[0] = true;
    8000311c:	00100793          	li	a5,1
    80003120:	00f50623          	sb	a5,12(a0)
        return (void *) (head->data + 0 * sizeof(T));
    80003124:	04c50513          	addi	a0,a0,76
}
    80003128:	00813083          	ld	ra,8(sp)
    8000312c:	00013403          	ld	s0,0(sp)
    80003130:	01010113          	addi	sp,sp,16
    80003134:	00008067          	ret

0000000080003138 <_ZN3Sem7semOpenEt>:
Sem *Sem::semOpen(unsigned short val) {
    80003138:	fe010113          	addi	sp,sp,-32
    8000313c:	00113c23          	sd	ra,24(sp)
    80003140:	00813823          	sd	s0,16(sp)
    80003144:	00913423          	sd	s1,8(sp)
    80003148:	01213023          	sd	s2,0(sp)
    8000314c:	02010413          	addi	s0,sp,32
    80003150:	00050913          	mv	s2,a0
    return new Sem(val);
    80003154:	01800513          	li	a0,24
    80003158:	00000097          	auipc	ra,0x0
    8000315c:	f08080e7          	jalr	-248(ra) # 80003060 <_ZN3SemnwEm>
    80003160:	00050493          	mv	s1,a0
    80003164:	00090593          	mv	a1,s2
    80003168:	00000097          	auipc	ra,0x0
    8000316c:	ce0080e7          	jalr	-800(ra) # 80002e48 <_ZN3SemC1Et>
}
    80003170:	00048513          	mv	a0,s1
    80003174:	01813083          	ld	ra,24(sp)
    80003178:	01013403          	ld	s0,16(sp)
    8000317c:	00813483          	ld	s1,8(sp)
    80003180:	00013903          	ld	s2,0(sp)
    80003184:	02010113          	addi	sp,sp,32
    80003188:	00008067          	ret

000000008000318c <_ZN3SemdlEPv>:
        if (!ptr)return;
    8000318c:	0a050463          	beqz	a0,80003234 <_ZN3SemdlEPv+0xa8>
    80003190:	00050793          	mv	a5,a0
        Chunk *curr = head, *prev = nullptr;
    80003194:	0000d517          	auipc	a0,0xd
    80003198:	d8c53503          	ld	a0,-628(a0) # 8000ff20 <_ZN13SlotAllocatorI3SemLi64EE4headE>
    8000319c:	00000713          	li	a4,0
    800031a0:	0100006f          	j	800031b0 <_ZN3SemdlEPv+0x24>
    800031a4:	00008067          	ret
            prev = curr;
    800031a8:	00050713          	mv	a4,a0
            curr = curr->next;
    800031ac:	00053503          	ld	a0,0(a0)
        while (curr) {
    800031b0:	02050e63          	beqz	a0,800031ec <_ZN3SemdlEPv+0x60>
            if ((char *) ptr >= curr->data && (char *) ptr < &curr->data[CHUNK_SIZE * sizeof(T)]) {
    800031b4:	04c50693          	addi	a3,a0,76
    800031b8:	fed7e8e3          	bltu	a5,a3,800031a8 <_ZN3SemdlEPv+0x1c>
    800031bc:	64c50613          	addi	a2,a0,1612
    800031c0:	fec7f4e3          	bgeu	a5,a2,800031a8 <_ZN3SemdlEPv+0x1c>
                curr->used[((char *) ptr - curr->data) / sizeof(T)] = false;
    800031c4:	40d787b3          	sub	a5,a5,a3
    800031c8:	01800693          	li	a3,24
    800031cc:	02d7d7b3          	divu	a5,a5,a3
    800031d0:	00f507b3          	add	a5,a0,a5
    800031d4:	00078623          	sb	zero,12(a5)
                if (--curr->usedCnt == 0)break;
    800031d8:	00852783          	lw	a5,8(a0)
    800031dc:	fff7879b          	addiw	a5,a5,-1
    800031e0:	0007869b          	sext.w	a3,a5
    800031e4:	00f52423          	sw	a5,8(a0)
    800031e8:	fa069ee3          	bnez	a3,800031a4 <_ZN3SemdlEPv+0x18>
        if (!curr)return;
    800031ec:	04050463          	beqz	a0,80003234 <_ZN3SemdlEPv+0xa8>

void Sem::operator delete(void *ptr) noexcept {
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00113423          	sd	ra,8(sp)
    800031f8:	00813023          	sd	s0,0(sp)
    800031fc:	01010413          	addi	s0,sp,16
        if (prev)prev->next = curr->next;
    80003200:	02070263          	beqz	a4,80003224 <_ZN3SemdlEPv+0x98>
    80003204:	00053783          	ld	a5,0(a0)
    80003208:	00f73023          	sd	a5,0(a4)
        MemoryAllocator::mem_free(curr);
    8000320c:	fffff097          	auipc	ra,0xfffff
    80003210:	138080e7          	jalr	312(ra) # 80002344 <_ZN15MemoryAllocator8mem_freeEPv>
    SlotAllocator<Sem>::deallocateSlot(ptr);
}
    80003214:	00813083          	ld	ra,8(sp)
    80003218:	00013403          	ld	s0,0(sp)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret
        else head = curr->next;
    80003224:	00053783          	ld	a5,0(a0)
    80003228:	0000d717          	auipc	a4,0xd
    8000322c:	cef73c23          	sd	a5,-776(a4) # 8000ff20 <_ZN13SlotAllocatorI3SemLi64EE4headE>
    80003230:	fddff06f          	j	8000320c <_ZN3SemdlEPv+0x80>
    80003234:	00008067          	ret

0000000080003238 <_ZN3SemD1Ev>:

Sem::~Sem() {
    if (!this->closed)
    80003238:	00454783          	lbu	a5,4(a0)
    8000323c:	00078463          	beqz	a5,80003244 <_ZN3SemD1Ev+0xc>
    80003240:	00008067          	ret
Sem::~Sem() {
    80003244:	ff010113          	addi	sp,sp,-16
    80003248:	00113423          	sd	ra,8(sp)
    8000324c:	00813023          	sd	s0,0(sp)
    80003250:	01010413          	addi	s0,sp,16
        this->close();
    80003254:	00000097          	auipc	ra,0x0
    80003258:	d94080e7          	jalr	-620(ra) # 80002fe8 <_ZN3Sem5closeEv>
}
    8000325c:	00813083          	ld	ra,8(sp)
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_Z41__static_initialization_and_destruction_0ii>:
    readyQueue.put(ccb);
}

void Scheduler::remove(TCB* ccb) {
    readyQueue.remove(ccb);
}
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00813423          	sd	s0,8(sp)
    80003274:	01010413          	addi	s0,sp,16
    80003278:	00100793          	li	a5,1
    8000327c:	00f50863          	beq	a0,a5,8000328c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003280:	00813403          	ld	s0,8(sp)
    80003284:	01010113          	addi	sp,sp,16
    80003288:	00008067          	ret
    8000328c:	000107b7          	lui	a5,0x10
    80003290:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003294:	fef596e3          	bne	a1,a5,80003280 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80003298:	0000d797          	auipc	a5,0xd
    8000329c:	c9078793          	addi	a5,a5,-880 # 8000ff28 <_ZN9Scheduler10readyQueueE>
    800032a0:	0007b023          	sd	zero,0(a5)
    800032a4:	0007b423          	sd	zero,8(a5)
    800032a8:	fd9ff06f          	j	80003280 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800032ac <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    800032ac:	ff010113          	addi	sp,sp,-16
    800032b0:	00113423          	sd	ra,8(sp)
    800032b4:	00813023          	sd	s0,0(sp)
    800032b8:	01010413          	addi	s0,sp,16
    return readyQueue.get();
    800032bc:	0000d517          	auipc	a0,0xd
    800032c0:	c6c50513          	addi	a0,a0,-916 # 8000ff28 <_ZN9Scheduler10readyQueueE>
    800032c4:	ffffe097          	auipc	ra,0xffffe
    800032c8:	4d4080e7          	jalr	1236(ra) # 80001798 <_ZN5Queue3getEv>
}
    800032cc:	00813083          	ld	ra,8(sp)
    800032d0:	00013403          	ld	s0,0(sp)
    800032d4:	01010113          	addi	sp,sp,16
    800032d8:	00008067          	ret

00000000800032dc <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *ccb) {
    800032dc:	ff010113          	addi	sp,sp,-16
    800032e0:	00113423          	sd	ra,8(sp)
    800032e4:	00813023          	sd	s0,0(sp)
    800032e8:	01010413          	addi	s0,sp,16
    800032ec:	00050593          	mv	a1,a0
    readyQueue.put(ccb);
    800032f0:	0000d517          	auipc	a0,0xd
    800032f4:	c3850513          	addi	a0,a0,-968 # 8000ff28 <_ZN9Scheduler10readyQueueE>
    800032f8:	ffffe097          	auipc	ra,0xffffe
    800032fc:	464080e7          	jalr	1124(ra) # 8000175c <_ZN5Queue3putEP3TCB>
}
    80003300:	00813083          	ld	ra,8(sp)
    80003304:	00013403          	ld	s0,0(sp)
    80003308:	01010113          	addi	sp,sp,16
    8000330c:	00008067          	ret

0000000080003310 <_ZN9Scheduler6removeEP3TCB>:
void Scheduler::remove(TCB* ccb) {
    80003310:	ff010113          	addi	sp,sp,-16
    80003314:	00113423          	sd	ra,8(sp)
    80003318:	00813023          	sd	s0,0(sp)
    8000331c:	01010413          	addi	s0,sp,16
    80003320:	00050593          	mv	a1,a0
    readyQueue.remove(ccb);
    80003324:	0000d517          	auipc	a0,0xd
    80003328:	c0450513          	addi	a0,a0,-1020 # 8000ff28 <_ZN9Scheduler10readyQueueE>
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	4c4080e7          	jalr	1220(ra) # 800017f0 <_ZN5Queue6removeEP3TCB>
}
    80003334:	00813083          	ld	ra,8(sp)
    80003338:	00013403          	ld	s0,0(sp)
    8000333c:	01010113          	addi	sp,sp,16
    80003340:	00008067          	ret

0000000080003344 <_GLOBAL__sub_I__ZN9Scheduler10readyQueueE>:
    80003344:	ff010113          	addi	sp,sp,-16
    80003348:	00113423          	sd	ra,8(sp)
    8000334c:	00813023          	sd	s0,0(sp)
    80003350:	01010413          	addi	s0,sp,16
    80003354:	000105b7          	lui	a1,0x10
    80003358:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000335c:	00100513          	li	a0,1
    80003360:	00000097          	auipc	ra,0x0
    80003364:	f0c080e7          	jalr	-244(ra) # 8000326c <_Z41__static_initialization_and_destruction_0ii>
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	01010113          	addi	sp,sp,16
    80003374:	00008067          	ret

0000000080003378 <_ZN5Timer5sleepEm>:
#include "../h/tcb.hpp"

TCB *Timer::sleepHead = nullptr;

int Timer::sleep(time_t time) {
    if (time <= 0)return -1;
    80003378:	0a050263          	beqz	a0,8000341c <_ZN5Timer5sleepEm+0xa4>
int Timer::sleep(time_t time) {
    8000337c:	ff010113          	addi	sp,sp,-16
    80003380:	00113423          	sd	ra,8(sp)
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	01010413          	addi	s0,sp,16
    TCB *runningThread = TCB::running;
    8000338c:	0000d797          	auipc	a5,0xd
    80003390:	adc7b783          	ld	a5,-1316(a5) # 8000fe68 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003394:	0007b603          	ld	a2,0(a5)
    80003398:	00300793          	li	a5,3
    8000339c:	04f62423          	sw	a5,72(a2)

    runningThread->setState(TCB::ThreadState::SLEEPING);
    TCB *curr = sleepHead, *prev = nullptr;
    800033a0:	0000d797          	auipc	a5,0xd
    800033a4:	b987b783          	ld	a5,-1128(a5) # 8000ff38 <_ZN5Timer9sleepHeadE>
    800033a8:	00000693          	li	a3,0

    while (curr && time >= (time_t) curr->timeSleepCounter) {
    800033ac:	00078e63          	beqz	a5,800033c8 <_ZN5Timer5sleepEm+0x50>
    800033b0:	0307b703          	ld	a4,48(a5)
    800033b4:	00e56a63          	bltu	a0,a4,800033c8 <_ZN5Timer5sleepEm+0x50>
        time -= curr->timeSleepCounter;
    800033b8:	40e50533          	sub	a0,a0,a4
        prev = curr;
    800033bc:	00078693          	mv	a3,a5
        curr = curr->nextSleep;
    800033c0:	0407b783          	ld	a5,64(a5)
    while (curr && time >= (time_t) curr->timeSleepCounter) {
    800033c4:	fe9ff06f          	j	800033ac <_ZN5Timer5sleepEm+0x34>
    }

    runningThread->timeSleepCounter = time;
    800033c8:	02a63823          	sd	a0,48(a2)
    runningThread->nextSleep = curr;
    800033cc:	04f63023          	sd	a5,64(a2)

    if (prev)prev->nextSleep = runningThread;
    800033d0:	04068063          	beqz	a3,80003410 <_ZN5Timer5sleepEm+0x98>
    800033d4:	04c6b023          	sd	a2,64(a3)
    else sleepHead = runningThread;

    if (curr)curr->timeSleepCounter -= time;
    800033d8:	00078863          	beqz	a5,800033e8 <_ZN5Timer5sleepEm+0x70>
    800033dc:	0307b703          	ld	a4,48(a5)
    800033e0:	40a70533          	sub	a0,a4,a0
    800033e4:	02a7b823          	sd	a0,48(a5)

    TCB::timeSliceCounter = 0;//reset stopwatch
    800033e8:	0000d797          	auipc	a5,0xd
    800033ec:	a507b783          	ld	a5,-1456(a5) # 8000fe38 <_GLOBAL_OFFSET_TABLE_+0x38>
    800033f0:	0007b023          	sd	zero,0(a5)
    TCB::dispatch();
    800033f4:	ffffe097          	auipc	ra,0xffffe
    800033f8:	7e8080e7          	jalr	2024(ra) # 80001bdc <_ZN3TCB8dispatchEv>
    return 0;
    800033fc:	00000513          	li	a0,0
}
    80003400:	00813083          	ld	ra,8(sp)
    80003404:	00013403          	ld	s0,0(sp)
    80003408:	01010113          	addi	sp,sp,16
    8000340c:	00008067          	ret
    else sleepHead = runningThread;
    80003410:	0000d717          	auipc	a4,0xd
    80003414:	b2c73423          	sd	a2,-1240(a4) # 8000ff38 <_ZN5Timer9sleepHeadE>
    80003418:	fc1ff06f          	j	800033d8 <_ZN5Timer5sleepEm+0x60>
    if (time <= 0)return -1;
    8000341c:	fff00513          	li	a0,-1
}
    80003420:	00008067          	ret

0000000080003424 <_ZN5Timer4tickEv>:

void Timer::tick() {
    if (!sleepHead)return;
    80003424:	0000d797          	auipc	a5,0xd
    80003428:	b147b783          	ld	a5,-1260(a5) # 8000ff38 <_ZN5Timer9sleepHeadE>
    8000342c:	08078c63          	beqz	a5,800034c4 <_ZN5Timer4tickEv+0xa0>
    sleepHead->timeSleepCounter--;
    80003430:	0307b703          	ld	a4,48(a5)
    80003434:	fff70713          	addi	a4,a4,-1
    80003438:	02e7b823          	sd	a4,48(a5)

    while (sleepHead && sleepHead->timeSleepCounter == 0) {
    8000343c:	0000d517          	auipc	a0,0xd
    80003440:	afc53503          	ld	a0,-1284(a0) # 8000ff38 <_ZN5Timer9sleepHeadE>
    80003444:	08050063          	beqz	a0,800034c4 <_ZN5Timer4tickEv+0xa0>
    80003448:	03053783          	ld	a5,48(a0)
    8000344c:	06079c63          	bnez	a5,800034c4 <_ZN5Timer4tickEv+0xa0>
        TCB *tcb = sleepHead;
        sleepHead = sleepHead->nextSleep;
    80003450:	04053783          	ld	a5,64(a0)
    80003454:	0000d717          	auipc	a4,0xd
    80003458:	aef73223          	sd	a5,-1308(a4) # 8000ff38 <_ZN5Timer9sleepHeadE>
    ThreadState getState() const { return state; }
    8000345c:	04852703          	lw	a4,72(a0)
        if (tcb->getState() != TCB::ThreadState::SLEEPING) continue;
    80003460:	00300793          	li	a5,3
    80003464:	fcf71ce3          	bne	a4,a5,8000343c <_ZN5Timer4tickEv+0x18>
void Timer::tick() {
    80003468:	ff010113          	addi	sp,sp,-16
    8000346c:	00113423          	sd	ra,8(sp)
    80003470:	00813023          	sd	s0,0(sp)
    80003474:	01010413          	addi	s0,sp,16
    void setState(ThreadState threadState) { state = threadState; }
    80003478:	04052423          	sw	zero,72(a0)
        tcb->setState(TCB::ThreadState::READY);
        Scheduler::put(tcb);
    8000347c:	00000097          	auipc	ra,0x0
    80003480:	e60080e7          	jalr	-416(ra) # 800032dc <_ZN9Scheduler3putEP3TCB>
    while (sleepHead && sleepHead->timeSleepCounter == 0) {
    80003484:	0000d517          	auipc	a0,0xd
    80003488:	ab453503          	ld	a0,-1356(a0) # 8000ff38 <_ZN5Timer9sleepHeadE>
    8000348c:	02050463          	beqz	a0,800034b4 <_ZN5Timer4tickEv+0x90>
    80003490:	03053783          	ld	a5,48(a0)
    80003494:	02079063          	bnez	a5,800034b4 <_ZN5Timer4tickEv+0x90>
        sleepHead = sleepHead->nextSleep;
    80003498:	04053783          	ld	a5,64(a0)
    8000349c:	0000d717          	auipc	a4,0xd
    800034a0:	a8f73e23          	sd	a5,-1380(a4) # 8000ff38 <_ZN5Timer9sleepHeadE>
    ThreadState getState() const { return state; }
    800034a4:	04852703          	lw	a4,72(a0)
        if (tcb->getState() != TCB::ThreadState::SLEEPING) continue;
    800034a8:	00300793          	li	a5,3
    800034ac:	fcf71ce3          	bne	a4,a5,80003484 <_ZN5Timer4tickEv+0x60>
    800034b0:	fc9ff06f          	j	80003478 <_ZN5Timer4tickEv+0x54>
    }
}
    800034b4:	00813083          	ld	ra,8(sp)
    800034b8:	00013403          	ld	s0,0(sp)
    800034bc:	01010113          	addi	sp,sp,16
    800034c0:	00008067          	ret
    800034c4:	00008067          	ret

00000000800034c8 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800034c8:	fe010113          	addi	sp,sp,-32
    800034cc:	00113c23          	sd	ra,24(sp)
    800034d0:	00813823          	sd	s0,16(sp)
    800034d4:	00913423          	sd	s1,8(sp)
    800034d8:	01213023          	sd	s2,0(sp)
    800034dc:	02010413          	addi	s0,sp,32
    800034e0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800034e4:	00000913          	li	s2,0
    800034e8:	00c0006f          	j	800034f4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	f8c080e7          	jalr	-116(ra) # 80001478 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	1f4080e7          	jalr	500(ra) # 800016e8 <_Z4getcv>
    800034fc:	0005059b          	sext.w	a1,a0
    80003500:	01b00793          	li	a5,27
    80003504:	02f58a63          	beq	a1,a5,80003538 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003508:	0084b503          	ld	a0,8(s1)
    8000350c:	00004097          	auipc	ra,0x4
    80003510:	e90080e7          	jalr	-368(ra) # 8000739c <_ZN6Buffer3putEi>
        i++;
    80003514:	0019071b          	addiw	a4,s2,1
    80003518:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000351c:	0004a683          	lw	a3,0(s1)
    80003520:	0026979b          	slliw	a5,a3,0x2
    80003524:	00d787bb          	addw	a5,a5,a3
    80003528:	0017979b          	slliw	a5,a5,0x1
    8000352c:	02f767bb          	remw	a5,a4,a5
    80003530:	fc0792e3          	bnez	a5,800034f4 <_ZL16producerKeyboardPv+0x2c>
    80003534:	fb9ff06f          	j	800034ec <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003538:	00100793          	li	a5,1
    8000353c:	0000d717          	auipc	a4,0xd
    80003540:	a0f72223          	sw	a5,-1532(a4) # 8000ff40 <_ZL9threadEnd>
    data->buffer->put('!');
    80003544:	02100593          	li	a1,33
    80003548:	0084b503          	ld	a0,8(s1)
    8000354c:	00004097          	auipc	ra,0x4
    80003550:	e50080e7          	jalr	-432(ra) # 8000739c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80003554:	0104b503          	ld	a0,16(s1)
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	084080e7          	jalr	132(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	00813483          	ld	s1,8(sp)
    8000356c:	00013903          	ld	s2,0(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret

0000000080003578 <_ZL8producerPv>:

static void producer(void *arg) {
    80003578:	fe010113          	addi	sp,sp,-32
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00913423          	sd	s1,8(sp)
    80003588:	01213023          	sd	s2,0(sp)
    8000358c:	02010413          	addi	s0,sp,32
    80003590:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003594:	00000913          	li	s2,0
    80003598:	00c0006f          	j	800035a4 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	edc080e7          	jalr	-292(ra) # 80001478 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800035a4:	0000d797          	auipc	a5,0xd
    800035a8:	99c7a783          	lw	a5,-1636(a5) # 8000ff40 <_ZL9threadEnd>
    800035ac:	02079e63          	bnez	a5,800035e8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800035b0:	0004a583          	lw	a1,0(s1)
    800035b4:	0305859b          	addiw	a1,a1,48
    800035b8:	0084b503          	ld	a0,8(s1)
    800035bc:	00004097          	auipc	ra,0x4
    800035c0:	de0080e7          	jalr	-544(ra) # 8000739c <_ZN6Buffer3putEi>
        i++;
    800035c4:	0019071b          	addiw	a4,s2,1
    800035c8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800035cc:	0004a683          	lw	a3,0(s1)
    800035d0:	0026979b          	slliw	a5,a3,0x2
    800035d4:	00d787bb          	addw	a5,a5,a3
    800035d8:	0017979b          	slliw	a5,a5,0x1
    800035dc:	02f767bb          	remw	a5,a4,a5
    800035e0:	fc0792e3          	bnez	a5,800035a4 <_ZL8producerPv+0x2c>
    800035e4:	fb9ff06f          	j	8000359c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800035e8:	0104b503          	ld	a0,16(s1)
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	ff0080e7          	jalr	-16(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    800035f4:	01813083          	ld	ra,24(sp)
    800035f8:	01013403          	ld	s0,16(sp)
    800035fc:	00813483          	ld	s1,8(sp)
    80003600:	00013903          	ld	s2,0(sp)
    80003604:	02010113          	addi	sp,sp,32
    80003608:	00008067          	ret

000000008000360c <_ZL8consumerPv>:

static void consumer(void *arg) {
    8000360c:	fd010113          	addi	sp,sp,-48
    80003610:	02113423          	sd	ra,40(sp)
    80003614:	02813023          	sd	s0,32(sp)
    80003618:	00913c23          	sd	s1,24(sp)
    8000361c:	01213823          	sd	s2,16(sp)
    80003620:	01313423          	sd	s3,8(sp)
    80003624:	03010413          	addi	s0,sp,48
    80003628:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000362c:	00000993          	li	s3,0
    80003630:	01c0006f          	j	8000364c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003634:	ffffe097          	auipc	ra,0xffffe
    80003638:	e44080e7          	jalr	-444(ra) # 80001478 <_Z15thread_dispatchv>
    8000363c:	0500006f          	j	8000368c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003640:	00a00513          	li	a0,10
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	0e0080e7          	jalr	224(ra) # 80001724 <_Z4putcc>
    while (!threadEnd) {
    8000364c:	0000d797          	auipc	a5,0xd
    80003650:	8f47a783          	lw	a5,-1804(a5) # 8000ff40 <_ZL9threadEnd>
    80003654:	06079063          	bnez	a5,800036b4 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80003658:	00893503          	ld	a0,8(s2)
    8000365c:	00004097          	auipc	ra,0x4
    80003660:	dd0080e7          	jalr	-560(ra) # 8000742c <_ZN6Buffer3getEv>
        i++;
    80003664:	0019849b          	addiw	s1,s3,1
    80003668:	0004899b          	sext.w	s3,s1
        putc(key);
    8000366c:	0ff57513          	andi	a0,a0,255
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	0b4080e7          	jalr	180(ra) # 80001724 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80003678:	00092703          	lw	a4,0(s2)
    8000367c:	0027179b          	slliw	a5,a4,0x2
    80003680:	00e787bb          	addw	a5,a5,a4
    80003684:	02f4e7bb          	remw	a5,s1,a5
    80003688:	fa0786e3          	beqz	a5,80003634 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000368c:	05000793          	li	a5,80
    80003690:	02f4e4bb          	remw	s1,s1,a5
    80003694:	fa049ce3          	bnez	s1,8000364c <_ZL8consumerPv+0x40>
    80003698:	fa9ff06f          	j	80003640 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000369c:	00893503          	ld	a0,8(s2)
    800036a0:	00004097          	auipc	ra,0x4
    800036a4:	d8c080e7          	jalr	-628(ra) # 8000742c <_ZN6Buffer3getEv>
        putc(key);
    800036a8:	0ff57513          	andi	a0,a0,255
    800036ac:	ffffe097          	auipc	ra,0xffffe
    800036b0:	078080e7          	jalr	120(ra) # 80001724 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800036b4:	00893503          	ld	a0,8(s2)
    800036b8:	00004097          	auipc	ra,0x4
    800036bc:	e00080e7          	jalr	-512(ra) # 800074b8 <_ZN6Buffer6getCntEv>
    800036c0:	fca04ee3          	bgtz	a0,8000369c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800036c4:	01093503          	ld	a0,16(s2)
    800036c8:	ffffe097          	auipc	ra,0xffffe
    800036cc:	f14080e7          	jalr	-236(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    800036d0:	02813083          	ld	ra,40(sp)
    800036d4:	02013403          	ld	s0,32(sp)
    800036d8:	01813483          	ld	s1,24(sp)
    800036dc:	01013903          	ld	s2,16(sp)
    800036e0:	00813983          	ld	s3,8(sp)
    800036e4:	03010113          	addi	sp,sp,48
    800036e8:	00008067          	ret

00000000800036ec <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800036ec:	f9010113          	addi	sp,sp,-112
    800036f0:	06113423          	sd	ra,104(sp)
    800036f4:	06813023          	sd	s0,96(sp)
    800036f8:	04913c23          	sd	s1,88(sp)
    800036fc:	05213823          	sd	s2,80(sp)
    80003700:	05313423          	sd	s3,72(sp)
    80003704:	05413023          	sd	s4,64(sp)
    80003708:	03513c23          	sd	s5,56(sp)
    8000370c:	03613823          	sd	s6,48(sp)
    80003710:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003714:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003718:	00009517          	auipc	a0,0x9
    8000371c:	a4050513          	addi	a0,a0,-1472 # 8000c158 <CONSOLE_STATUS+0x148>
    80003720:	00003097          	auipc	ra,0x3
    80003724:	974080e7          	jalr	-1676(ra) # 80006094 <_Z11printStringPKc>
    getString(input, 30);
    80003728:	01e00593          	li	a1,30
    8000372c:	fa040493          	addi	s1,s0,-96
    80003730:	00048513          	mv	a0,s1
    80003734:	00003097          	auipc	ra,0x3
    80003738:	9e8080e7          	jalr	-1560(ra) # 8000611c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000373c:	00048513          	mv	a0,s1
    80003740:	00003097          	auipc	ra,0x3
    80003744:	ab4080e7          	jalr	-1356(ra) # 800061f4 <_Z11stringToIntPKc>
    80003748:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000374c:	00009517          	auipc	a0,0x9
    80003750:	a2c50513          	addi	a0,a0,-1492 # 8000c178 <CONSOLE_STATUS+0x168>
    80003754:	00003097          	auipc	ra,0x3
    80003758:	940080e7          	jalr	-1728(ra) # 80006094 <_Z11printStringPKc>
    getString(input, 30);
    8000375c:	01e00593          	li	a1,30
    80003760:	00048513          	mv	a0,s1
    80003764:	00003097          	auipc	ra,0x3
    80003768:	9b8080e7          	jalr	-1608(ra) # 8000611c <_Z9getStringPci>
    n = stringToInt(input);
    8000376c:	00048513          	mv	a0,s1
    80003770:	00003097          	auipc	ra,0x3
    80003774:	a84080e7          	jalr	-1404(ra) # 800061f4 <_Z11stringToIntPKc>
    80003778:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000377c:	00009517          	auipc	a0,0x9
    80003780:	a1c50513          	addi	a0,a0,-1508 # 8000c198 <CONSOLE_STATUS+0x188>
    80003784:	00003097          	auipc	ra,0x3
    80003788:	910080e7          	jalr	-1776(ra) # 80006094 <_Z11printStringPKc>
    8000378c:	00000613          	li	a2,0
    80003790:	00a00593          	li	a1,10
    80003794:	00090513          	mv	a0,s2
    80003798:	00003097          	auipc	ra,0x3
    8000379c:	aac080e7          	jalr	-1364(ra) # 80006244 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800037a0:	00009517          	auipc	a0,0x9
    800037a4:	a1050513          	addi	a0,a0,-1520 # 8000c1b0 <CONSOLE_STATUS+0x1a0>
    800037a8:	00003097          	auipc	ra,0x3
    800037ac:	8ec080e7          	jalr	-1812(ra) # 80006094 <_Z11printStringPKc>
    800037b0:	00000613          	li	a2,0
    800037b4:	00a00593          	li	a1,10
    800037b8:	00048513          	mv	a0,s1
    800037bc:	00003097          	auipc	ra,0x3
    800037c0:	a88080e7          	jalr	-1400(ra) # 80006244 <_Z8printIntiii>
    printString(".\n");
    800037c4:	00009517          	auipc	a0,0x9
    800037c8:	21c50513          	addi	a0,a0,540 # 8000c9e0 <CONSOLE_STATUS+0x9d0>
    800037cc:	00003097          	auipc	ra,0x3
    800037d0:	8c8080e7          	jalr	-1848(ra) # 80006094 <_Z11printStringPKc>
    if(threadNum > n) {
    800037d4:	0324c463          	blt	s1,s2,800037fc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800037d8:	03205c63          	blez	s2,80003810 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800037dc:	03800513          	li	a0,56
    800037e0:	fffff097          	auipc	ra,0xfffff
    800037e4:	d40080e7          	jalr	-704(ra) # 80002520 <_Znwm>
    800037e8:	00050a13          	mv	s4,a0
    800037ec:	00048593          	mv	a1,s1
    800037f0:	00004097          	auipc	ra,0x4
    800037f4:	b10080e7          	jalr	-1264(ra) # 80007300 <_ZN6BufferC1Ei>
    800037f8:	0300006f          	j	80003828 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800037fc:	00009517          	auipc	a0,0x9
    80003800:	9cc50513          	addi	a0,a0,-1588 # 8000c1c8 <CONSOLE_STATUS+0x1b8>
    80003804:	00003097          	auipc	ra,0x3
    80003808:	890080e7          	jalr	-1904(ra) # 80006094 <_Z11printStringPKc>
        return;
    8000380c:	0140006f          	j	80003820 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003810:	00009517          	auipc	a0,0x9
    80003814:	9f850513          	addi	a0,a0,-1544 # 8000c208 <CONSOLE_STATUS+0x1f8>
    80003818:	00003097          	auipc	ra,0x3
    8000381c:	87c080e7          	jalr	-1924(ra) # 80006094 <_Z11printStringPKc>
        return;
    80003820:	000b0113          	mv	sp,s6
    80003824:	1500006f          	j	80003974 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003828:	00000593          	li	a1,0
    8000382c:	0000c517          	auipc	a0,0xc
    80003830:	71c50513          	addi	a0,a0,1820 # 8000ff48 <_ZL10waitForAll>
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	cec080e7          	jalr	-788(ra) # 80001520 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    8000383c:	00391793          	slli	a5,s2,0x3
    80003840:	00f78793          	addi	a5,a5,15
    80003844:	ff07f793          	andi	a5,a5,-16
    80003848:	40f10133          	sub	sp,sp,a5
    8000384c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003850:	0019071b          	addiw	a4,s2,1
    80003854:	00171793          	slli	a5,a4,0x1
    80003858:	00e787b3          	add	a5,a5,a4
    8000385c:	00379793          	slli	a5,a5,0x3
    80003860:	00f78793          	addi	a5,a5,15
    80003864:	ff07f793          	andi	a5,a5,-16
    80003868:	40f10133          	sub	sp,sp,a5
    8000386c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003870:	00191613          	slli	a2,s2,0x1
    80003874:	012607b3          	add	a5,a2,s2
    80003878:	00379793          	slli	a5,a5,0x3
    8000387c:	00f987b3          	add	a5,s3,a5
    80003880:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003884:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80003888:	0000c717          	auipc	a4,0xc
    8000388c:	6c073703          	ld	a4,1728(a4) # 8000ff48 <_ZL10waitForAll>
    80003890:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003894:	00078613          	mv	a2,a5
    80003898:	00000597          	auipc	a1,0x0
    8000389c:	d7458593          	addi	a1,a1,-652 # 8000360c <_ZL8consumerPv>
    800038a0:	f9840513          	addi	a0,s0,-104
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	b28080e7          	jalr	-1240(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038ac:	00000493          	li	s1,0
    800038b0:	0280006f          	j	800038d8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800038b4:	00000597          	auipc	a1,0x0
    800038b8:	c1458593          	addi	a1,a1,-1004 # 800034c8 <_ZL16producerKeyboardPv>
                      data + i);
    800038bc:	00179613          	slli	a2,a5,0x1
    800038c0:	00f60633          	add	a2,a2,a5
    800038c4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800038c8:	00c98633          	add	a2,s3,a2
    800038cc:	ffffe097          	auipc	ra,0xffffe
    800038d0:	b00080e7          	jalr	-1280(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800038d4:	0014849b          	addiw	s1,s1,1
    800038d8:	0524d263          	bge	s1,s2,8000391c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800038dc:	00149793          	slli	a5,s1,0x1
    800038e0:	009787b3          	add	a5,a5,s1
    800038e4:	00379793          	slli	a5,a5,0x3
    800038e8:	00f987b3          	add	a5,s3,a5
    800038ec:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800038f0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800038f4:	0000c717          	auipc	a4,0xc
    800038f8:	65473703          	ld	a4,1620(a4) # 8000ff48 <_ZL10waitForAll>
    800038fc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003900:	00048793          	mv	a5,s1
    80003904:	00349513          	slli	a0,s1,0x3
    80003908:	00aa8533          	add	a0,s5,a0
    8000390c:	fa9054e3          	blez	s1,800038b4 <_Z22producerConsumer_C_APIv+0x1c8>
    80003910:	00000597          	auipc	a1,0x0
    80003914:	c6858593          	addi	a1,a1,-920 # 80003578 <_ZL8producerPv>
    80003918:	fa5ff06f          	j	800038bc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	b5c080e7          	jalr	-1188(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003924:	00000493          	li	s1,0
    80003928:	00994e63          	blt	s2,s1,80003944 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    8000392c:	0000c517          	auipc	a0,0xc
    80003930:	61c53503          	ld	a0,1564(a0) # 8000ff48 <_ZL10waitForAll>
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	c6c080e7          	jalr	-916(ra) # 800015a0 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    8000393c:	0014849b          	addiw	s1,s1,1
    80003940:	fe9ff06f          	j	80003928 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003944:	0000c517          	auipc	a0,0xc
    80003948:	60453503          	ld	a0,1540(a0) # 8000ff48 <_ZL10waitForAll>
    8000394c:	ffffe097          	auipc	ra,0xffffe
    80003950:	c18080e7          	jalr	-1000(ra) # 80001564 <_Z9sem_closeP3Sem>
    delete buffer;
    80003954:	000a0e63          	beqz	s4,80003970 <_Z22producerConsumer_C_APIv+0x284>
    80003958:	000a0513          	mv	a0,s4
    8000395c:	00004097          	auipc	ra,0x4
    80003960:	be4080e7          	jalr	-1052(ra) # 80007540 <_ZN6BufferD1Ev>
    80003964:	000a0513          	mv	a0,s4
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	c08080e7          	jalr	-1016(ra) # 80002570 <_ZdlPv>
    80003970:	000b0113          	mv	sp,s6

}
    80003974:	f9040113          	addi	sp,s0,-112
    80003978:	06813083          	ld	ra,104(sp)
    8000397c:	06013403          	ld	s0,96(sp)
    80003980:	05813483          	ld	s1,88(sp)
    80003984:	05013903          	ld	s2,80(sp)
    80003988:	04813983          	ld	s3,72(sp)
    8000398c:	04013a03          	ld	s4,64(sp)
    80003990:	03813a83          	ld	s5,56(sp)
    80003994:	03013b03          	ld	s6,48(sp)
    80003998:	07010113          	addi	sp,sp,112
    8000399c:	00008067          	ret
    800039a0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800039a4:	000a0513          	mv	a0,s4
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	bc8080e7          	jalr	-1080(ra) # 80002570 <_ZdlPv>
    800039b0:	00048513          	mv	a0,s1
    800039b4:	0000d097          	auipc	ra,0xd
    800039b8:	6f4080e7          	jalr	1780(ra) # 800110a8 <_Unwind_Resume>

00000000800039bc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00113c23          	sd	ra,24(sp)
    800039c4:	00813823          	sd	s0,16(sp)
    800039c8:	00913423          	sd	s1,8(sp)
    800039cc:	01213023          	sd	s2,0(sp)
    800039d0:	02010413          	addi	s0,sp,32
    800039d4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800039d8:	00100793          	li	a5,1
    800039dc:	02a7f863          	bgeu	a5,a0,80003a0c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800039e0:	00a00793          	li	a5,10
    800039e4:	02f577b3          	remu	a5,a0,a5
    800039e8:	02078e63          	beqz	a5,80003a24 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800039ec:	fff48513          	addi	a0,s1,-1
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	fcc080e7          	jalr	-52(ra) # 800039bc <_ZL9fibonaccim>
    800039f8:	00050913          	mv	s2,a0
    800039fc:	ffe48513          	addi	a0,s1,-2
    80003a00:	00000097          	auipc	ra,0x0
    80003a04:	fbc080e7          	jalr	-68(ra) # 800039bc <_ZL9fibonaccim>
    80003a08:	00a90533          	add	a0,s2,a0
}
    80003a0c:	01813083          	ld	ra,24(sp)
    80003a10:	01013403          	ld	s0,16(sp)
    80003a14:	00813483          	ld	s1,8(sp)
    80003a18:	00013903          	ld	s2,0(sp)
    80003a1c:	02010113          	addi	sp,sp,32
    80003a20:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003a24:	ffffe097          	auipc	ra,0xffffe
    80003a28:	a54080e7          	jalr	-1452(ra) # 80001478 <_Z15thread_dispatchv>
    80003a2c:	fc1ff06f          	j	800039ec <_ZL9fibonaccim+0x30>

0000000080003a30 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	00113c23          	sd	ra,24(sp)
    80003a38:	00813823          	sd	s0,16(sp)
    80003a3c:	00913423          	sd	s1,8(sp)
    80003a40:	01213023          	sd	s2,0(sp)
    80003a44:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003a48:	00000913          	li	s2,0
    80003a4c:	0380006f          	j	80003a84 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003a50:	ffffe097          	auipc	ra,0xffffe
    80003a54:	a28080e7          	jalr	-1496(ra) # 80001478 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003a58:	00148493          	addi	s1,s1,1
    80003a5c:	000027b7          	lui	a5,0x2
    80003a60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003a64:	0097ee63          	bltu	a5,s1,80003a80 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003a68:	00000713          	li	a4,0
    80003a6c:	000077b7          	lui	a5,0x7
    80003a70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003a74:	fce7eee3          	bltu	a5,a4,80003a50 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80003a78:	00170713          	addi	a4,a4,1
    80003a7c:	ff1ff06f          	j	80003a6c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003a80:	00190913          	addi	s2,s2,1
    80003a84:	00900793          	li	a5,9
    80003a88:	0527e063          	bltu	a5,s2,80003ac8 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003a8c:	00008517          	auipc	a0,0x8
    80003a90:	7ac50513          	addi	a0,a0,1964 # 8000c238 <CONSOLE_STATUS+0x228>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	600080e7          	jalr	1536(ra) # 80006094 <_Z11printStringPKc>
    80003a9c:	00000613          	li	a2,0
    80003aa0:	00a00593          	li	a1,10
    80003aa4:	0009051b          	sext.w	a0,s2
    80003aa8:	00002097          	auipc	ra,0x2
    80003aac:	79c080e7          	jalr	1948(ra) # 80006244 <_Z8printIntiii>
    80003ab0:	00009517          	auipc	a0,0x9
    80003ab4:	c3850513          	addi	a0,a0,-968 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003ab8:	00002097          	auipc	ra,0x2
    80003abc:	5dc080e7          	jalr	1500(ra) # 80006094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003ac0:	00000493          	li	s1,0
    80003ac4:	f99ff06f          	j	80003a5c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003ac8:	00008517          	auipc	a0,0x8
    80003acc:	77850513          	addi	a0,a0,1912 # 8000c240 <CONSOLE_STATUS+0x230>
    80003ad0:	00002097          	auipc	ra,0x2
    80003ad4:	5c4080e7          	jalr	1476(ra) # 80006094 <_Z11printStringPKc>
    finishedA = true;
    80003ad8:	00100793          	li	a5,1
    80003adc:	0000c717          	auipc	a4,0xc
    80003ae0:	46f70a23          	sb	a5,1140(a4) # 8000ff50 <_ZL9finishedA>
}
    80003ae4:	01813083          	ld	ra,24(sp)
    80003ae8:	01013403          	ld	s0,16(sp)
    80003aec:	00813483          	ld	s1,8(sp)
    80003af0:	00013903          	ld	s2,0(sp)
    80003af4:	02010113          	addi	sp,sp,32
    80003af8:	00008067          	ret

0000000080003afc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003afc:	fe010113          	addi	sp,sp,-32
    80003b00:	00113c23          	sd	ra,24(sp)
    80003b04:	00813823          	sd	s0,16(sp)
    80003b08:	00913423          	sd	s1,8(sp)
    80003b0c:	01213023          	sd	s2,0(sp)
    80003b10:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003b14:	00000913          	li	s2,0
    80003b18:	0380006f          	j	80003b50 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003b1c:	ffffe097          	auipc	ra,0xffffe
    80003b20:	95c080e7          	jalr	-1700(ra) # 80001478 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003b24:	00148493          	addi	s1,s1,1
    80003b28:	000027b7          	lui	a5,0x2
    80003b2c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003b30:	0097ee63          	bltu	a5,s1,80003b4c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003b34:	00000713          	li	a4,0
    80003b38:	000077b7          	lui	a5,0x7
    80003b3c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003b40:	fce7eee3          	bltu	a5,a4,80003b1c <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003b44:	00170713          	addi	a4,a4,1
    80003b48:	ff1ff06f          	j	80003b38 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003b4c:	00190913          	addi	s2,s2,1
    80003b50:	00f00793          	li	a5,15
    80003b54:	0527e063          	bltu	a5,s2,80003b94 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003b58:	00008517          	auipc	a0,0x8
    80003b5c:	6f850513          	addi	a0,a0,1784 # 8000c250 <CONSOLE_STATUS+0x240>
    80003b60:	00002097          	auipc	ra,0x2
    80003b64:	534080e7          	jalr	1332(ra) # 80006094 <_Z11printStringPKc>
    80003b68:	00000613          	li	a2,0
    80003b6c:	00a00593          	li	a1,10
    80003b70:	0009051b          	sext.w	a0,s2
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	6d0080e7          	jalr	1744(ra) # 80006244 <_Z8printIntiii>
    80003b7c:	00009517          	auipc	a0,0x9
    80003b80:	b6c50513          	addi	a0,a0,-1172 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003b84:	00002097          	auipc	ra,0x2
    80003b88:	510080e7          	jalr	1296(ra) # 80006094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003b8c:	00000493          	li	s1,0
    80003b90:	f99ff06f          	j	80003b28 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003b94:	00008517          	auipc	a0,0x8
    80003b98:	6c450513          	addi	a0,a0,1732 # 8000c258 <CONSOLE_STATUS+0x248>
    80003b9c:	00002097          	auipc	ra,0x2
    80003ba0:	4f8080e7          	jalr	1272(ra) # 80006094 <_Z11printStringPKc>
    finishedB = true;
    80003ba4:	00100793          	li	a5,1
    80003ba8:	0000c717          	auipc	a4,0xc
    80003bac:	3af704a3          	sb	a5,937(a4) # 8000ff51 <_ZL9finishedB>
    thread_dispatch();
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	8c8080e7          	jalr	-1848(ra) # 80001478 <_Z15thread_dispatchv>
}
    80003bb8:	01813083          	ld	ra,24(sp)
    80003bbc:	01013403          	ld	s0,16(sp)
    80003bc0:	00813483          	ld	s1,8(sp)
    80003bc4:	00013903          	ld	s2,0(sp)
    80003bc8:	02010113          	addi	sp,sp,32
    80003bcc:	00008067          	ret

0000000080003bd0 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003bd0:	fe010113          	addi	sp,sp,-32
    80003bd4:	00113c23          	sd	ra,24(sp)
    80003bd8:	00813823          	sd	s0,16(sp)
    80003bdc:	00913423          	sd	s1,8(sp)
    80003be0:	01213023          	sd	s2,0(sp)
    80003be4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003be8:	00000493          	li	s1,0
    80003bec:	0400006f          	j	80003c2c <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003bf0:	00008517          	auipc	a0,0x8
    80003bf4:	67850513          	addi	a0,a0,1656 # 8000c268 <CONSOLE_STATUS+0x258>
    80003bf8:	00002097          	auipc	ra,0x2
    80003bfc:	49c080e7          	jalr	1180(ra) # 80006094 <_Z11printStringPKc>
    80003c00:	00000613          	li	a2,0
    80003c04:	00a00593          	li	a1,10
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00002097          	auipc	ra,0x2
    80003c10:	638080e7          	jalr	1592(ra) # 80006244 <_Z8printIntiii>
    80003c14:	00009517          	auipc	a0,0x9
    80003c18:	ad450513          	addi	a0,a0,-1324 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003c1c:	00002097          	auipc	ra,0x2
    80003c20:	478080e7          	jalr	1144(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003c24:	0014849b          	addiw	s1,s1,1
    80003c28:	0ff4f493          	andi	s1,s1,255
    80003c2c:	00200793          	li	a5,2
    80003c30:	fc97f0e3          	bgeu	a5,s1,80003bf0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003c34:	00008517          	auipc	a0,0x8
    80003c38:	63c50513          	addi	a0,a0,1596 # 8000c270 <CONSOLE_STATUS+0x260>
    80003c3c:	00002097          	auipc	ra,0x2
    80003c40:	458080e7          	jalr	1112(ra) # 80006094 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003c44:	00700313          	li	t1,7
    thread_dispatch();
    80003c48:	ffffe097          	auipc	ra,0xffffe
    80003c4c:	830080e7          	jalr	-2000(ra) # 80001478 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003c50:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003c54:	00008517          	auipc	a0,0x8
    80003c58:	62c50513          	addi	a0,a0,1580 # 8000c280 <CONSOLE_STATUS+0x270>
    80003c5c:	00002097          	auipc	ra,0x2
    80003c60:	438080e7          	jalr	1080(ra) # 80006094 <_Z11printStringPKc>
    80003c64:	00000613          	li	a2,0
    80003c68:	00a00593          	li	a1,10
    80003c6c:	0009051b          	sext.w	a0,s2
    80003c70:	00002097          	auipc	ra,0x2
    80003c74:	5d4080e7          	jalr	1492(ra) # 80006244 <_Z8printIntiii>
    80003c78:	00009517          	auipc	a0,0x9
    80003c7c:	a7050513          	addi	a0,a0,-1424 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003c80:	00002097          	auipc	ra,0x2
    80003c84:	414080e7          	jalr	1044(ra) # 80006094 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003c88:	00c00513          	li	a0,12
    80003c8c:	00000097          	auipc	ra,0x0
    80003c90:	d30080e7          	jalr	-720(ra) # 800039bc <_ZL9fibonaccim>
    80003c94:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003c98:	00008517          	auipc	a0,0x8
    80003c9c:	5f050513          	addi	a0,a0,1520 # 8000c288 <CONSOLE_STATUS+0x278>
    80003ca0:	00002097          	auipc	ra,0x2
    80003ca4:	3f4080e7          	jalr	1012(ra) # 80006094 <_Z11printStringPKc>
    80003ca8:	00000613          	li	a2,0
    80003cac:	00a00593          	li	a1,10
    80003cb0:	0009051b          	sext.w	a0,s2
    80003cb4:	00002097          	auipc	ra,0x2
    80003cb8:	590080e7          	jalr	1424(ra) # 80006244 <_Z8printIntiii>
    80003cbc:	00009517          	auipc	a0,0x9
    80003cc0:	a2c50513          	addi	a0,a0,-1492 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003cc4:	00002097          	auipc	ra,0x2
    80003cc8:	3d0080e7          	jalr	976(ra) # 80006094 <_Z11printStringPKc>
    80003ccc:	0400006f          	j	80003d0c <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003cd0:	00008517          	auipc	a0,0x8
    80003cd4:	59850513          	addi	a0,a0,1432 # 8000c268 <CONSOLE_STATUS+0x258>
    80003cd8:	00002097          	auipc	ra,0x2
    80003cdc:	3bc080e7          	jalr	956(ra) # 80006094 <_Z11printStringPKc>
    80003ce0:	00000613          	li	a2,0
    80003ce4:	00a00593          	li	a1,10
    80003ce8:	00048513          	mv	a0,s1
    80003cec:	00002097          	auipc	ra,0x2
    80003cf0:	558080e7          	jalr	1368(ra) # 80006244 <_Z8printIntiii>
    80003cf4:	00009517          	auipc	a0,0x9
    80003cf8:	9f450513          	addi	a0,a0,-1548 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003cfc:	00002097          	auipc	ra,0x2
    80003d00:	398080e7          	jalr	920(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003d04:	0014849b          	addiw	s1,s1,1
    80003d08:	0ff4f493          	andi	s1,s1,255
    80003d0c:	00500793          	li	a5,5
    80003d10:	fc97f0e3          	bgeu	a5,s1,80003cd0 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003d14:	00008517          	auipc	a0,0x8
    80003d18:	52c50513          	addi	a0,a0,1324 # 8000c240 <CONSOLE_STATUS+0x230>
    80003d1c:	00002097          	auipc	ra,0x2
    80003d20:	378080e7          	jalr	888(ra) # 80006094 <_Z11printStringPKc>
    finishedC = true;
    80003d24:	00100793          	li	a5,1
    80003d28:	0000c717          	auipc	a4,0xc
    80003d2c:	22f70523          	sb	a5,554(a4) # 8000ff52 <_ZL9finishedC>
    thread_dispatch();
    80003d30:	ffffd097          	auipc	ra,0xffffd
    80003d34:	748080e7          	jalr	1864(ra) # 80001478 <_Z15thread_dispatchv>
}
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	01213023          	sd	s2,0(sp)
    80003d64:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003d68:	00a00493          	li	s1,10
    80003d6c:	0400006f          	j	80003dac <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003d70:	00008517          	auipc	a0,0x8
    80003d74:	52850513          	addi	a0,a0,1320 # 8000c298 <CONSOLE_STATUS+0x288>
    80003d78:	00002097          	auipc	ra,0x2
    80003d7c:	31c080e7          	jalr	796(ra) # 80006094 <_Z11printStringPKc>
    80003d80:	00000613          	li	a2,0
    80003d84:	00a00593          	li	a1,10
    80003d88:	00048513          	mv	a0,s1
    80003d8c:	00002097          	auipc	ra,0x2
    80003d90:	4b8080e7          	jalr	1208(ra) # 80006244 <_Z8printIntiii>
    80003d94:	00009517          	auipc	a0,0x9
    80003d98:	95450513          	addi	a0,a0,-1708 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003d9c:	00002097          	auipc	ra,0x2
    80003da0:	2f8080e7          	jalr	760(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003da4:	0014849b          	addiw	s1,s1,1
    80003da8:	0ff4f493          	andi	s1,s1,255
    80003dac:	00c00793          	li	a5,12
    80003db0:	fc97f0e3          	bgeu	a5,s1,80003d70 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003db4:	00008517          	auipc	a0,0x8
    80003db8:	4ec50513          	addi	a0,a0,1260 # 8000c2a0 <CONSOLE_STATUS+0x290>
    80003dbc:	00002097          	auipc	ra,0x2
    80003dc0:	2d8080e7          	jalr	728(ra) # 80006094 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003dc4:	00500313          	li	t1,5
    thread_dispatch();
    80003dc8:	ffffd097          	auipc	ra,0xffffd
    80003dcc:	6b0080e7          	jalr	1712(ra) # 80001478 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003dd0:	01000513          	li	a0,16
    80003dd4:	00000097          	auipc	ra,0x0
    80003dd8:	be8080e7          	jalr	-1048(ra) # 800039bc <_ZL9fibonaccim>
    80003ddc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003de0:	00008517          	auipc	a0,0x8
    80003de4:	4d050513          	addi	a0,a0,1232 # 8000c2b0 <CONSOLE_STATUS+0x2a0>
    80003de8:	00002097          	auipc	ra,0x2
    80003dec:	2ac080e7          	jalr	684(ra) # 80006094 <_Z11printStringPKc>
    80003df0:	00000613          	li	a2,0
    80003df4:	00a00593          	li	a1,10
    80003df8:	0009051b          	sext.w	a0,s2
    80003dfc:	00002097          	auipc	ra,0x2
    80003e00:	448080e7          	jalr	1096(ra) # 80006244 <_Z8printIntiii>
    80003e04:	00009517          	auipc	a0,0x9
    80003e08:	8e450513          	addi	a0,a0,-1820 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003e0c:	00002097          	auipc	ra,0x2
    80003e10:	288080e7          	jalr	648(ra) # 80006094 <_Z11printStringPKc>
    80003e14:	0400006f          	j	80003e54 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003e18:	00008517          	auipc	a0,0x8
    80003e1c:	48050513          	addi	a0,a0,1152 # 8000c298 <CONSOLE_STATUS+0x288>
    80003e20:	00002097          	auipc	ra,0x2
    80003e24:	274080e7          	jalr	628(ra) # 80006094 <_Z11printStringPKc>
    80003e28:	00000613          	li	a2,0
    80003e2c:	00a00593          	li	a1,10
    80003e30:	00048513          	mv	a0,s1
    80003e34:	00002097          	auipc	ra,0x2
    80003e38:	410080e7          	jalr	1040(ra) # 80006244 <_Z8printIntiii>
    80003e3c:	00009517          	auipc	a0,0x9
    80003e40:	8ac50513          	addi	a0,a0,-1876 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80003e44:	00002097          	auipc	ra,0x2
    80003e48:	250080e7          	jalr	592(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003e4c:	0014849b          	addiw	s1,s1,1
    80003e50:	0ff4f493          	andi	s1,s1,255
    80003e54:	00f00793          	li	a5,15
    80003e58:	fc97f0e3          	bgeu	a5,s1,80003e18 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003e5c:	00008517          	auipc	a0,0x8
    80003e60:	46450513          	addi	a0,a0,1124 # 8000c2c0 <CONSOLE_STATUS+0x2b0>
    80003e64:	00002097          	auipc	ra,0x2
    80003e68:	230080e7          	jalr	560(ra) # 80006094 <_Z11printStringPKc>
    finishedD = true;
    80003e6c:	00100793          	li	a5,1
    80003e70:	0000c717          	auipc	a4,0xc
    80003e74:	0ef701a3          	sb	a5,227(a4) # 8000ff53 <_ZL9finishedD>
    thread_dispatch();
    80003e78:	ffffd097          	auipc	ra,0xffffd
    80003e7c:	600080e7          	jalr	1536(ra) # 80001478 <_Z15thread_dispatchv>
}
    80003e80:	01813083          	ld	ra,24(sp)
    80003e84:	01013403          	ld	s0,16(sp)
    80003e88:	00813483          	ld	s1,8(sp)
    80003e8c:	00013903          	ld	s2,0(sp)
    80003e90:	02010113          	addi	sp,sp,32
    80003e94:	00008067          	ret

0000000080003e98 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003e98:	fc010113          	addi	sp,sp,-64
    80003e9c:	02113c23          	sd	ra,56(sp)
    80003ea0:	02813823          	sd	s0,48(sp)
    80003ea4:	02913423          	sd	s1,40(sp)
    80003ea8:	03213023          	sd	s2,32(sp)
    80003eac:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003eb0:	02000513          	li	a0,32
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	66c080e7          	jalr	1644(ra) # 80002520 <_Znwm>
    80003ebc:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003ec0:	fffff097          	auipc	ra,0xfffff
    80003ec4:	824080e7          	jalr	-2012(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80003ec8:	0000c797          	auipc	a5,0xc
    80003ecc:	ca878793          	addi	a5,a5,-856 # 8000fb70 <_ZTV7WorkerA+0x10>
    80003ed0:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003ed4:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003ed8:	00008517          	auipc	a0,0x8
    80003edc:	3f850513          	addi	a0,a0,1016 # 8000c2d0 <CONSOLE_STATUS+0x2c0>
    80003ee0:	00002097          	auipc	ra,0x2
    80003ee4:	1b4080e7          	jalr	436(ra) # 80006094 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003ee8:	02000513          	li	a0,32
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	634080e7          	jalr	1588(ra) # 80002520 <_Znwm>
    80003ef4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003ef8:	ffffe097          	auipc	ra,0xffffe
    80003efc:	7ec080e7          	jalr	2028(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80003f00:	0000c797          	auipc	a5,0xc
    80003f04:	c9878793          	addi	a5,a5,-872 # 8000fb98 <_ZTV7WorkerB+0x10>
    80003f08:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003f0c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003f10:	00008517          	auipc	a0,0x8
    80003f14:	3d850513          	addi	a0,a0,984 # 8000c2e8 <CONSOLE_STATUS+0x2d8>
    80003f18:	00002097          	auipc	ra,0x2
    80003f1c:	17c080e7          	jalr	380(ra) # 80006094 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003f20:	02000513          	li	a0,32
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	5fc080e7          	jalr	1532(ra) # 80002520 <_Znwm>
    80003f2c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	7b4080e7          	jalr	1972(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80003f38:	0000c797          	auipc	a5,0xc
    80003f3c:	c8878793          	addi	a5,a5,-888 # 8000fbc0 <_ZTV7WorkerC+0x10>
    80003f40:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003f44:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003f48:	00008517          	auipc	a0,0x8
    80003f4c:	3b850513          	addi	a0,a0,952 # 8000c300 <CONSOLE_STATUS+0x2f0>
    80003f50:	00002097          	auipc	ra,0x2
    80003f54:	144080e7          	jalr	324(ra) # 80006094 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003f58:	02000513          	li	a0,32
    80003f5c:	ffffe097          	auipc	ra,0xffffe
    80003f60:	5c4080e7          	jalr	1476(ra) # 80002520 <_Znwm>
    80003f64:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003f68:	ffffe097          	auipc	ra,0xffffe
    80003f6c:	77c080e7          	jalr	1916(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80003f70:	0000c797          	auipc	a5,0xc
    80003f74:	c7878793          	addi	a5,a5,-904 # 8000fbe8 <_ZTV7WorkerD+0x10>
    80003f78:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003f7c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003f80:	00008517          	auipc	a0,0x8
    80003f84:	39850513          	addi	a0,a0,920 # 8000c318 <CONSOLE_STATUS+0x308>
    80003f88:	00002097          	auipc	ra,0x2
    80003f8c:	10c080e7          	jalr	268(ra) # 80006094 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003f90:	00000493          	li	s1,0
    80003f94:	00300793          	li	a5,3
    80003f98:	0297c663          	blt	a5,s1,80003fc4 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003f9c:	00349793          	slli	a5,s1,0x3
    80003fa0:	fe040713          	addi	a4,s0,-32
    80003fa4:	00f707b3          	add	a5,a4,a5
    80003fa8:	fe07b503          	ld	a0,-32(a5)
    80003fac:	ffffe097          	auipc	ra,0xffffe
    80003fb0:	6ac080e7          	jalr	1708(ra) # 80002658 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003fb4:	0014849b          	addiw	s1,s1,1
    80003fb8:	fddff06f          	j	80003f94 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003fbc:	ffffe097          	auipc	ra,0xffffe
    80003fc0:	700080e7          	jalr	1792(ra) # 800026bc <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003fc4:	0000c797          	auipc	a5,0xc
    80003fc8:	f8c7c783          	lbu	a5,-116(a5) # 8000ff50 <_ZL9finishedA>
    80003fcc:	fe0788e3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003fd0:	0000c797          	auipc	a5,0xc
    80003fd4:	f817c783          	lbu	a5,-127(a5) # 8000ff51 <_ZL9finishedB>
    80003fd8:	fe0782e3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003fdc:	0000c797          	auipc	a5,0xc
    80003fe0:	f767c783          	lbu	a5,-138(a5) # 8000ff52 <_ZL9finishedC>
    80003fe4:	fc078ce3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003fe8:	0000c797          	auipc	a5,0xc
    80003fec:	f6b7c783          	lbu	a5,-149(a5) # 8000ff53 <_ZL9finishedD>
    80003ff0:	fc0786e3          	beqz	a5,80003fbc <_Z20Threads_CPP_API_testv+0x124>
    80003ff4:	fc040493          	addi	s1,s0,-64
    80003ff8:	0080006f          	j	80004000 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003ffc:	00848493          	addi	s1,s1,8
    80004000:	fe040793          	addi	a5,s0,-32
    80004004:	08f48663          	beq	s1,a5,80004090 <_Z20Threads_CPP_API_testv+0x1f8>
    80004008:	0004b503          	ld	a0,0(s1)
    8000400c:	fe0508e3          	beqz	a0,80003ffc <_Z20Threads_CPP_API_testv+0x164>
    80004010:	00053783          	ld	a5,0(a0)
    80004014:	0087b783          	ld	a5,8(a5)
    80004018:	000780e7          	jalr	a5
    8000401c:	fe1ff06f          	j	80003ffc <_Z20Threads_CPP_API_testv+0x164>
    80004020:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80004024:	00048513          	mv	a0,s1
    80004028:	ffffe097          	auipc	ra,0xffffe
    8000402c:	548080e7          	jalr	1352(ra) # 80002570 <_ZdlPv>
    80004030:	00090513          	mv	a0,s2
    80004034:	0000d097          	auipc	ra,0xd
    80004038:	074080e7          	jalr	116(ra) # 800110a8 <_Unwind_Resume>
    8000403c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004040:	00048513          	mv	a0,s1
    80004044:	ffffe097          	auipc	ra,0xffffe
    80004048:	52c080e7          	jalr	1324(ra) # 80002570 <_ZdlPv>
    8000404c:	00090513          	mv	a0,s2
    80004050:	0000d097          	auipc	ra,0xd
    80004054:	058080e7          	jalr	88(ra) # 800110a8 <_Unwind_Resume>
    80004058:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000405c:	00048513          	mv	a0,s1
    80004060:	ffffe097          	auipc	ra,0xffffe
    80004064:	510080e7          	jalr	1296(ra) # 80002570 <_ZdlPv>
    80004068:	00090513          	mv	a0,s2
    8000406c:	0000d097          	auipc	ra,0xd
    80004070:	03c080e7          	jalr	60(ra) # 800110a8 <_Unwind_Resume>
    80004074:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004078:	00048513          	mv	a0,s1
    8000407c:	ffffe097          	auipc	ra,0xffffe
    80004080:	4f4080e7          	jalr	1268(ra) # 80002570 <_ZdlPv>
    80004084:	00090513          	mv	a0,s2
    80004088:	0000d097          	auipc	ra,0xd
    8000408c:	020080e7          	jalr	32(ra) # 800110a8 <_Unwind_Resume>
}
    80004090:	03813083          	ld	ra,56(sp)
    80004094:	03013403          	ld	s0,48(sp)
    80004098:	02813483          	ld	s1,40(sp)
    8000409c:	02013903          	ld	s2,32(sp)
    800040a0:	04010113          	addi	sp,sp,64
    800040a4:	00008067          	ret

00000000800040a8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800040a8:	ff010113          	addi	sp,sp,-16
    800040ac:	00113423          	sd	ra,8(sp)
    800040b0:	00813023          	sd	s0,0(sp)
    800040b4:	01010413          	addi	s0,sp,16
    800040b8:	0000c797          	auipc	a5,0xc
    800040bc:	ab878793          	addi	a5,a5,-1352 # 8000fb70 <_ZTV7WorkerA+0x10>
    800040c0:	00f53023          	sd	a5,0(a0)
    800040c4:	ffffe097          	auipc	ra,0xffffe
    800040c8:	3d8080e7          	jalr	984(ra) # 8000249c <_ZN6ThreadD1Ev>
    800040cc:	00813083          	ld	ra,8(sp)
    800040d0:	00013403          	ld	s0,0(sp)
    800040d4:	01010113          	addi	sp,sp,16
    800040d8:	00008067          	ret

00000000800040dc <_ZN7WorkerAD0Ev>:
    800040dc:	fe010113          	addi	sp,sp,-32
    800040e0:	00113c23          	sd	ra,24(sp)
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	02010413          	addi	s0,sp,32
    800040f0:	00050493          	mv	s1,a0
    800040f4:	0000c797          	auipc	a5,0xc
    800040f8:	a7c78793          	addi	a5,a5,-1412 # 8000fb70 <_ZTV7WorkerA+0x10>
    800040fc:	00f53023          	sd	a5,0(a0)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	39c080e7          	jalr	924(ra) # 8000249c <_ZN6ThreadD1Ev>
    80004108:	00048513          	mv	a0,s1
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	464080e7          	jalr	1124(ra) # 80002570 <_ZdlPv>
    80004114:	01813083          	ld	ra,24(sp)
    80004118:	01013403          	ld	s0,16(sp)
    8000411c:	00813483          	ld	s1,8(sp)
    80004120:	02010113          	addi	sp,sp,32
    80004124:	00008067          	ret

0000000080004128 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004128:	ff010113          	addi	sp,sp,-16
    8000412c:	00113423          	sd	ra,8(sp)
    80004130:	00813023          	sd	s0,0(sp)
    80004134:	01010413          	addi	s0,sp,16
    80004138:	0000c797          	auipc	a5,0xc
    8000413c:	a6078793          	addi	a5,a5,-1440 # 8000fb98 <_ZTV7WorkerB+0x10>
    80004140:	00f53023          	sd	a5,0(a0)
    80004144:	ffffe097          	auipc	ra,0xffffe
    80004148:	358080e7          	jalr	856(ra) # 8000249c <_ZN6ThreadD1Ev>
    8000414c:	00813083          	ld	ra,8(sp)
    80004150:	00013403          	ld	s0,0(sp)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <_ZN7WorkerBD0Ev>:
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00113c23          	sd	ra,24(sp)
    80004164:	00813823          	sd	s0,16(sp)
    80004168:	00913423          	sd	s1,8(sp)
    8000416c:	02010413          	addi	s0,sp,32
    80004170:	00050493          	mv	s1,a0
    80004174:	0000c797          	auipc	a5,0xc
    80004178:	a2478793          	addi	a5,a5,-1500 # 8000fb98 <_ZTV7WorkerB+0x10>
    8000417c:	00f53023          	sd	a5,0(a0)
    80004180:	ffffe097          	auipc	ra,0xffffe
    80004184:	31c080e7          	jalr	796(ra) # 8000249c <_ZN6ThreadD1Ev>
    80004188:	00048513          	mv	a0,s1
    8000418c:	ffffe097          	auipc	ra,0xffffe
    80004190:	3e4080e7          	jalr	996(ra) # 80002570 <_ZdlPv>
    80004194:	01813083          	ld	ra,24(sp)
    80004198:	01013403          	ld	s0,16(sp)
    8000419c:	00813483          	ld	s1,8(sp)
    800041a0:	02010113          	addi	sp,sp,32
    800041a4:	00008067          	ret

00000000800041a8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800041a8:	ff010113          	addi	sp,sp,-16
    800041ac:	00113423          	sd	ra,8(sp)
    800041b0:	00813023          	sd	s0,0(sp)
    800041b4:	01010413          	addi	s0,sp,16
    800041b8:	0000c797          	auipc	a5,0xc
    800041bc:	a0878793          	addi	a5,a5,-1528 # 8000fbc0 <_ZTV7WorkerC+0x10>
    800041c0:	00f53023          	sd	a5,0(a0)
    800041c4:	ffffe097          	auipc	ra,0xffffe
    800041c8:	2d8080e7          	jalr	728(ra) # 8000249c <_ZN6ThreadD1Ev>
    800041cc:	00813083          	ld	ra,8(sp)
    800041d0:	00013403          	ld	s0,0(sp)
    800041d4:	01010113          	addi	sp,sp,16
    800041d8:	00008067          	ret

00000000800041dc <_ZN7WorkerCD0Ev>:
    800041dc:	fe010113          	addi	sp,sp,-32
    800041e0:	00113c23          	sd	ra,24(sp)
    800041e4:	00813823          	sd	s0,16(sp)
    800041e8:	00913423          	sd	s1,8(sp)
    800041ec:	02010413          	addi	s0,sp,32
    800041f0:	00050493          	mv	s1,a0
    800041f4:	0000c797          	auipc	a5,0xc
    800041f8:	9cc78793          	addi	a5,a5,-1588 # 8000fbc0 <_ZTV7WorkerC+0x10>
    800041fc:	00f53023          	sd	a5,0(a0)
    80004200:	ffffe097          	auipc	ra,0xffffe
    80004204:	29c080e7          	jalr	668(ra) # 8000249c <_ZN6ThreadD1Ev>
    80004208:	00048513          	mv	a0,s1
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	364080e7          	jalr	868(ra) # 80002570 <_ZdlPv>
    80004214:	01813083          	ld	ra,24(sp)
    80004218:	01013403          	ld	s0,16(sp)
    8000421c:	00813483          	ld	s1,8(sp)
    80004220:	02010113          	addi	sp,sp,32
    80004224:	00008067          	ret

0000000080004228 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004228:	ff010113          	addi	sp,sp,-16
    8000422c:	00113423          	sd	ra,8(sp)
    80004230:	00813023          	sd	s0,0(sp)
    80004234:	01010413          	addi	s0,sp,16
    80004238:	0000c797          	auipc	a5,0xc
    8000423c:	9b078793          	addi	a5,a5,-1616 # 8000fbe8 <_ZTV7WorkerD+0x10>
    80004240:	00f53023          	sd	a5,0(a0)
    80004244:	ffffe097          	auipc	ra,0xffffe
    80004248:	258080e7          	jalr	600(ra) # 8000249c <_ZN6ThreadD1Ev>
    8000424c:	00813083          	ld	ra,8(sp)
    80004250:	00013403          	ld	s0,0(sp)
    80004254:	01010113          	addi	sp,sp,16
    80004258:	00008067          	ret

000000008000425c <_ZN7WorkerDD0Ev>:
    8000425c:	fe010113          	addi	sp,sp,-32
    80004260:	00113c23          	sd	ra,24(sp)
    80004264:	00813823          	sd	s0,16(sp)
    80004268:	00913423          	sd	s1,8(sp)
    8000426c:	02010413          	addi	s0,sp,32
    80004270:	00050493          	mv	s1,a0
    80004274:	0000c797          	auipc	a5,0xc
    80004278:	97478793          	addi	a5,a5,-1676 # 8000fbe8 <_ZTV7WorkerD+0x10>
    8000427c:	00f53023          	sd	a5,0(a0)
    80004280:	ffffe097          	auipc	ra,0xffffe
    80004284:	21c080e7          	jalr	540(ra) # 8000249c <_ZN6ThreadD1Ev>
    80004288:	00048513          	mv	a0,s1
    8000428c:	ffffe097          	auipc	ra,0xffffe
    80004290:	2e4080e7          	jalr	740(ra) # 80002570 <_ZdlPv>
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00813483          	ld	s1,8(sp)
    800042a0:	02010113          	addi	sp,sp,32
    800042a4:	00008067          	ret

00000000800042a8 <_ZN7WorkerA3runEv>:
    void run() override {
    800042a8:	ff010113          	addi	sp,sp,-16
    800042ac:	00113423          	sd	ra,8(sp)
    800042b0:	00813023          	sd	s0,0(sp)
    800042b4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800042b8:	00000593          	li	a1,0
    800042bc:	fffff097          	auipc	ra,0xfffff
    800042c0:	774080e7          	jalr	1908(ra) # 80003a30 <_ZN7WorkerA11workerBodyAEPv>
    }
    800042c4:	00813083          	ld	ra,8(sp)
    800042c8:	00013403          	ld	s0,0(sp)
    800042cc:	01010113          	addi	sp,sp,16
    800042d0:	00008067          	ret

00000000800042d4 <_ZN7WorkerB3runEv>:
    void run() override {
    800042d4:	ff010113          	addi	sp,sp,-16
    800042d8:	00113423          	sd	ra,8(sp)
    800042dc:	00813023          	sd	s0,0(sp)
    800042e0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800042e4:	00000593          	li	a1,0
    800042e8:	00000097          	auipc	ra,0x0
    800042ec:	814080e7          	jalr	-2028(ra) # 80003afc <_ZN7WorkerB11workerBodyBEPv>
    }
    800042f0:	00813083          	ld	ra,8(sp)
    800042f4:	00013403          	ld	s0,0(sp)
    800042f8:	01010113          	addi	sp,sp,16
    800042fc:	00008067          	ret

0000000080004300 <_ZN7WorkerC3runEv>:
    void run() override {
    80004300:	ff010113          	addi	sp,sp,-16
    80004304:	00113423          	sd	ra,8(sp)
    80004308:	00813023          	sd	s0,0(sp)
    8000430c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004310:	00000593          	li	a1,0
    80004314:	00000097          	auipc	ra,0x0
    80004318:	8bc080e7          	jalr	-1860(ra) # 80003bd0 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000431c:	00813083          	ld	ra,8(sp)
    80004320:	00013403          	ld	s0,0(sp)
    80004324:	01010113          	addi	sp,sp,16
    80004328:	00008067          	ret

000000008000432c <_ZN7WorkerD3runEv>:
    void run() override {
    8000432c:	ff010113          	addi	sp,sp,-16
    80004330:	00113423          	sd	ra,8(sp)
    80004334:	00813023          	sd	s0,0(sp)
    80004338:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000433c:	00000593          	li	a1,0
    80004340:	00000097          	auipc	ra,0x0
    80004344:	a10080e7          	jalr	-1520(ra) # 80003d50 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004348:	00813083          	ld	ra,8(sp)
    8000434c:	00013403          	ld	s0,0(sp)
    80004350:	01010113          	addi	sp,sp,16
    80004354:	00008067          	ret

0000000080004358 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004358:	f8010113          	addi	sp,sp,-128
    8000435c:	06113c23          	sd	ra,120(sp)
    80004360:	06813823          	sd	s0,112(sp)
    80004364:	06913423          	sd	s1,104(sp)
    80004368:	07213023          	sd	s2,96(sp)
    8000436c:	05313c23          	sd	s3,88(sp)
    80004370:	05413823          	sd	s4,80(sp)
    80004374:	05513423          	sd	s5,72(sp)
    80004378:	05613023          	sd	s6,64(sp)
    8000437c:	03713c23          	sd	s7,56(sp)
    80004380:	03813823          	sd	s8,48(sp)
    80004384:	03913423          	sd	s9,40(sp)
    80004388:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    8000438c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004390:	00008517          	auipc	a0,0x8
    80004394:	dc850513          	addi	a0,a0,-568 # 8000c158 <CONSOLE_STATUS+0x148>
    80004398:	00002097          	auipc	ra,0x2
    8000439c:	cfc080e7          	jalr	-772(ra) # 80006094 <_Z11printStringPKc>
    getString(input, 30);
    800043a0:	01e00593          	li	a1,30
    800043a4:	f8040493          	addi	s1,s0,-128
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00002097          	auipc	ra,0x2
    800043b0:	d70080e7          	jalr	-656(ra) # 8000611c <_Z9getStringPci>
    threadNum = stringToInt(input);
    800043b4:	00048513          	mv	a0,s1
    800043b8:	00002097          	auipc	ra,0x2
    800043bc:	e3c080e7          	jalr	-452(ra) # 800061f4 <_Z11stringToIntPKc>
    800043c0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800043c4:	00008517          	auipc	a0,0x8
    800043c8:	db450513          	addi	a0,a0,-588 # 8000c178 <CONSOLE_STATUS+0x168>
    800043cc:	00002097          	auipc	ra,0x2
    800043d0:	cc8080e7          	jalr	-824(ra) # 80006094 <_Z11printStringPKc>
    getString(input, 30);
    800043d4:	01e00593          	li	a1,30
    800043d8:	00048513          	mv	a0,s1
    800043dc:	00002097          	auipc	ra,0x2
    800043e0:	d40080e7          	jalr	-704(ra) # 8000611c <_Z9getStringPci>
    n = stringToInt(input);
    800043e4:	00048513          	mv	a0,s1
    800043e8:	00002097          	auipc	ra,0x2
    800043ec:	e0c080e7          	jalr	-500(ra) # 800061f4 <_Z11stringToIntPKc>
    800043f0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800043f4:	00008517          	auipc	a0,0x8
    800043f8:	da450513          	addi	a0,a0,-604 # 8000c198 <CONSOLE_STATUS+0x188>
    800043fc:	00002097          	auipc	ra,0x2
    80004400:	c98080e7          	jalr	-872(ra) # 80006094 <_Z11printStringPKc>
    printInt(threadNum);
    80004404:	00000613          	li	a2,0
    80004408:	00a00593          	li	a1,10
    8000440c:	00098513          	mv	a0,s3
    80004410:	00002097          	auipc	ra,0x2
    80004414:	e34080e7          	jalr	-460(ra) # 80006244 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004418:	00008517          	auipc	a0,0x8
    8000441c:	d9850513          	addi	a0,a0,-616 # 8000c1b0 <CONSOLE_STATUS+0x1a0>
    80004420:	00002097          	auipc	ra,0x2
    80004424:	c74080e7          	jalr	-908(ra) # 80006094 <_Z11printStringPKc>
    printInt(n);
    80004428:	00000613          	li	a2,0
    8000442c:	00a00593          	li	a1,10
    80004430:	00048513          	mv	a0,s1
    80004434:	00002097          	auipc	ra,0x2
    80004438:	e10080e7          	jalr	-496(ra) # 80006244 <_Z8printIntiii>
    printString(".\n");
    8000443c:	00008517          	auipc	a0,0x8
    80004440:	5a450513          	addi	a0,a0,1444 # 8000c9e0 <CONSOLE_STATUS+0x9d0>
    80004444:	00002097          	auipc	ra,0x2
    80004448:	c50080e7          	jalr	-944(ra) # 80006094 <_Z11printStringPKc>
    if (threadNum > n) {
    8000444c:	0334c463          	blt	s1,s3,80004474 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004450:	03305c63          	blez	s3,80004488 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004454:	03800513          	li	a0,56
    80004458:	ffffe097          	auipc	ra,0xffffe
    8000445c:	0c8080e7          	jalr	200(ra) # 80002520 <_Znwm>
    80004460:	00050a93          	mv	s5,a0
    80004464:	00048593          	mv	a1,s1
    80004468:	00002097          	auipc	ra,0x2
    8000446c:	efc080e7          	jalr	-260(ra) # 80006364 <_ZN9BufferCPPC1Ei>
    80004470:	0300006f          	j	800044a0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004474:	00008517          	auipc	a0,0x8
    80004478:	d5450513          	addi	a0,a0,-684 # 8000c1c8 <CONSOLE_STATUS+0x1b8>
    8000447c:	00002097          	auipc	ra,0x2
    80004480:	c18080e7          	jalr	-1000(ra) # 80006094 <_Z11printStringPKc>
        return;
    80004484:	0140006f          	j	80004498 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004488:	00008517          	auipc	a0,0x8
    8000448c:	d8050513          	addi	a0,a0,-640 # 8000c208 <CONSOLE_STATUS+0x1f8>
    80004490:	00002097          	auipc	ra,0x2
    80004494:	c04080e7          	jalr	-1020(ra) # 80006094 <_Z11printStringPKc>
        return;
    80004498:	000c0113          	mv	sp,s8
    8000449c:	2140006f          	j	800046b0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800044a0:	01000513          	li	a0,16
    800044a4:	ffffe097          	auipc	ra,0xffffe
    800044a8:	07c080e7          	jalr	124(ra) # 80002520 <_Znwm>
    800044ac:	00050913          	mv	s2,a0
    800044b0:	00000593          	li	a1,0
    800044b4:	ffffe097          	auipc	ra,0xffffe
    800044b8:	334080e7          	jalr	820(ra) # 800027e8 <_ZN9SemaphoreC1Ej>
    800044bc:	0000c797          	auipc	a5,0xc
    800044c0:	ab27b223          	sd	s2,-1372(a5) # 8000ff60 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800044c4:	00399793          	slli	a5,s3,0x3
    800044c8:	00f78793          	addi	a5,a5,15
    800044cc:	ff07f793          	andi	a5,a5,-16
    800044d0:	40f10133          	sub	sp,sp,a5
    800044d4:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800044d8:	0019871b          	addiw	a4,s3,1
    800044dc:	00171793          	slli	a5,a4,0x1
    800044e0:	00e787b3          	add	a5,a5,a4
    800044e4:	00379793          	slli	a5,a5,0x3
    800044e8:	00f78793          	addi	a5,a5,15
    800044ec:	ff07f793          	andi	a5,a5,-16
    800044f0:	40f10133          	sub	sp,sp,a5
    800044f4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800044f8:	00199493          	slli	s1,s3,0x1
    800044fc:	013484b3          	add	s1,s1,s3
    80004500:	00349493          	slli	s1,s1,0x3
    80004504:	009b04b3          	add	s1,s6,s1
    80004508:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    8000450c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004510:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004514:	02800513          	li	a0,40
    80004518:	ffffe097          	auipc	ra,0xffffe
    8000451c:	008080e7          	jalr	8(ra) # 80002520 <_Znwm>
    80004520:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004524:	ffffe097          	auipc	ra,0xffffe
    80004528:	1c0080e7          	jalr	448(ra) # 800026e4 <_ZN6ThreadC1Ev>
    8000452c:	0000b797          	auipc	a5,0xb
    80004530:	73478793          	addi	a5,a5,1844 # 8000fc60 <_ZTV8Consumer+0x10>
    80004534:	00fbb023          	sd	a5,0(s7)
    80004538:	029bb023          	sd	s1,32(s7)
    consumer->start();
    8000453c:	000b8513          	mv	a0,s7
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	118080e7          	jalr	280(ra) # 80002658 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004548:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    8000454c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004550:	0000c797          	auipc	a5,0xc
    80004554:	a107b783          	ld	a5,-1520(a5) # 8000ff60 <_ZL10waitForAll>
    80004558:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    8000455c:	02800513          	li	a0,40
    80004560:	ffffe097          	auipc	ra,0xffffe
    80004564:	fc0080e7          	jalr	-64(ra) # 80002520 <_Znwm>
    80004568:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    8000456c:	ffffe097          	auipc	ra,0xffffe
    80004570:	178080e7          	jalr	376(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80004574:	0000b797          	auipc	a5,0xb
    80004578:	69c78793          	addi	a5,a5,1692 # 8000fc10 <_ZTV16ProducerKeyborad+0x10>
    8000457c:	00f4b023          	sd	a5,0(s1)
    80004580:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004584:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004588:	00048513          	mv	a0,s1
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	0cc080e7          	jalr	204(ra) # 80002658 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004594:	00100913          	li	s2,1
    80004598:	0300006f          	j	800045c8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    8000459c:	0000b797          	auipc	a5,0xb
    800045a0:	69c78793          	addi	a5,a5,1692 # 8000fc38 <_ZTV8Producer+0x10>
    800045a4:	00fcb023          	sd	a5,0(s9)
    800045a8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800045ac:	00391793          	slli	a5,s2,0x3
    800045b0:	00fa07b3          	add	a5,s4,a5
    800045b4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800045b8:	000c8513          	mv	a0,s9
    800045bc:	ffffe097          	auipc	ra,0xffffe
    800045c0:	09c080e7          	jalr	156(ra) # 80002658 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800045c4:	0019091b          	addiw	s2,s2,1
    800045c8:	05395263          	bge	s2,s3,8000460c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800045cc:	00191493          	slli	s1,s2,0x1
    800045d0:	012484b3          	add	s1,s1,s2
    800045d4:	00349493          	slli	s1,s1,0x3
    800045d8:	009b04b3          	add	s1,s6,s1
    800045dc:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800045e0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800045e4:	0000c797          	auipc	a5,0xc
    800045e8:	97c7b783          	ld	a5,-1668(a5) # 8000ff60 <_ZL10waitForAll>
    800045ec:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800045f0:	02800513          	li	a0,40
    800045f4:	ffffe097          	auipc	ra,0xffffe
    800045f8:	f2c080e7          	jalr	-212(ra) # 80002520 <_Znwm>
    800045fc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004600:	ffffe097          	auipc	ra,0xffffe
    80004604:	0e4080e7          	jalr	228(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80004608:	f95ff06f          	j	8000459c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    8000460c:	ffffe097          	auipc	ra,0xffffe
    80004610:	0b0080e7          	jalr	176(ra) # 800026bc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004614:	00000493          	li	s1,0
    80004618:	0099ce63          	blt	s3,s1,80004634 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    8000461c:	0000c517          	auipc	a0,0xc
    80004620:	94453503          	ld	a0,-1724(a0) # 8000ff60 <_ZL10waitForAll>
    80004624:	ffffe097          	auipc	ra,0xffffe
    80004628:	1fc080e7          	jalr	508(ra) # 80002820 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000462c:	0014849b          	addiw	s1,s1,1
    80004630:	fe9ff06f          	j	80004618 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004634:	0000c517          	auipc	a0,0xc
    80004638:	92c53503          	ld	a0,-1748(a0) # 8000ff60 <_ZL10waitForAll>
    8000463c:	00050863          	beqz	a0,8000464c <_Z20testConsumerProducerv+0x2f4>
    80004640:	00053783          	ld	a5,0(a0)
    80004644:	0087b783          	ld	a5,8(a5)
    80004648:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000464c:	00000493          	li	s1,0
    80004650:	0080006f          	j	80004658 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80004654:	0014849b          	addiw	s1,s1,1
    80004658:	0334d263          	bge	s1,s3,8000467c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000465c:	00349793          	slli	a5,s1,0x3
    80004660:	00fa07b3          	add	a5,s4,a5
    80004664:	0007b503          	ld	a0,0(a5)
    80004668:	fe0506e3          	beqz	a0,80004654 <_Z20testConsumerProducerv+0x2fc>
    8000466c:	00053783          	ld	a5,0(a0)
    80004670:	0087b783          	ld	a5,8(a5)
    80004674:	000780e7          	jalr	a5
    80004678:	fddff06f          	j	80004654 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000467c:	000b8a63          	beqz	s7,80004690 <_Z20testConsumerProducerv+0x338>
    80004680:	000bb783          	ld	a5,0(s7)
    80004684:	0087b783          	ld	a5,8(a5)
    80004688:	000b8513          	mv	a0,s7
    8000468c:	000780e7          	jalr	a5
    delete buffer;
    80004690:	000a8e63          	beqz	s5,800046ac <_Z20testConsumerProducerv+0x354>
    80004694:	000a8513          	mv	a0,s5
    80004698:	00002097          	auipc	ra,0x2
    8000469c:	fc4080e7          	jalr	-60(ra) # 8000665c <_ZN9BufferCPPD1Ev>
    800046a0:	000a8513          	mv	a0,s5
    800046a4:	ffffe097          	auipc	ra,0xffffe
    800046a8:	ecc080e7          	jalr	-308(ra) # 80002570 <_ZdlPv>
    800046ac:	000c0113          	mv	sp,s8
}
    800046b0:	f8040113          	addi	sp,s0,-128
    800046b4:	07813083          	ld	ra,120(sp)
    800046b8:	07013403          	ld	s0,112(sp)
    800046bc:	06813483          	ld	s1,104(sp)
    800046c0:	06013903          	ld	s2,96(sp)
    800046c4:	05813983          	ld	s3,88(sp)
    800046c8:	05013a03          	ld	s4,80(sp)
    800046cc:	04813a83          	ld	s5,72(sp)
    800046d0:	04013b03          	ld	s6,64(sp)
    800046d4:	03813b83          	ld	s7,56(sp)
    800046d8:	03013c03          	ld	s8,48(sp)
    800046dc:	02813c83          	ld	s9,40(sp)
    800046e0:	08010113          	addi	sp,sp,128
    800046e4:	00008067          	ret
    800046e8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800046ec:	000a8513          	mv	a0,s5
    800046f0:	ffffe097          	auipc	ra,0xffffe
    800046f4:	e80080e7          	jalr	-384(ra) # 80002570 <_ZdlPv>
    800046f8:	00048513          	mv	a0,s1
    800046fc:	0000d097          	auipc	ra,0xd
    80004700:	9ac080e7          	jalr	-1620(ra) # 800110a8 <_Unwind_Resume>
    80004704:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004708:	00090513          	mv	a0,s2
    8000470c:	ffffe097          	auipc	ra,0xffffe
    80004710:	e64080e7          	jalr	-412(ra) # 80002570 <_ZdlPv>
    80004714:	00048513          	mv	a0,s1
    80004718:	0000d097          	auipc	ra,0xd
    8000471c:	990080e7          	jalr	-1648(ra) # 800110a8 <_Unwind_Resume>
    80004720:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004724:	000b8513          	mv	a0,s7
    80004728:	ffffe097          	auipc	ra,0xffffe
    8000472c:	e48080e7          	jalr	-440(ra) # 80002570 <_ZdlPv>
    80004730:	00048513          	mv	a0,s1
    80004734:	0000d097          	auipc	ra,0xd
    80004738:	974080e7          	jalr	-1676(ra) # 800110a8 <_Unwind_Resume>
    8000473c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004740:	00048513          	mv	a0,s1
    80004744:	ffffe097          	auipc	ra,0xffffe
    80004748:	e2c080e7          	jalr	-468(ra) # 80002570 <_ZdlPv>
    8000474c:	00090513          	mv	a0,s2
    80004750:	0000d097          	auipc	ra,0xd
    80004754:	958080e7          	jalr	-1704(ra) # 800110a8 <_Unwind_Resume>
    80004758:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000475c:	000c8513          	mv	a0,s9
    80004760:	ffffe097          	auipc	ra,0xffffe
    80004764:	e10080e7          	jalr	-496(ra) # 80002570 <_ZdlPv>
    80004768:	00048513          	mv	a0,s1
    8000476c:	0000d097          	auipc	ra,0xd
    80004770:	93c080e7          	jalr	-1732(ra) # 800110a8 <_Unwind_Resume>

0000000080004774 <_ZN8Consumer3runEv>:
    void run() override {
    80004774:	fd010113          	addi	sp,sp,-48
    80004778:	02113423          	sd	ra,40(sp)
    8000477c:	02813023          	sd	s0,32(sp)
    80004780:	00913c23          	sd	s1,24(sp)
    80004784:	01213823          	sd	s2,16(sp)
    80004788:	01313423          	sd	s3,8(sp)
    8000478c:	03010413          	addi	s0,sp,48
    80004790:	00050913          	mv	s2,a0
        int i = 0;
    80004794:	00000993          	li	s3,0
    80004798:	0100006f          	j	800047a8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000479c:	00a00513          	li	a0,10
    800047a0:	ffffe097          	auipc	ra,0xffffe
    800047a4:	100080e7          	jalr	256(ra) # 800028a0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800047a8:	0000b797          	auipc	a5,0xb
    800047ac:	7b07a783          	lw	a5,1968(a5) # 8000ff58 <_ZL9threadEnd>
    800047b0:	04079a63          	bnez	a5,80004804 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800047b4:	02093783          	ld	a5,32(s2)
    800047b8:	0087b503          	ld	a0,8(a5)
    800047bc:	00002097          	auipc	ra,0x2
    800047c0:	d8c080e7          	jalr	-628(ra) # 80006548 <_ZN9BufferCPP3getEv>
            i++;
    800047c4:	0019849b          	addiw	s1,s3,1
    800047c8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800047cc:	0ff57513          	andi	a0,a0,255
    800047d0:	ffffe097          	auipc	ra,0xffffe
    800047d4:	0d0080e7          	jalr	208(ra) # 800028a0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800047d8:	05000793          	li	a5,80
    800047dc:	02f4e4bb          	remw	s1,s1,a5
    800047e0:	fc0494e3          	bnez	s1,800047a8 <_ZN8Consumer3runEv+0x34>
    800047e4:	fb9ff06f          	j	8000479c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800047e8:	02093783          	ld	a5,32(s2)
    800047ec:	0087b503          	ld	a0,8(a5)
    800047f0:	00002097          	auipc	ra,0x2
    800047f4:	d58080e7          	jalr	-680(ra) # 80006548 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800047f8:	0ff57513          	andi	a0,a0,255
    800047fc:	ffffe097          	auipc	ra,0xffffe
    80004800:	0a4080e7          	jalr	164(ra) # 800028a0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004804:	02093783          	ld	a5,32(s2)
    80004808:	0087b503          	ld	a0,8(a5)
    8000480c:	00002097          	auipc	ra,0x2
    80004810:	dc8080e7          	jalr	-568(ra) # 800065d4 <_ZN9BufferCPP6getCntEv>
    80004814:	fca04ae3          	bgtz	a0,800047e8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004818:	02093783          	ld	a5,32(s2)
    8000481c:	0107b503          	ld	a0,16(a5)
    80004820:	ffffe097          	auipc	ra,0xffffe
    80004824:	02c080e7          	jalr	44(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    80004828:	02813083          	ld	ra,40(sp)
    8000482c:	02013403          	ld	s0,32(sp)
    80004830:	01813483          	ld	s1,24(sp)
    80004834:	01013903          	ld	s2,16(sp)
    80004838:	00813983          	ld	s3,8(sp)
    8000483c:	03010113          	addi	sp,sp,48
    80004840:	00008067          	ret

0000000080004844 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004844:	ff010113          	addi	sp,sp,-16
    80004848:	00113423          	sd	ra,8(sp)
    8000484c:	00813023          	sd	s0,0(sp)
    80004850:	01010413          	addi	s0,sp,16
    80004854:	0000b797          	auipc	a5,0xb
    80004858:	40c78793          	addi	a5,a5,1036 # 8000fc60 <_ZTV8Consumer+0x10>
    8000485c:	00f53023          	sd	a5,0(a0)
    80004860:	ffffe097          	auipc	ra,0xffffe
    80004864:	c3c080e7          	jalr	-964(ra) # 8000249c <_ZN6ThreadD1Ev>
    80004868:	00813083          	ld	ra,8(sp)
    8000486c:	00013403          	ld	s0,0(sp)
    80004870:	01010113          	addi	sp,sp,16
    80004874:	00008067          	ret

0000000080004878 <_ZN8ConsumerD0Ev>:
    80004878:	fe010113          	addi	sp,sp,-32
    8000487c:	00113c23          	sd	ra,24(sp)
    80004880:	00813823          	sd	s0,16(sp)
    80004884:	00913423          	sd	s1,8(sp)
    80004888:	02010413          	addi	s0,sp,32
    8000488c:	00050493          	mv	s1,a0
    80004890:	0000b797          	auipc	a5,0xb
    80004894:	3d078793          	addi	a5,a5,976 # 8000fc60 <_ZTV8Consumer+0x10>
    80004898:	00f53023          	sd	a5,0(a0)
    8000489c:	ffffe097          	auipc	ra,0xffffe
    800048a0:	c00080e7          	jalr	-1024(ra) # 8000249c <_ZN6ThreadD1Ev>
    800048a4:	00048513          	mv	a0,s1
    800048a8:	ffffe097          	auipc	ra,0xffffe
    800048ac:	cc8080e7          	jalr	-824(ra) # 80002570 <_ZdlPv>
    800048b0:	01813083          	ld	ra,24(sp)
    800048b4:	01013403          	ld	s0,16(sp)
    800048b8:	00813483          	ld	s1,8(sp)
    800048bc:	02010113          	addi	sp,sp,32
    800048c0:	00008067          	ret

00000000800048c4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800048c4:	ff010113          	addi	sp,sp,-16
    800048c8:	00113423          	sd	ra,8(sp)
    800048cc:	00813023          	sd	s0,0(sp)
    800048d0:	01010413          	addi	s0,sp,16
    800048d4:	0000b797          	auipc	a5,0xb
    800048d8:	33c78793          	addi	a5,a5,828 # 8000fc10 <_ZTV16ProducerKeyborad+0x10>
    800048dc:	00f53023          	sd	a5,0(a0)
    800048e0:	ffffe097          	auipc	ra,0xffffe
    800048e4:	bbc080e7          	jalr	-1092(ra) # 8000249c <_ZN6ThreadD1Ev>
    800048e8:	00813083          	ld	ra,8(sp)
    800048ec:	00013403          	ld	s0,0(sp)
    800048f0:	01010113          	addi	sp,sp,16
    800048f4:	00008067          	ret

00000000800048f8 <_ZN16ProducerKeyboradD0Ev>:
    800048f8:	fe010113          	addi	sp,sp,-32
    800048fc:	00113c23          	sd	ra,24(sp)
    80004900:	00813823          	sd	s0,16(sp)
    80004904:	00913423          	sd	s1,8(sp)
    80004908:	02010413          	addi	s0,sp,32
    8000490c:	00050493          	mv	s1,a0
    80004910:	0000b797          	auipc	a5,0xb
    80004914:	30078793          	addi	a5,a5,768 # 8000fc10 <_ZTV16ProducerKeyborad+0x10>
    80004918:	00f53023          	sd	a5,0(a0)
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	b80080e7          	jalr	-1152(ra) # 8000249c <_ZN6ThreadD1Ev>
    80004924:	00048513          	mv	a0,s1
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	c48080e7          	jalr	-952(ra) # 80002570 <_ZdlPv>
    80004930:	01813083          	ld	ra,24(sp)
    80004934:	01013403          	ld	s0,16(sp)
    80004938:	00813483          	ld	s1,8(sp)
    8000493c:	02010113          	addi	sp,sp,32
    80004940:	00008067          	ret

0000000080004944 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004944:	ff010113          	addi	sp,sp,-16
    80004948:	00113423          	sd	ra,8(sp)
    8000494c:	00813023          	sd	s0,0(sp)
    80004950:	01010413          	addi	s0,sp,16
    80004954:	0000b797          	auipc	a5,0xb
    80004958:	2e478793          	addi	a5,a5,740 # 8000fc38 <_ZTV8Producer+0x10>
    8000495c:	00f53023          	sd	a5,0(a0)
    80004960:	ffffe097          	auipc	ra,0xffffe
    80004964:	b3c080e7          	jalr	-1220(ra) # 8000249c <_ZN6ThreadD1Ev>
    80004968:	00813083          	ld	ra,8(sp)
    8000496c:	00013403          	ld	s0,0(sp)
    80004970:	01010113          	addi	sp,sp,16
    80004974:	00008067          	ret

0000000080004978 <_ZN8ProducerD0Ev>:
    80004978:	fe010113          	addi	sp,sp,-32
    8000497c:	00113c23          	sd	ra,24(sp)
    80004980:	00813823          	sd	s0,16(sp)
    80004984:	00913423          	sd	s1,8(sp)
    80004988:	02010413          	addi	s0,sp,32
    8000498c:	00050493          	mv	s1,a0
    80004990:	0000b797          	auipc	a5,0xb
    80004994:	2a878793          	addi	a5,a5,680 # 8000fc38 <_ZTV8Producer+0x10>
    80004998:	00f53023          	sd	a5,0(a0)
    8000499c:	ffffe097          	auipc	ra,0xffffe
    800049a0:	b00080e7          	jalr	-1280(ra) # 8000249c <_ZN6ThreadD1Ev>
    800049a4:	00048513          	mv	a0,s1
    800049a8:	ffffe097          	auipc	ra,0xffffe
    800049ac:	bc8080e7          	jalr	-1080(ra) # 80002570 <_ZdlPv>
    800049b0:	01813083          	ld	ra,24(sp)
    800049b4:	01013403          	ld	s0,16(sp)
    800049b8:	00813483          	ld	s1,8(sp)
    800049bc:	02010113          	addi	sp,sp,32
    800049c0:	00008067          	ret

00000000800049c4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800049c4:	fe010113          	addi	sp,sp,-32
    800049c8:	00113c23          	sd	ra,24(sp)
    800049cc:	00813823          	sd	s0,16(sp)
    800049d0:	00913423          	sd	s1,8(sp)
    800049d4:	02010413          	addi	s0,sp,32
    800049d8:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800049dc:	ffffd097          	auipc	ra,0xffffd
    800049e0:	d0c080e7          	jalr	-756(ra) # 800016e8 <_Z4getcv>
    800049e4:	0005059b          	sext.w	a1,a0
    800049e8:	01b00793          	li	a5,27
    800049ec:	00f58c63          	beq	a1,a5,80004a04 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800049f0:	0204b783          	ld	a5,32(s1)
    800049f4:	0087b503          	ld	a0,8(a5)
    800049f8:	00002097          	auipc	ra,0x2
    800049fc:	ac0080e7          	jalr	-1344(ra) # 800064b8 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004a00:	fddff06f          	j	800049dc <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004a04:	00100793          	li	a5,1
    80004a08:	0000b717          	auipc	a4,0xb
    80004a0c:	54f72823          	sw	a5,1360(a4) # 8000ff58 <_ZL9threadEnd>
        td->buffer->put('!');
    80004a10:	0204b783          	ld	a5,32(s1)
    80004a14:	02100593          	li	a1,33
    80004a18:	0087b503          	ld	a0,8(a5)
    80004a1c:	00002097          	auipc	ra,0x2
    80004a20:	a9c080e7          	jalr	-1380(ra) # 800064b8 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004a24:	0204b783          	ld	a5,32(s1)
    80004a28:	0107b503          	ld	a0,16(a5)
    80004a2c:	ffffe097          	auipc	ra,0xffffe
    80004a30:	e20080e7          	jalr	-480(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    80004a34:	01813083          	ld	ra,24(sp)
    80004a38:	01013403          	ld	s0,16(sp)
    80004a3c:	00813483          	ld	s1,8(sp)
    80004a40:	02010113          	addi	sp,sp,32
    80004a44:	00008067          	ret

0000000080004a48 <_ZN8Producer3runEv>:
    void run() override {
    80004a48:	fe010113          	addi	sp,sp,-32
    80004a4c:	00113c23          	sd	ra,24(sp)
    80004a50:	00813823          	sd	s0,16(sp)
    80004a54:	00913423          	sd	s1,8(sp)
    80004a58:	01213023          	sd	s2,0(sp)
    80004a5c:	02010413          	addi	s0,sp,32
    80004a60:	00050493          	mv	s1,a0
        int i = 0;
    80004a64:	00000913          	li	s2,0
        while (!threadEnd) {
    80004a68:	0000b797          	auipc	a5,0xb
    80004a6c:	4f07a783          	lw	a5,1264(a5) # 8000ff58 <_ZL9threadEnd>
    80004a70:	04079263          	bnez	a5,80004ab4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80004a74:	0204b783          	ld	a5,32(s1)
    80004a78:	0007a583          	lw	a1,0(a5)
    80004a7c:	0305859b          	addiw	a1,a1,48
    80004a80:	0087b503          	ld	a0,8(a5)
    80004a84:	00002097          	auipc	ra,0x2
    80004a88:	a34080e7          	jalr	-1484(ra) # 800064b8 <_ZN9BufferCPP3putEi>
            i++;
    80004a8c:	0019071b          	addiw	a4,s2,1
    80004a90:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80004a94:	0204b783          	ld	a5,32(s1)
    80004a98:	0007a783          	lw	a5,0(a5)
    80004a9c:	00e787bb          	addw	a5,a5,a4
    80004aa0:	00500513          	li	a0,5
    80004aa4:	02a7e53b          	remw	a0,a5,a0
    80004aa8:	ffffe097          	auipc	ra,0xffffe
    80004aac:	c6c080e7          	jalr	-916(ra) # 80002714 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004ab0:	fb9ff06f          	j	80004a68 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80004ab4:	0204b783          	ld	a5,32(s1)
    80004ab8:	0107b503          	ld	a0,16(a5)
    80004abc:	ffffe097          	auipc	ra,0xffffe
    80004ac0:	d90080e7          	jalr	-624(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    80004ac4:	01813083          	ld	ra,24(sp)
    80004ac8:	01013403          	ld	s0,16(sp)
    80004acc:	00813483          	ld	s1,8(sp)
    80004ad0:	00013903          	ld	s2,0(sp)
    80004ad4:	02010113          	addi	sp,sp,32
    80004ad8:	00008067          	ret

0000000080004adc <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004adc:	fe010113          	addi	sp,sp,-32
    80004ae0:	00113c23          	sd	ra,24(sp)
    80004ae4:	00813823          	sd	s0,16(sp)
    80004ae8:	00913423          	sd	s1,8(sp)
    80004aec:	01213023          	sd	s2,0(sp)
    80004af0:	02010413          	addi	s0,sp,32
    80004af4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004af8:	00100793          	li	a5,1
    80004afc:	02a7f863          	bgeu	a5,a0,80004b2c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004b00:	00a00793          	li	a5,10
    80004b04:	02f577b3          	remu	a5,a0,a5
    80004b08:	02078e63          	beqz	a5,80004b44 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004b0c:	fff48513          	addi	a0,s1,-1
    80004b10:	00000097          	auipc	ra,0x0
    80004b14:	fcc080e7          	jalr	-52(ra) # 80004adc <_ZL9fibonaccim>
    80004b18:	00050913          	mv	s2,a0
    80004b1c:	ffe48513          	addi	a0,s1,-2
    80004b20:	00000097          	auipc	ra,0x0
    80004b24:	fbc080e7          	jalr	-68(ra) # 80004adc <_ZL9fibonaccim>
    80004b28:	00a90533          	add	a0,s2,a0
}
    80004b2c:	01813083          	ld	ra,24(sp)
    80004b30:	01013403          	ld	s0,16(sp)
    80004b34:	00813483          	ld	s1,8(sp)
    80004b38:	00013903          	ld	s2,0(sp)
    80004b3c:	02010113          	addi	sp,sp,32
    80004b40:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004b44:	ffffd097          	auipc	ra,0xffffd
    80004b48:	934080e7          	jalr	-1740(ra) # 80001478 <_Z15thread_dispatchv>
    80004b4c:	fc1ff06f          	j	80004b0c <_ZL9fibonaccim+0x30>

0000000080004b50 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004b50:	fe010113          	addi	sp,sp,-32
    80004b54:	00113c23          	sd	ra,24(sp)
    80004b58:	00813823          	sd	s0,16(sp)
    80004b5c:	00913423          	sd	s1,8(sp)
    80004b60:	01213023          	sd	s2,0(sp)
    80004b64:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004b68:	00a00493          	li	s1,10
    80004b6c:	0400006f          	j	80004bac <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004b70:	00007517          	auipc	a0,0x7
    80004b74:	72850513          	addi	a0,a0,1832 # 8000c298 <CONSOLE_STATUS+0x288>
    80004b78:	00001097          	auipc	ra,0x1
    80004b7c:	51c080e7          	jalr	1308(ra) # 80006094 <_Z11printStringPKc>
    80004b80:	00000613          	li	a2,0
    80004b84:	00a00593          	li	a1,10
    80004b88:	00048513          	mv	a0,s1
    80004b8c:	00001097          	auipc	ra,0x1
    80004b90:	6b8080e7          	jalr	1720(ra) # 80006244 <_Z8printIntiii>
    80004b94:	00008517          	auipc	a0,0x8
    80004b98:	b5450513          	addi	a0,a0,-1196 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004b9c:	00001097          	auipc	ra,0x1
    80004ba0:	4f8080e7          	jalr	1272(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004ba4:	0014849b          	addiw	s1,s1,1
    80004ba8:	0ff4f493          	andi	s1,s1,255
    80004bac:	00c00793          	li	a5,12
    80004bb0:	fc97f0e3          	bgeu	a5,s1,80004b70 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004bb4:	00007517          	auipc	a0,0x7
    80004bb8:	6ec50513          	addi	a0,a0,1772 # 8000c2a0 <CONSOLE_STATUS+0x290>
    80004bbc:	00001097          	auipc	ra,0x1
    80004bc0:	4d8080e7          	jalr	1240(ra) # 80006094 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004bc4:	00500313          	li	t1,5
    thread_dispatch();
    80004bc8:	ffffd097          	auipc	ra,0xffffd
    80004bcc:	8b0080e7          	jalr	-1872(ra) # 80001478 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004bd0:	01000513          	li	a0,16
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	f08080e7          	jalr	-248(ra) # 80004adc <_ZL9fibonaccim>
    80004bdc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004be0:	00007517          	auipc	a0,0x7
    80004be4:	6d050513          	addi	a0,a0,1744 # 8000c2b0 <CONSOLE_STATUS+0x2a0>
    80004be8:	00001097          	auipc	ra,0x1
    80004bec:	4ac080e7          	jalr	1196(ra) # 80006094 <_Z11printStringPKc>
    80004bf0:	00000613          	li	a2,0
    80004bf4:	00a00593          	li	a1,10
    80004bf8:	0009051b          	sext.w	a0,s2
    80004bfc:	00001097          	auipc	ra,0x1
    80004c00:	648080e7          	jalr	1608(ra) # 80006244 <_Z8printIntiii>
    80004c04:	00008517          	auipc	a0,0x8
    80004c08:	ae450513          	addi	a0,a0,-1308 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	488080e7          	jalr	1160(ra) # 80006094 <_Z11printStringPKc>
    80004c14:	0400006f          	j	80004c54 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004c18:	00007517          	auipc	a0,0x7
    80004c1c:	68050513          	addi	a0,a0,1664 # 8000c298 <CONSOLE_STATUS+0x288>
    80004c20:	00001097          	auipc	ra,0x1
    80004c24:	474080e7          	jalr	1140(ra) # 80006094 <_Z11printStringPKc>
    80004c28:	00000613          	li	a2,0
    80004c2c:	00a00593          	li	a1,10
    80004c30:	00048513          	mv	a0,s1
    80004c34:	00001097          	auipc	ra,0x1
    80004c38:	610080e7          	jalr	1552(ra) # 80006244 <_Z8printIntiii>
    80004c3c:	00008517          	auipc	a0,0x8
    80004c40:	aac50513          	addi	a0,a0,-1364 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004c44:	00001097          	auipc	ra,0x1
    80004c48:	450080e7          	jalr	1104(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004c4c:	0014849b          	addiw	s1,s1,1
    80004c50:	0ff4f493          	andi	s1,s1,255
    80004c54:	00f00793          	li	a5,15
    80004c58:	fc97f0e3          	bgeu	a5,s1,80004c18 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004c5c:	00007517          	auipc	a0,0x7
    80004c60:	66450513          	addi	a0,a0,1636 # 8000c2c0 <CONSOLE_STATUS+0x2b0>
    80004c64:	00001097          	auipc	ra,0x1
    80004c68:	430080e7          	jalr	1072(ra) # 80006094 <_Z11printStringPKc>
    finishedD = true;
    80004c6c:	00100793          	li	a5,1
    80004c70:	0000b717          	auipc	a4,0xb
    80004c74:	2ef70c23          	sb	a5,760(a4) # 8000ff68 <_ZL9finishedD>
    thread_dispatch();
    80004c78:	ffffd097          	auipc	ra,0xffffd
    80004c7c:	800080e7          	jalr	-2048(ra) # 80001478 <_Z15thread_dispatchv>
}
    80004c80:	01813083          	ld	ra,24(sp)
    80004c84:	01013403          	ld	s0,16(sp)
    80004c88:	00813483          	ld	s1,8(sp)
    80004c8c:	00013903          	ld	s2,0(sp)
    80004c90:	02010113          	addi	sp,sp,32
    80004c94:	00008067          	ret

0000000080004c98 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004c98:	fe010113          	addi	sp,sp,-32
    80004c9c:	00113c23          	sd	ra,24(sp)
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	01213023          	sd	s2,0(sp)
    80004cac:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004cb0:	00000493          	li	s1,0
    80004cb4:	0400006f          	j	80004cf4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004cb8:	00007517          	auipc	a0,0x7
    80004cbc:	5b050513          	addi	a0,a0,1456 # 8000c268 <CONSOLE_STATUS+0x258>
    80004cc0:	00001097          	auipc	ra,0x1
    80004cc4:	3d4080e7          	jalr	980(ra) # 80006094 <_Z11printStringPKc>
    80004cc8:	00000613          	li	a2,0
    80004ccc:	00a00593          	li	a1,10
    80004cd0:	00048513          	mv	a0,s1
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	570080e7          	jalr	1392(ra) # 80006244 <_Z8printIntiii>
    80004cdc:	00008517          	auipc	a0,0x8
    80004ce0:	a0c50513          	addi	a0,a0,-1524 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004ce4:	00001097          	auipc	ra,0x1
    80004ce8:	3b0080e7          	jalr	944(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004cec:	0014849b          	addiw	s1,s1,1
    80004cf0:	0ff4f493          	andi	s1,s1,255
    80004cf4:	00200793          	li	a5,2
    80004cf8:	fc97f0e3          	bgeu	a5,s1,80004cb8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004cfc:	00007517          	auipc	a0,0x7
    80004d00:	57450513          	addi	a0,a0,1396 # 8000c270 <CONSOLE_STATUS+0x260>
    80004d04:	00001097          	auipc	ra,0x1
    80004d08:	390080e7          	jalr	912(ra) # 80006094 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004d0c:	00700313          	li	t1,7
    thread_dispatch();
    80004d10:	ffffc097          	auipc	ra,0xffffc
    80004d14:	768080e7          	jalr	1896(ra) # 80001478 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004d18:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004d1c:	00007517          	auipc	a0,0x7
    80004d20:	56450513          	addi	a0,a0,1380 # 8000c280 <CONSOLE_STATUS+0x270>
    80004d24:	00001097          	auipc	ra,0x1
    80004d28:	370080e7          	jalr	880(ra) # 80006094 <_Z11printStringPKc>
    80004d2c:	00000613          	li	a2,0
    80004d30:	00a00593          	li	a1,10
    80004d34:	0009051b          	sext.w	a0,s2
    80004d38:	00001097          	auipc	ra,0x1
    80004d3c:	50c080e7          	jalr	1292(ra) # 80006244 <_Z8printIntiii>
    80004d40:	00008517          	auipc	a0,0x8
    80004d44:	9a850513          	addi	a0,a0,-1624 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004d48:	00001097          	auipc	ra,0x1
    80004d4c:	34c080e7          	jalr	844(ra) # 80006094 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004d50:	00c00513          	li	a0,12
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	d88080e7          	jalr	-632(ra) # 80004adc <_ZL9fibonaccim>
    80004d5c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004d60:	00007517          	auipc	a0,0x7
    80004d64:	52850513          	addi	a0,a0,1320 # 8000c288 <CONSOLE_STATUS+0x278>
    80004d68:	00001097          	auipc	ra,0x1
    80004d6c:	32c080e7          	jalr	812(ra) # 80006094 <_Z11printStringPKc>
    80004d70:	00000613          	li	a2,0
    80004d74:	00a00593          	li	a1,10
    80004d78:	0009051b          	sext.w	a0,s2
    80004d7c:	00001097          	auipc	ra,0x1
    80004d80:	4c8080e7          	jalr	1224(ra) # 80006244 <_Z8printIntiii>
    80004d84:	00008517          	auipc	a0,0x8
    80004d88:	96450513          	addi	a0,a0,-1692 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	308080e7          	jalr	776(ra) # 80006094 <_Z11printStringPKc>
    80004d94:	0400006f          	j	80004dd4 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004d98:	00007517          	auipc	a0,0x7
    80004d9c:	4d050513          	addi	a0,a0,1232 # 8000c268 <CONSOLE_STATUS+0x258>
    80004da0:	00001097          	auipc	ra,0x1
    80004da4:	2f4080e7          	jalr	756(ra) # 80006094 <_Z11printStringPKc>
    80004da8:	00000613          	li	a2,0
    80004dac:	00a00593          	li	a1,10
    80004db0:	00048513          	mv	a0,s1
    80004db4:	00001097          	auipc	ra,0x1
    80004db8:	490080e7          	jalr	1168(ra) # 80006244 <_Z8printIntiii>
    80004dbc:	00008517          	auipc	a0,0x8
    80004dc0:	92c50513          	addi	a0,a0,-1748 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004dc4:	00001097          	auipc	ra,0x1
    80004dc8:	2d0080e7          	jalr	720(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004dcc:	0014849b          	addiw	s1,s1,1
    80004dd0:	0ff4f493          	andi	s1,s1,255
    80004dd4:	00500793          	li	a5,5
    80004dd8:	fc97f0e3          	bgeu	a5,s1,80004d98 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004ddc:	00007517          	auipc	a0,0x7
    80004de0:	46450513          	addi	a0,a0,1124 # 8000c240 <CONSOLE_STATUS+0x230>
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	2b0080e7          	jalr	688(ra) # 80006094 <_Z11printStringPKc>
    finishedC = true;
    80004dec:	00100793          	li	a5,1
    80004df0:	0000b717          	auipc	a4,0xb
    80004df4:	16f70ca3          	sb	a5,377(a4) # 8000ff69 <_ZL9finishedC>
    thread_dispatch();
    80004df8:	ffffc097          	auipc	ra,0xffffc
    80004dfc:	680080e7          	jalr	1664(ra) # 80001478 <_Z15thread_dispatchv>
}
    80004e00:	01813083          	ld	ra,24(sp)
    80004e04:	01013403          	ld	s0,16(sp)
    80004e08:	00813483          	ld	s1,8(sp)
    80004e0c:	00013903          	ld	s2,0(sp)
    80004e10:	02010113          	addi	sp,sp,32
    80004e14:	00008067          	ret

0000000080004e18 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004e18:	fe010113          	addi	sp,sp,-32
    80004e1c:	00113c23          	sd	ra,24(sp)
    80004e20:	00813823          	sd	s0,16(sp)
    80004e24:	00913423          	sd	s1,8(sp)
    80004e28:	01213023          	sd	s2,0(sp)
    80004e2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004e30:	00000913          	li	s2,0
    80004e34:	0380006f          	j	80004e6c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004e38:	ffffc097          	auipc	ra,0xffffc
    80004e3c:	640080e7          	jalr	1600(ra) # 80001478 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004e40:	00148493          	addi	s1,s1,1
    80004e44:	000027b7          	lui	a5,0x2
    80004e48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004e4c:	0097ee63          	bltu	a5,s1,80004e68 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004e50:	00000713          	li	a4,0
    80004e54:	000077b7          	lui	a5,0x7
    80004e58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004e5c:	fce7eee3          	bltu	a5,a4,80004e38 <_ZL11workerBodyBPv+0x20>
    80004e60:	00170713          	addi	a4,a4,1
    80004e64:	ff1ff06f          	j	80004e54 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004e68:	00190913          	addi	s2,s2,1
    80004e6c:	00f00793          	li	a5,15
    80004e70:	0527e063          	bltu	a5,s2,80004eb0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004e74:	00007517          	auipc	a0,0x7
    80004e78:	3dc50513          	addi	a0,a0,988 # 8000c250 <CONSOLE_STATUS+0x240>
    80004e7c:	00001097          	auipc	ra,0x1
    80004e80:	218080e7          	jalr	536(ra) # 80006094 <_Z11printStringPKc>
    80004e84:	00000613          	li	a2,0
    80004e88:	00a00593          	li	a1,10
    80004e8c:	0009051b          	sext.w	a0,s2
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	3b4080e7          	jalr	948(ra) # 80006244 <_Z8printIntiii>
    80004e98:	00008517          	auipc	a0,0x8
    80004e9c:	85050513          	addi	a0,a0,-1968 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004ea0:	00001097          	auipc	ra,0x1
    80004ea4:	1f4080e7          	jalr	500(ra) # 80006094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ea8:	00000493          	li	s1,0
    80004eac:	f99ff06f          	j	80004e44 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004eb0:	00007517          	auipc	a0,0x7
    80004eb4:	3a850513          	addi	a0,a0,936 # 8000c258 <CONSOLE_STATUS+0x248>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	1dc080e7          	jalr	476(ra) # 80006094 <_Z11printStringPKc>
    finishedB = true;
    80004ec0:	00100793          	li	a5,1
    80004ec4:	0000b717          	auipc	a4,0xb
    80004ec8:	0af70323          	sb	a5,166(a4) # 8000ff6a <_ZL9finishedB>
    thread_dispatch();
    80004ecc:	ffffc097          	auipc	ra,0xffffc
    80004ed0:	5ac080e7          	jalr	1452(ra) # 80001478 <_Z15thread_dispatchv>
}
    80004ed4:	01813083          	ld	ra,24(sp)
    80004ed8:	01013403          	ld	s0,16(sp)
    80004edc:	00813483          	ld	s1,8(sp)
    80004ee0:	00013903          	ld	s2,0(sp)
    80004ee4:	02010113          	addi	sp,sp,32
    80004ee8:	00008067          	ret

0000000080004eec <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004eec:	fe010113          	addi	sp,sp,-32
    80004ef0:	00113c23          	sd	ra,24(sp)
    80004ef4:	00813823          	sd	s0,16(sp)
    80004ef8:	00913423          	sd	s1,8(sp)
    80004efc:	01213023          	sd	s2,0(sp)
    80004f00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004f04:	00000913          	li	s2,0
    80004f08:	0380006f          	j	80004f40 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004f0c:	ffffc097          	auipc	ra,0xffffc
    80004f10:	56c080e7          	jalr	1388(ra) # 80001478 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004f14:	00148493          	addi	s1,s1,1
    80004f18:	000027b7          	lui	a5,0x2
    80004f1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004f20:	0097ee63          	bltu	a5,s1,80004f3c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004f24:	00000713          	li	a4,0
    80004f28:	000077b7          	lui	a5,0x7
    80004f2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004f30:	fce7eee3          	bltu	a5,a4,80004f0c <_ZL11workerBodyAPv+0x20>
    80004f34:	00170713          	addi	a4,a4,1
    80004f38:	ff1ff06f          	j	80004f28 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004f3c:	00190913          	addi	s2,s2,1
    80004f40:	00900793          	li	a5,9
    80004f44:	0527e063          	bltu	a5,s2,80004f84 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004f48:	00007517          	auipc	a0,0x7
    80004f4c:	2f050513          	addi	a0,a0,752 # 8000c238 <CONSOLE_STATUS+0x228>
    80004f50:	00001097          	auipc	ra,0x1
    80004f54:	144080e7          	jalr	324(ra) # 80006094 <_Z11printStringPKc>
    80004f58:	00000613          	li	a2,0
    80004f5c:	00a00593          	li	a1,10
    80004f60:	0009051b          	sext.w	a0,s2
    80004f64:	00001097          	auipc	ra,0x1
    80004f68:	2e0080e7          	jalr	736(ra) # 80006244 <_Z8printIntiii>
    80004f6c:	00007517          	auipc	a0,0x7
    80004f70:	77c50513          	addi	a0,a0,1916 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80004f74:	00001097          	auipc	ra,0x1
    80004f78:	120080e7          	jalr	288(ra) # 80006094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004f7c:	00000493          	li	s1,0
    80004f80:	f99ff06f          	j	80004f18 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004f84:	00007517          	auipc	a0,0x7
    80004f88:	2bc50513          	addi	a0,a0,700 # 8000c240 <CONSOLE_STATUS+0x230>
    80004f8c:	00001097          	auipc	ra,0x1
    80004f90:	108080e7          	jalr	264(ra) # 80006094 <_Z11printStringPKc>
    finishedA = true;
    80004f94:	00100793          	li	a5,1
    80004f98:	0000b717          	auipc	a4,0xb
    80004f9c:	fcf709a3          	sb	a5,-45(a4) # 8000ff6b <_ZL9finishedA>
}
    80004fa0:	01813083          	ld	ra,24(sp)
    80004fa4:	01013403          	ld	s0,16(sp)
    80004fa8:	00813483          	ld	s1,8(sp)
    80004fac:	00013903          	ld	s2,0(sp)
    80004fb0:	02010113          	addi	sp,sp,32
    80004fb4:	00008067          	ret

0000000080004fb8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004fb8:	fd010113          	addi	sp,sp,-48
    80004fbc:	02113423          	sd	ra,40(sp)
    80004fc0:	02813023          	sd	s0,32(sp)
    80004fc4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004fc8:	00000613          	li	a2,0
    80004fcc:	00000597          	auipc	a1,0x0
    80004fd0:	f2058593          	addi	a1,a1,-224 # 80004eec <_ZL11workerBodyAPv>
    80004fd4:	fd040513          	addi	a0,s0,-48
    80004fd8:	ffffc097          	auipc	ra,0xffffc
    80004fdc:	3f4080e7          	jalr	1012(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004fe0:	00007517          	auipc	a0,0x7
    80004fe4:	2f050513          	addi	a0,a0,752 # 8000c2d0 <CONSOLE_STATUS+0x2c0>
    80004fe8:	00001097          	auipc	ra,0x1
    80004fec:	0ac080e7          	jalr	172(ra) # 80006094 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004ff0:	00000613          	li	a2,0
    80004ff4:	00000597          	auipc	a1,0x0
    80004ff8:	e2458593          	addi	a1,a1,-476 # 80004e18 <_ZL11workerBodyBPv>
    80004ffc:	fd840513          	addi	a0,s0,-40
    80005000:	ffffc097          	auipc	ra,0xffffc
    80005004:	3cc080e7          	jalr	972(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005008:	00007517          	auipc	a0,0x7
    8000500c:	2e050513          	addi	a0,a0,736 # 8000c2e8 <CONSOLE_STATUS+0x2d8>
    80005010:	00001097          	auipc	ra,0x1
    80005014:	084080e7          	jalr	132(ra) # 80006094 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005018:	00000613          	li	a2,0
    8000501c:	00000597          	auipc	a1,0x0
    80005020:	c7c58593          	addi	a1,a1,-900 # 80004c98 <_ZL11workerBodyCPv>
    80005024:	fe040513          	addi	a0,s0,-32
    80005028:	ffffc097          	auipc	ra,0xffffc
    8000502c:	3a4080e7          	jalr	932(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005030:	00007517          	auipc	a0,0x7
    80005034:	2d050513          	addi	a0,a0,720 # 8000c300 <CONSOLE_STATUS+0x2f0>
    80005038:	00001097          	auipc	ra,0x1
    8000503c:	05c080e7          	jalr	92(ra) # 80006094 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005040:	00000613          	li	a2,0
    80005044:	00000597          	auipc	a1,0x0
    80005048:	b0c58593          	addi	a1,a1,-1268 # 80004b50 <_ZL11workerBodyDPv>
    8000504c:	fe840513          	addi	a0,s0,-24
    80005050:	ffffc097          	auipc	ra,0xffffc
    80005054:	37c080e7          	jalr	892(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005058:	00007517          	auipc	a0,0x7
    8000505c:	2c050513          	addi	a0,a0,704 # 8000c318 <CONSOLE_STATUS+0x308>
    80005060:	00001097          	auipc	ra,0x1
    80005064:	034080e7          	jalr	52(ra) # 80006094 <_Z11printStringPKc>
    80005068:	00c0006f          	j	80005074 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000506c:	ffffc097          	auipc	ra,0xffffc
    80005070:	40c080e7          	jalr	1036(ra) # 80001478 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005074:	0000b797          	auipc	a5,0xb
    80005078:	ef77c783          	lbu	a5,-265(a5) # 8000ff6b <_ZL9finishedA>
    8000507c:	fe0788e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    80005080:	0000b797          	auipc	a5,0xb
    80005084:	eea7c783          	lbu	a5,-278(a5) # 8000ff6a <_ZL9finishedB>
    80005088:	fe0782e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    8000508c:	0000b797          	auipc	a5,0xb
    80005090:	edd7c783          	lbu	a5,-291(a5) # 8000ff69 <_ZL9finishedC>
    80005094:	fc078ce3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    80005098:	0000b797          	auipc	a5,0xb
    8000509c:	ed07c783          	lbu	a5,-304(a5) # 8000ff68 <_ZL9finishedD>
    800050a0:	fc0786e3          	beqz	a5,8000506c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800050a4:	02813083          	ld	ra,40(sp)
    800050a8:	02013403          	ld	s0,32(sp)
    800050ac:	03010113          	addi	sp,sp,48
    800050b0:	00008067          	ret

00000000800050b4 <_Z18threadSuspendChainv>:
    }
    Thread *a;
    Semaphore *sem;
};

void threadSuspendChain() {
    800050b4:	fc010113          	addi	sp,sp,-64
    800050b8:	02113c23          	sd	ra,56(sp)
    800050bc:	02813823          	sd	s0,48(sp)
    800050c0:	02913423          	sd	s1,40(sp)
    800050c4:	03213023          	sd	s2,32(sp)
    800050c8:	01313c23          	sd	s3,24(sp)
    800050cc:	01413823          	sd	s4,16(sp)
    800050d0:	01513423          	sd	s5,8(sp)
    800050d4:	04010413          	addi	s0,sp,64
    Semaphore *sem = new Semaphore(0);
    800050d8:	01000513          	li	a0,16
    800050dc:	ffffd097          	auipc	ra,0xffffd
    800050e0:	444080e7          	jalr	1092(ra) # 80002520 <_Znwm>
    800050e4:	00050913          	mv	s2,a0
    800050e8:	00000593          	li	a1,0
    800050ec:	ffffd097          	auipc	ra,0xffffd
    800050f0:	6fc080e7          	jalr	1788(ra) # 800027e8 <_ZN9SemaphoreC1Ej>

    ThreadC *c = new ThreadC(sem);
    800050f4:	02800513          	li	a0,40
    800050f8:	ffffd097          	auipc	ra,0xffffd
    800050fc:	428080e7          	jalr	1064(ra) # 80002520 <_Znwm>
    80005100:	00050a93          	mv	s5,a0
    ThreadC(Semaphore *sem) : Thread(), sem(sem) {}
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	5e0080e7          	jalr	1504(ra) # 800026e4 <_ZN6ThreadC1Ev>
    8000510c:	0000b797          	auipc	a5,0xb
    80005110:	b7c78793          	addi	a5,a5,-1156 # 8000fc88 <_ZTV7ThreadC+0x10>
    80005114:	00fab023          	sd	a5,0(s5)
    80005118:	032ab023          	sd	s2,32(s5)
    ThreadA *a = new ThreadA(c, sem);
    8000511c:	03000513          	li	a0,48
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	400080e7          	jalr	1024(ra) # 80002520 <_Znwm>
    80005128:	00050493          	mv	s1,a0
    ThreadA(Thread *c, Semaphore *sem) : Thread(), c(c), sem(sem) {}
    8000512c:	ffffd097          	auipc	ra,0xffffd
    80005130:	5b8080e7          	jalr	1464(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80005134:	0000b797          	auipc	a5,0xb
    80005138:	b7c78793          	addi	a5,a5,-1156 # 8000fcb0 <_ZTV7ThreadA+0x10>
    8000513c:	00f4b023          	sd	a5,0(s1)
    80005140:	0354b023          	sd	s5,32(s1)
    80005144:	0324b423          	sd	s2,40(s1)
    ThreadB *b = new ThreadB(a, sem);
    80005148:	03000513          	li	a0,48
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	3d4080e7          	jalr	980(ra) # 80002520 <_Znwm>
    80005154:	00050a13          	mv	s4,a0
    ThreadB(Thread *a, Semaphore *sem) : Thread(), a(a), sem(sem) {}
    80005158:	ffffd097          	auipc	ra,0xffffd
    8000515c:	58c080e7          	jalr	1420(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80005160:	0000b797          	auipc	a5,0xb
    80005164:	b7878793          	addi	a5,a5,-1160 # 8000fcd8 <_ZTV7ThreadB+0x10>
    80005168:	00fa3023          	sd	a5,0(s4)
    8000516c:	029a3023          	sd	s1,32(s4)
    80005170:	032a3423          	sd	s2,40(s4)
    ThreadD *d = new ThreadD(a, sem);
    80005174:	03000513          	li	a0,48
    80005178:	ffffd097          	auipc	ra,0xffffd
    8000517c:	3a8080e7          	jalr	936(ra) # 80002520 <_Znwm>
    80005180:	00050993          	mv	s3,a0
    ThreadD(Thread *a, Semaphore *sem) : Thread(), a(a), sem(sem) {}
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	560080e7          	jalr	1376(ra) # 800026e4 <_ZN6ThreadC1Ev>
    8000518c:	0000b797          	auipc	a5,0xb
    80005190:	b7478793          	addi	a5,a5,-1164 # 8000fd00 <_ZTV7ThreadD+0x10>
    80005194:	00f9b023          	sd	a5,0(s3)
    80005198:	0299b023          	sd	s1,32(s3)
    8000519c:	0329b423          	sd	s2,40(s3)

    a->start();
    800051a0:	00048513          	mv	a0,s1
    800051a4:	ffffd097          	auipc	ra,0xffffd
    800051a8:	4b4080e7          	jalr	1204(ra) # 80002658 <_ZN6Thread5startEv>
    b->start();
    800051ac:	000a0513          	mv	a0,s4
    800051b0:	ffffd097          	auipc	ra,0xffffd
    800051b4:	4a8080e7          	jalr	1192(ra) # 80002658 <_ZN6Thread5startEv>
    c->start();
    800051b8:	000a8513          	mv	a0,s5
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	49c080e7          	jalr	1180(ra) # 80002658 <_ZN6Thread5startEv>
    d->start();
    800051c4:	00098513          	mv	a0,s3
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	490080e7          	jalr	1168(ra) # 80002658 <_ZN6Thread5startEv>

    for (int i = 0; i < 4; i++) sem->wait();
    800051d0:	00000493          	li	s1,0
    800051d4:	0140006f          	j	800051e8 <_Z18threadSuspendChainv+0x134>
    800051d8:	00090513          	mv	a0,s2
    800051dc:	ffffd097          	auipc	ra,0xffffd
    800051e0:	644080e7          	jalr	1604(ra) # 80002820 <_ZN9Semaphore4waitEv>
    800051e4:	0014849b          	addiw	s1,s1,1
    800051e8:	00300793          	li	a5,3
    800051ec:	fe97d6e3          	bge	a5,s1,800051d8 <_Z18threadSuspendChainv+0x124>
    printString("MAIN: kraj testa\n");
    800051f0:	00007517          	auipc	a0,0x7
    800051f4:	26850513          	addi	a0,a0,616 # 8000c458 <CONSOLE_STATUS+0x448>
    800051f8:	00001097          	auipc	ra,0x1
    800051fc:	e9c080e7          	jalr	-356(ra) # 80006094 <_Z11printStringPKc>
    80005200:	03813083          	ld	ra,56(sp)
    80005204:	03013403          	ld	s0,48(sp)
    80005208:	02813483          	ld	s1,40(sp)
    8000520c:	02013903          	ld	s2,32(sp)
    80005210:	01813983          	ld	s3,24(sp)
    80005214:	01013a03          	ld	s4,16(sp)
    80005218:	00813a83          	ld	s5,8(sp)
    8000521c:	04010113          	addi	sp,sp,64
    80005220:	00008067          	ret
    80005224:	00050493          	mv	s1,a0
    Semaphore *sem = new Semaphore(0);
    80005228:	00090513          	mv	a0,s2
    8000522c:	ffffd097          	auipc	ra,0xffffd
    80005230:	344080e7          	jalr	836(ra) # 80002570 <_ZdlPv>
    80005234:	00048513          	mv	a0,s1
    80005238:	0000c097          	auipc	ra,0xc
    8000523c:	e70080e7          	jalr	-400(ra) # 800110a8 <_Unwind_Resume>
    80005240:	00050493          	mv	s1,a0
    ThreadC *c = new ThreadC(sem);
    80005244:	000a8513          	mv	a0,s5
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	328080e7          	jalr	808(ra) # 80002570 <_ZdlPv>
    80005250:	00048513          	mv	a0,s1
    80005254:	0000c097          	auipc	ra,0xc
    80005258:	e54080e7          	jalr	-428(ra) # 800110a8 <_Unwind_Resume>
    8000525c:	00050913          	mv	s2,a0
    ThreadA *a = new ThreadA(c, sem);
    80005260:	00048513          	mv	a0,s1
    80005264:	ffffd097          	auipc	ra,0xffffd
    80005268:	30c080e7          	jalr	780(ra) # 80002570 <_ZdlPv>
    8000526c:	00090513          	mv	a0,s2
    80005270:	0000c097          	auipc	ra,0xc
    80005274:	e38080e7          	jalr	-456(ra) # 800110a8 <_Unwind_Resume>
    80005278:	00050493          	mv	s1,a0
    ThreadB *b = new ThreadB(a, sem);
    8000527c:	000a0513          	mv	a0,s4
    80005280:	ffffd097          	auipc	ra,0xffffd
    80005284:	2f0080e7          	jalr	752(ra) # 80002570 <_ZdlPv>
    80005288:	00048513          	mv	a0,s1
    8000528c:	0000c097          	auipc	ra,0xc
    80005290:	e1c080e7          	jalr	-484(ra) # 800110a8 <_Unwind_Resume>
    80005294:	00050493          	mv	s1,a0
    ThreadD *d = new ThreadD(a, sem);
    80005298:	00098513          	mv	a0,s3
    8000529c:	ffffd097          	auipc	ra,0xffffd
    800052a0:	2d4080e7          	jalr	724(ra) # 80002570 <_ZdlPv>
    800052a4:	00048513          	mv	a0,s1
    800052a8:	0000c097          	auipc	ra,0xc
    800052ac:	e00080e7          	jalr	-512(ra) # 800110a8 <_Unwind_Resume>

00000000800052b0 <_ZN7ThreadC3runEv>:
    void run() override {
    800052b0:	fd010113          	addi	sp,sp,-48
    800052b4:	02113423          	sd	ra,40(sp)
    800052b8:	02813023          	sd	s0,32(sp)
    800052bc:	00913c23          	sd	s1,24(sp)
    800052c0:	03010413          	addi	s0,sp,48
    800052c4:	00050493          	mv	s1,a0
        printString("C: startovala\n");
    800052c8:	00007517          	auipc	a0,0x7
    800052cc:	06850513          	addi	a0,a0,104 # 8000c330 <CONSOLE_STATUS+0x320>
    800052d0:	00001097          	auipc	ra,0x1
    800052d4:	dc4080e7          	jalr	-572(ra) # 80006094 <_Z11printStringPKc>
        volatile int s = 0;
    800052d8:	fc042e23          	sw	zero,-36(s0)
        for (int i = 0; i < 200; i++) for (int j = 0; j < 200; j++) s++;
    800052dc:	00000693          	li	a3,0
    800052e0:	0080006f          	j	800052e8 <_ZN7ThreadC3runEv+0x38>
    800052e4:	0016869b          	addiw	a3,a3,1
    800052e8:	0c700793          	li	a5,199
    800052ec:	02d7c263          	blt	a5,a3,80005310 <_ZN7ThreadC3runEv+0x60>
    800052f0:	00000713          	li	a4,0
    800052f4:	0c700793          	li	a5,199
    800052f8:	fee7c6e3          	blt	a5,a4,800052e4 <_ZN7ThreadC3runEv+0x34>
    800052fc:	fdc42783          	lw	a5,-36(s0)
    80005300:	0017879b          	addiw	a5,a5,1
    80005304:	fcf42e23          	sw	a5,-36(s0)
    80005308:	0017071b          	addiw	a4,a4,1
    8000530c:	fe9ff06f          	j	800052f4 <_ZN7ThreadC3runEv+0x44>
        printString("C: nastavila (A me je probudila)\n");
    80005310:	00007517          	auipc	a0,0x7
    80005314:	03050513          	addi	a0,a0,48 # 8000c340 <CONSOLE_STATUS+0x330>
    80005318:	00001097          	auipc	ra,0x1
    8000531c:	d7c080e7          	jalr	-644(ra) # 80006094 <_Z11printStringPKc>
        for (int i = 0; i < 200; i++) for (int j = 0; j < 200; j++) s++;
    80005320:	00000693          	li	a3,0
    80005324:	0080006f          	j	8000532c <_ZN7ThreadC3runEv+0x7c>
    80005328:	0016869b          	addiw	a3,a3,1
    8000532c:	0c700793          	li	a5,199
    80005330:	02d7c263          	blt	a5,a3,80005354 <_ZN7ThreadC3runEv+0xa4>
    80005334:	00000713          	li	a4,0
    80005338:	0c700793          	li	a5,199
    8000533c:	fee7c6e3          	blt	a5,a4,80005328 <_ZN7ThreadC3runEv+0x78>
    80005340:	fdc42783          	lw	a5,-36(s0)
    80005344:	0017879b          	addiw	a5,a5,1
    80005348:	fcf42e23          	sw	a5,-36(s0)
    8000534c:	0017071b          	addiw	a4,a4,1
    80005350:	fe9ff06f          	j	80005338 <_ZN7ThreadC3runEv+0x88>
        printString("C: zavrsila\n");
    80005354:	00007517          	auipc	a0,0x7
    80005358:	01450513          	addi	a0,a0,20 # 8000c368 <CONSOLE_STATUS+0x358>
    8000535c:	00001097          	auipc	ra,0x1
    80005360:	d38080e7          	jalr	-712(ra) # 80006094 <_Z11printStringPKc>
        sem->signal();
    80005364:	0204b503          	ld	a0,32(s1)
    80005368:	ffffd097          	auipc	ra,0xffffd
    8000536c:	4e4080e7          	jalr	1252(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    80005370:	02813083          	ld	ra,40(sp)
    80005374:	02013403          	ld	s0,32(sp)
    80005378:	01813483          	ld	s1,24(sp)
    8000537c:	03010113          	addi	sp,sp,48
    80005380:	00008067          	ret

0000000080005384 <_ZN7ThreadCD1Ev>:
class ThreadC : public Thread {
    80005384:	ff010113          	addi	sp,sp,-16
    80005388:	00113423          	sd	ra,8(sp)
    8000538c:	00813023          	sd	s0,0(sp)
    80005390:	01010413          	addi	s0,sp,16
    80005394:	0000b797          	auipc	a5,0xb
    80005398:	8f478793          	addi	a5,a5,-1804 # 8000fc88 <_ZTV7ThreadC+0x10>
    8000539c:	00f53023          	sd	a5,0(a0)
    800053a0:	ffffd097          	auipc	ra,0xffffd
    800053a4:	0fc080e7          	jalr	252(ra) # 8000249c <_ZN6ThreadD1Ev>
    800053a8:	00813083          	ld	ra,8(sp)
    800053ac:	00013403          	ld	s0,0(sp)
    800053b0:	01010113          	addi	sp,sp,16
    800053b4:	00008067          	ret

00000000800053b8 <_ZN7ThreadCD0Ev>:
    800053b8:	fe010113          	addi	sp,sp,-32
    800053bc:	00113c23          	sd	ra,24(sp)
    800053c0:	00813823          	sd	s0,16(sp)
    800053c4:	00913423          	sd	s1,8(sp)
    800053c8:	02010413          	addi	s0,sp,32
    800053cc:	00050493          	mv	s1,a0
    800053d0:	0000b797          	auipc	a5,0xb
    800053d4:	8b878793          	addi	a5,a5,-1864 # 8000fc88 <_ZTV7ThreadC+0x10>
    800053d8:	00f53023          	sd	a5,0(a0)
    800053dc:	ffffd097          	auipc	ra,0xffffd
    800053e0:	0c0080e7          	jalr	192(ra) # 8000249c <_ZN6ThreadD1Ev>
    800053e4:	00048513          	mv	a0,s1
    800053e8:	ffffd097          	auipc	ra,0xffffd
    800053ec:	188080e7          	jalr	392(ra) # 80002570 <_ZdlPv>
    800053f0:	01813083          	ld	ra,24(sp)
    800053f4:	01013403          	ld	s0,16(sp)
    800053f8:	00813483          	ld	s1,8(sp)
    800053fc:	02010113          	addi	sp,sp,32
    80005400:	00008067          	ret

0000000080005404 <_ZN7ThreadAD1Ev>:
class ThreadA : public Thread {
    80005404:	ff010113          	addi	sp,sp,-16
    80005408:	00113423          	sd	ra,8(sp)
    8000540c:	00813023          	sd	s0,0(sp)
    80005410:	01010413          	addi	s0,sp,16
    80005414:	0000b797          	auipc	a5,0xb
    80005418:	89c78793          	addi	a5,a5,-1892 # 8000fcb0 <_ZTV7ThreadA+0x10>
    8000541c:	00f53023          	sd	a5,0(a0)
    80005420:	ffffd097          	auipc	ra,0xffffd
    80005424:	07c080e7          	jalr	124(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005428:	00813083          	ld	ra,8(sp)
    8000542c:	00013403          	ld	s0,0(sp)
    80005430:	01010113          	addi	sp,sp,16
    80005434:	00008067          	ret

0000000080005438 <_ZN7ThreadAD0Ev>:
    80005438:	fe010113          	addi	sp,sp,-32
    8000543c:	00113c23          	sd	ra,24(sp)
    80005440:	00813823          	sd	s0,16(sp)
    80005444:	00913423          	sd	s1,8(sp)
    80005448:	02010413          	addi	s0,sp,32
    8000544c:	00050493          	mv	s1,a0
    80005450:	0000b797          	auipc	a5,0xb
    80005454:	86078793          	addi	a5,a5,-1952 # 8000fcb0 <_ZTV7ThreadA+0x10>
    80005458:	00f53023          	sd	a5,0(a0)
    8000545c:	ffffd097          	auipc	ra,0xffffd
    80005460:	040080e7          	jalr	64(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005464:	00048513          	mv	a0,s1
    80005468:	ffffd097          	auipc	ra,0xffffd
    8000546c:	108080e7          	jalr	264(ra) # 80002570 <_ZdlPv>
    80005470:	01813083          	ld	ra,24(sp)
    80005474:	01013403          	ld	s0,16(sp)
    80005478:	00813483          	ld	s1,8(sp)
    8000547c:	02010113          	addi	sp,sp,32
    80005480:	00008067          	ret

0000000080005484 <_ZN7ThreadBD1Ev>:
class ThreadB : public Thread {
    80005484:	ff010113          	addi	sp,sp,-16
    80005488:	00113423          	sd	ra,8(sp)
    8000548c:	00813023          	sd	s0,0(sp)
    80005490:	01010413          	addi	s0,sp,16
    80005494:	0000b797          	auipc	a5,0xb
    80005498:	84478793          	addi	a5,a5,-1980 # 8000fcd8 <_ZTV7ThreadB+0x10>
    8000549c:	00f53023          	sd	a5,0(a0)
    800054a0:	ffffd097          	auipc	ra,0xffffd
    800054a4:	ffc080e7          	jalr	-4(ra) # 8000249c <_ZN6ThreadD1Ev>
    800054a8:	00813083          	ld	ra,8(sp)
    800054ac:	00013403          	ld	s0,0(sp)
    800054b0:	01010113          	addi	sp,sp,16
    800054b4:	00008067          	ret

00000000800054b8 <_ZN7ThreadBD0Ev>:
    800054b8:	fe010113          	addi	sp,sp,-32
    800054bc:	00113c23          	sd	ra,24(sp)
    800054c0:	00813823          	sd	s0,16(sp)
    800054c4:	00913423          	sd	s1,8(sp)
    800054c8:	02010413          	addi	s0,sp,32
    800054cc:	00050493          	mv	s1,a0
    800054d0:	0000b797          	auipc	a5,0xb
    800054d4:	80878793          	addi	a5,a5,-2040 # 8000fcd8 <_ZTV7ThreadB+0x10>
    800054d8:	00f53023          	sd	a5,0(a0)
    800054dc:	ffffd097          	auipc	ra,0xffffd
    800054e0:	fc0080e7          	jalr	-64(ra) # 8000249c <_ZN6ThreadD1Ev>
    800054e4:	00048513          	mv	a0,s1
    800054e8:	ffffd097          	auipc	ra,0xffffd
    800054ec:	088080e7          	jalr	136(ra) # 80002570 <_ZdlPv>
    800054f0:	01813083          	ld	ra,24(sp)
    800054f4:	01013403          	ld	s0,16(sp)
    800054f8:	00813483          	ld	s1,8(sp)
    800054fc:	02010113          	addi	sp,sp,32
    80005500:	00008067          	ret

0000000080005504 <_ZN7ThreadDD1Ev>:
class ThreadD : public Thread {
    80005504:	ff010113          	addi	sp,sp,-16
    80005508:	00113423          	sd	ra,8(sp)
    8000550c:	00813023          	sd	s0,0(sp)
    80005510:	01010413          	addi	s0,sp,16
    80005514:	0000a797          	auipc	a5,0xa
    80005518:	7ec78793          	addi	a5,a5,2028 # 8000fd00 <_ZTV7ThreadD+0x10>
    8000551c:	00f53023          	sd	a5,0(a0)
    80005520:	ffffd097          	auipc	ra,0xffffd
    80005524:	f7c080e7          	jalr	-132(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005528:	00813083          	ld	ra,8(sp)
    8000552c:	00013403          	ld	s0,0(sp)
    80005530:	01010113          	addi	sp,sp,16
    80005534:	00008067          	ret

0000000080005538 <_ZN7ThreadDD0Ev>:
    80005538:	fe010113          	addi	sp,sp,-32
    8000553c:	00113c23          	sd	ra,24(sp)
    80005540:	00813823          	sd	s0,16(sp)
    80005544:	00913423          	sd	s1,8(sp)
    80005548:	02010413          	addi	s0,sp,32
    8000554c:	00050493          	mv	s1,a0
    80005550:	0000a797          	auipc	a5,0xa
    80005554:	7b078793          	addi	a5,a5,1968 # 8000fd00 <_ZTV7ThreadD+0x10>
    80005558:	00f53023          	sd	a5,0(a0)
    8000555c:	ffffd097          	auipc	ra,0xffffd
    80005560:	f40080e7          	jalr	-192(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005564:	00048513          	mv	a0,s1
    80005568:	ffffd097          	auipc	ra,0xffffd
    8000556c:	008080e7          	jalr	8(ra) # 80002570 <_ZdlPv>
    80005570:	01813083          	ld	ra,24(sp)
    80005574:	01013403          	ld	s0,16(sp)
    80005578:	00813483          	ld	s1,8(sp)
    8000557c:	02010113          	addi	sp,sp,32
    80005580:	00008067          	ret

0000000080005584 <_ZN7ThreadB3runEv>:
    void run() override {
    80005584:	fd010113          	addi	sp,sp,-48
    80005588:	02113423          	sd	ra,40(sp)
    8000558c:	02813023          	sd	s0,32(sp)
    80005590:	00913c23          	sd	s1,24(sp)
    80005594:	03010413          	addi	s0,sp,48
    80005598:	00050493          	mv	s1,a0
        printString("B: startovala\n");
    8000559c:	00007517          	auipc	a0,0x7
    800055a0:	ddc50513          	addi	a0,a0,-548 # 8000c378 <CONSOLE_STATUS+0x368>
    800055a4:	00001097          	auipc	ra,0x1
    800055a8:	af0080e7          	jalr	-1296(ra) # 80006094 <_Z11printStringPKc>
        volatile int s = 0;
    800055ac:	fc042e23          	sw	zero,-36(s0)
        for (int i = 0; i < 250; i++) for (int j = 0; j < 250; j++) s++;
    800055b0:	00000693          	li	a3,0
    800055b4:	0080006f          	j	800055bc <_ZN7ThreadB3runEv+0x38>
    800055b8:	0016869b          	addiw	a3,a3,1
    800055bc:	0f900793          	li	a5,249
    800055c0:	02d7c263          	blt	a5,a3,800055e4 <_ZN7ThreadB3runEv+0x60>
    800055c4:	00000713          	li	a4,0
    800055c8:	0f900793          	li	a5,249
    800055cc:	fee7c6e3          	blt	a5,a4,800055b8 <_ZN7ThreadB3runEv+0x34>
    800055d0:	fdc42783          	lw	a5,-36(s0)
    800055d4:	0017879b          	addiw	a5,a5,1
    800055d8:	fcf42e23          	sw	a5,-36(s0)
    800055dc:	0017071b          	addiw	a4,a4,1
    800055e0:	fe9ff06f          	j	800055c8 <_ZN7ThreadB3runEv+0x44>
        printString("B: suspendujem A\n");
    800055e4:	00007517          	auipc	a0,0x7
    800055e8:	da450513          	addi	a0,a0,-604 # 8000c388 <CONSOLE_STATUS+0x378>
    800055ec:	00001097          	auipc	ra,0x1
    800055f0:	aa8080e7          	jalr	-1368(ra) # 80006094 <_Z11printStringPKc>
        this->suspend(a);
    800055f4:	0204b583          	ld	a1,32(s1)
    800055f8:	00048513          	mv	a0,s1
    800055fc:	ffffd097          	auipc	ra,0xffffd
    80005600:	1c0080e7          	jalr	448(ra) # 800027bc <_ZN6Thread7suspendEPS_>
        for (int i = 0; i < 250; i++) for (int j = 0; j < 250; j++) s++;
    80005604:	00000693          	li	a3,0
    80005608:	0080006f          	j	80005610 <_ZN7ThreadB3runEv+0x8c>
    8000560c:	0016869b          	addiw	a3,a3,1
    80005610:	0f900793          	li	a5,249
    80005614:	02d7c263          	blt	a5,a3,80005638 <_ZN7ThreadB3runEv+0xb4>
    80005618:	00000713          	li	a4,0
    8000561c:	0f900793          	li	a5,249
    80005620:	fee7c6e3          	blt	a5,a4,8000560c <_ZN7ThreadB3runEv+0x88>
    80005624:	fdc42783          	lw	a5,-36(s0)
    80005628:	0017879b          	addiw	a5,a5,1
    8000562c:	fcf42e23          	sw	a5,-36(s0)
    80005630:	0017071b          	addiw	a4,a4,1
    80005634:	fe9ff06f          	j	8000561c <_ZN7ThreadB3runEv+0x98>
        printString("B: zavrsila\n");
    80005638:	00007517          	auipc	a0,0x7
    8000563c:	d6850513          	addi	a0,a0,-664 # 8000c3a0 <CONSOLE_STATUS+0x390>
    80005640:	00001097          	auipc	ra,0x1
    80005644:	a54080e7          	jalr	-1452(ra) # 80006094 <_Z11printStringPKc>
        sem->signal();
    80005648:	0284b503          	ld	a0,40(s1)
    8000564c:	ffffd097          	auipc	ra,0xffffd
    80005650:	200080e7          	jalr	512(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    80005654:	02813083          	ld	ra,40(sp)
    80005658:	02013403          	ld	s0,32(sp)
    8000565c:	01813483          	ld	s1,24(sp)
    80005660:	03010113          	addi	sp,sp,48
    80005664:	00008067          	ret

0000000080005668 <_ZN7ThreadA3runEv>:
    void run() override {
    80005668:	fd010113          	addi	sp,sp,-48
    8000566c:	02113423          	sd	ra,40(sp)
    80005670:	02813023          	sd	s0,32(sp)
    80005674:	00913c23          	sd	s1,24(sp)
    80005678:	03010413          	addi	s0,sp,48
    8000567c:	00050493          	mv	s1,a0
        printString("A: startovala\n");
    80005680:	00007517          	auipc	a0,0x7
    80005684:	d3050513          	addi	a0,a0,-720 # 8000c3b0 <CONSOLE_STATUS+0x3a0>
    80005688:	00001097          	auipc	ra,0x1
    8000568c:	a0c080e7          	jalr	-1524(ra) # 80006094 <_Z11printStringPKc>
        printString("A: suspendujem C\n");
    80005690:	00007517          	auipc	a0,0x7
    80005694:	d3050513          	addi	a0,a0,-720 # 8000c3c0 <CONSOLE_STATUS+0x3b0>
    80005698:	00001097          	auipc	ra,0x1
    8000569c:	9fc080e7          	jalr	-1540(ra) # 80006094 <_Z11printStringPKc>
        this->suspend(c);
    800056a0:	0204b583          	ld	a1,32(s1)
    800056a4:	00048513          	mv	a0,s1
    800056a8:	ffffd097          	auipc	ra,0xffffd
    800056ac:	114080e7          	jalr	276(ra) # 800027bc <_ZN6Thread7suspendEPS_>
        volatile int s = 0;
    800056b0:	fc042e23          	sw	zero,-36(s0)
        for (int i = 0; i < 150; i++) for (int j = 0; j < 150; j++) s++;
    800056b4:	00000693          	li	a3,0
    800056b8:	0080006f          	j	800056c0 <_ZN7ThreadA3runEv+0x58>
    800056bc:	0016869b          	addiw	a3,a3,1
    800056c0:	09500793          	li	a5,149
    800056c4:	02d7c263          	blt	a5,a3,800056e8 <_ZN7ThreadA3runEv+0x80>
    800056c8:	00000713          	li	a4,0
    800056cc:	09500793          	li	a5,149
    800056d0:	fee7c6e3          	blt	a5,a4,800056bc <_ZN7ThreadA3runEv+0x54>
    800056d4:	fdc42783          	lw	a5,-36(s0)
    800056d8:	0017879b          	addiw	a5,a5,1
    800056dc:	fcf42e23          	sw	a5,-36(s0)
    800056e0:	0017071b          	addiw	a4,a4,1
    800056e4:	fe9ff06f          	j	800056cc <_ZN7ThreadA3runEv+0x64>
        printString("A: suspendujem samu sebe\n");
    800056e8:	00007517          	auipc	a0,0x7
    800056ec:	cf050513          	addi	a0,a0,-784 # 8000c3d8 <CONSOLE_STATUS+0x3c8>
    800056f0:	00001097          	auipc	ra,0x1
    800056f4:	9a4080e7          	jalr	-1628(ra) # 80006094 <_Z11printStringPKc>
        this->suspend(this);
    800056f8:	00048593          	mv	a1,s1
    800056fc:	00048513          	mv	a0,s1
    80005700:	ffffd097          	auipc	ra,0xffffd
    80005704:	0bc080e7          	jalr	188(ra) # 800027bc <_ZN6Thread7suspendEPS_>
        printString("A: probudjena od D, budim C\n");
    80005708:	00007517          	auipc	a0,0x7
    8000570c:	cf050513          	addi	a0,a0,-784 # 8000c3f8 <CONSOLE_STATUS+0x3e8>
    80005710:	00001097          	auipc	ra,0x1
    80005714:	984080e7          	jalr	-1660(ra) # 80006094 <_Z11printStringPKc>
        this->resume(c);
    80005718:	0204b583          	ld	a1,32(s1)
    8000571c:	00048513          	mv	a0,s1
    80005720:	ffffd097          	auipc	ra,0xffffd
    80005724:	070080e7          	jalr	112(ra) # 80002790 <_ZN6Thread6resumeEPS_>
        printString("A: zavrsila\n");
    80005728:	00007517          	auipc	a0,0x7
    8000572c:	cf050513          	addi	a0,a0,-784 # 8000c418 <CONSOLE_STATUS+0x408>
    80005730:	00001097          	auipc	ra,0x1
    80005734:	964080e7          	jalr	-1692(ra) # 80006094 <_Z11printStringPKc>
        sem->signal();
    80005738:	0284b503          	ld	a0,40(s1)
    8000573c:	ffffd097          	auipc	ra,0xffffd
    80005740:	110080e7          	jalr	272(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    80005744:	02813083          	ld	ra,40(sp)
    80005748:	02013403          	ld	s0,32(sp)
    8000574c:	01813483          	ld	s1,24(sp)
    80005750:	03010113          	addi	sp,sp,48
    80005754:	00008067          	ret

0000000080005758 <_ZN7ThreadD3runEv>:
    void run() override {
    80005758:	fd010113          	addi	sp,sp,-48
    8000575c:	02113423          	sd	ra,40(sp)
    80005760:	02813023          	sd	s0,32(sp)
    80005764:	00913c23          	sd	s1,24(sp)
    80005768:	03010413          	addi	s0,sp,48
    8000576c:	00050493          	mv	s1,a0
        printString("D: startovala\n");
    80005770:	00007517          	auipc	a0,0x7
    80005774:	cb850513          	addi	a0,a0,-840 # 8000c428 <CONSOLE_STATUS+0x418>
    80005778:	00001097          	auipc	ra,0x1
    8000577c:	91c080e7          	jalr	-1764(ra) # 80006094 <_Z11printStringPKc>
        volatile int s = 0;
    80005780:	fc042e23          	sw	zero,-36(s0)
        for (int i = 0; i < 900; i++) for (int j = 0; j < 900; j++) s++;
    80005784:	00000693          	li	a3,0
    80005788:	0080006f          	j	80005790 <_ZN7ThreadD3runEv+0x38>
    8000578c:	0016869b          	addiw	a3,a3,1
    80005790:	38300793          	li	a5,899
    80005794:	02d7c263          	blt	a5,a3,800057b8 <_ZN7ThreadD3runEv+0x60>
    80005798:	00000713          	li	a4,0
    8000579c:	38300793          	li	a5,899
    800057a0:	fee7c6e3          	blt	a5,a4,8000578c <_ZN7ThreadD3runEv+0x34>
    800057a4:	fdc42783          	lw	a5,-36(s0)
    800057a8:	0017879b          	addiw	a5,a5,1
    800057ac:	fcf42e23          	sw	a5,-36(s0)
    800057b0:	0017071b          	addiw	a4,a4,1
    800057b4:	fe9ff06f          	j	8000579c <_ZN7ThreadD3runEv+0x44>
        printString("D: budim A\n");
    800057b8:	00007517          	auipc	a0,0x7
    800057bc:	c8050513          	addi	a0,a0,-896 # 8000c438 <CONSOLE_STATUS+0x428>
    800057c0:	00001097          	auipc	ra,0x1
    800057c4:	8d4080e7          	jalr	-1836(ra) # 80006094 <_Z11printStringPKc>
        this->resume(a);
    800057c8:	0204b583          	ld	a1,32(s1)
    800057cc:	00048513          	mv	a0,s1
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	fc0080e7          	jalr	-64(ra) # 80002790 <_ZN6Thread6resumeEPS_>
        printString("D: zavrsila\n");
    800057d8:	00007517          	auipc	a0,0x7
    800057dc:	c7050513          	addi	a0,a0,-912 # 8000c448 <CONSOLE_STATUS+0x438>
    800057e0:	00001097          	auipc	ra,0x1
    800057e4:	8b4080e7          	jalr	-1868(ra) # 80006094 <_Z11printStringPKc>
        sem->signal();
    800057e8:	0284b503          	ld	a0,40(s1)
    800057ec:	ffffd097          	auipc	ra,0xffffd
    800057f0:	060080e7          	jalr	96(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    800057f4:	02813083          	ld	ra,40(sp)
    800057f8:	02013403          	ld	s0,32(sp)
    800057fc:	01813483          	ld	s1,24(sp)
    80005800:	03010113          	addi	sp,sp,48
    80005804:	00008067          	ret

0000000080005808 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005808:	fd010113          	addi	sp,sp,-48
    8000580c:	02113423          	sd	ra,40(sp)
    80005810:	02813023          	sd	s0,32(sp)
    80005814:	00913c23          	sd	s1,24(sp)
    80005818:	01213823          	sd	s2,16(sp)
    8000581c:	01313423          	sd	s3,8(sp)
    80005820:	03010413          	addi	s0,sp,48
    80005824:	00050993          	mv	s3,a0
    80005828:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000582c:	00000913          	li	s2,0
    80005830:	00c0006f          	j	8000583c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005834:	ffffd097          	auipc	ra,0xffffd
    80005838:	e88080e7          	jalr	-376(ra) # 800026bc <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000583c:	ffffc097          	auipc	ra,0xffffc
    80005840:	eac080e7          	jalr	-340(ra) # 800016e8 <_Z4getcv>
    80005844:	0005059b          	sext.w	a1,a0
    80005848:	01b00793          	li	a5,27
    8000584c:	02f58a63          	beq	a1,a5,80005880 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005850:	0084b503          	ld	a0,8(s1)
    80005854:	00001097          	auipc	ra,0x1
    80005858:	c64080e7          	jalr	-924(ra) # 800064b8 <_ZN9BufferCPP3putEi>
        i++;
    8000585c:	0019071b          	addiw	a4,s2,1
    80005860:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005864:	0004a683          	lw	a3,0(s1)
    80005868:	0026979b          	slliw	a5,a3,0x2
    8000586c:	00d787bb          	addw	a5,a5,a3
    80005870:	0017979b          	slliw	a5,a5,0x1
    80005874:	02f767bb          	remw	a5,a4,a5
    80005878:	fc0792e3          	bnez	a5,8000583c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000587c:	fb9ff06f          	j	80005834 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005880:	00100793          	li	a5,1
    80005884:	0000a717          	auipc	a4,0xa
    80005888:	6ef72623          	sw	a5,1772(a4) # 8000ff70 <_ZL9threadEnd>
    td->buffer->put('!');
    8000588c:	0209b783          	ld	a5,32(s3)
    80005890:	02100593          	li	a1,33
    80005894:	0087b503          	ld	a0,8(a5)
    80005898:	00001097          	auipc	ra,0x1
    8000589c:	c20080e7          	jalr	-992(ra) # 800064b8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800058a0:	0104b503          	ld	a0,16(s1)
    800058a4:	ffffd097          	auipc	ra,0xffffd
    800058a8:	fa8080e7          	jalr	-88(ra) # 8000284c <_ZN9Semaphore6signalEv>
}
    800058ac:	02813083          	ld	ra,40(sp)
    800058b0:	02013403          	ld	s0,32(sp)
    800058b4:	01813483          	ld	s1,24(sp)
    800058b8:	01013903          	ld	s2,16(sp)
    800058bc:	00813983          	ld	s3,8(sp)
    800058c0:	03010113          	addi	sp,sp,48
    800058c4:	00008067          	ret

00000000800058c8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800058c8:	fe010113          	addi	sp,sp,-32
    800058cc:	00113c23          	sd	ra,24(sp)
    800058d0:	00813823          	sd	s0,16(sp)
    800058d4:	00913423          	sd	s1,8(sp)
    800058d8:	01213023          	sd	s2,0(sp)
    800058dc:	02010413          	addi	s0,sp,32
    800058e0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800058e4:	00000913          	li	s2,0
    800058e8:	00c0006f          	j	800058f4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800058ec:	ffffd097          	auipc	ra,0xffffd
    800058f0:	dd0080e7          	jalr	-560(ra) # 800026bc <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800058f4:	0000a797          	auipc	a5,0xa
    800058f8:	67c7a783          	lw	a5,1660(a5) # 8000ff70 <_ZL9threadEnd>
    800058fc:	02079e63          	bnez	a5,80005938 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005900:	0004a583          	lw	a1,0(s1)
    80005904:	0305859b          	addiw	a1,a1,48
    80005908:	0084b503          	ld	a0,8(s1)
    8000590c:	00001097          	auipc	ra,0x1
    80005910:	bac080e7          	jalr	-1108(ra) # 800064b8 <_ZN9BufferCPP3putEi>
        i++;
    80005914:	0019071b          	addiw	a4,s2,1
    80005918:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000591c:	0004a683          	lw	a3,0(s1)
    80005920:	0026979b          	slliw	a5,a3,0x2
    80005924:	00d787bb          	addw	a5,a5,a3
    80005928:	0017979b          	slliw	a5,a5,0x1
    8000592c:	02f767bb          	remw	a5,a4,a5
    80005930:	fc0792e3          	bnez	a5,800058f4 <_ZN12ProducerSync8producerEPv+0x2c>
    80005934:	fb9ff06f          	j	800058ec <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005938:	0104b503          	ld	a0,16(s1)
    8000593c:	ffffd097          	auipc	ra,0xffffd
    80005940:	f10080e7          	jalr	-240(ra) # 8000284c <_ZN9Semaphore6signalEv>
}
    80005944:	01813083          	ld	ra,24(sp)
    80005948:	01013403          	ld	s0,16(sp)
    8000594c:	00813483          	ld	s1,8(sp)
    80005950:	00013903          	ld	s2,0(sp)
    80005954:	02010113          	addi	sp,sp,32
    80005958:	00008067          	ret

000000008000595c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000595c:	fd010113          	addi	sp,sp,-48
    80005960:	02113423          	sd	ra,40(sp)
    80005964:	02813023          	sd	s0,32(sp)
    80005968:	00913c23          	sd	s1,24(sp)
    8000596c:	01213823          	sd	s2,16(sp)
    80005970:	01313423          	sd	s3,8(sp)
    80005974:	01413023          	sd	s4,0(sp)
    80005978:	03010413          	addi	s0,sp,48
    8000597c:	00050993          	mv	s3,a0
    80005980:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005984:	00000a13          	li	s4,0
    80005988:	01c0006f          	j	800059a4 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000598c:	ffffd097          	auipc	ra,0xffffd
    80005990:	d30080e7          	jalr	-720(ra) # 800026bc <_ZN6Thread8dispatchEv>
    80005994:	0500006f          	j	800059e4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005998:	00a00513          	li	a0,10
    8000599c:	ffffc097          	auipc	ra,0xffffc
    800059a0:	d88080e7          	jalr	-632(ra) # 80001724 <_Z4putcc>
    while (!threadEnd) {
    800059a4:	0000a797          	auipc	a5,0xa
    800059a8:	5cc7a783          	lw	a5,1484(a5) # 8000ff70 <_ZL9threadEnd>
    800059ac:	06079263          	bnez	a5,80005a10 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800059b0:	00893503          	ld	a0,8(s2)
    800059b4:	00001097          	auipc	ra,0x1
    800059b8:	b94080e7          	jalr	-1132(ra) # 80006548 <_ZN9BufferCPP3getEv>
        i++;
    800059bc:	001a049b          	addiw	s1,s4,1
    800059c0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800059c4:	0ff57513          	andi	a0,a0,255
    800059c8:	ffffc097          	auipc	ra,0xffffc
    800059cc:	d5c080e7          	jalr	-676(ra) # 80001724 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800059d0:	00092703          	lw	a4,0(s2)
    800059d4:	0027179b          	slliw	a5,a4,0x2
    800059d8:	00e787bb          	addw	a5,a5,a4
    800059dc:	02f4e7bb          	remw	a5,s1,a5
    800059e0:	fa0786e3          	beqz	a5,8000598c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800059e4:	05000793          	li	a5,80
    800059e8:	02f4e4bb          	remw	s1,s1,a5
    800059ec:	fa049ce3          	bnez	s1,800059a4 <_ZN12ConsumerSync8consumerEPv+0x48>
    800059f0:	fa9ff06f          	j	80005998 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800059f4:	0209b783          	ld	a5,32(s3)
    800059f8:	0087b503          	ld	a0,8(a5)
    800059fc:	00001097          	auipc	ra,0x1
    80005a00:	b4c080e7          	jalr	-1204(ra) # 80006548 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005a04:	0ff57513          	andi	a0,a0,255
    80005a08:	ffffd097          	auipc	ra,0xffffd
    80005a0c:	e98080e7          	jalr	-360(ra) # 800028a0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005a10:	0209b783          	ld	a5,32(s3)
    80005a14:	0087b503          	ld	a0,8(a5)
    80005a18:	00001097          	auipc	ra,0x1
    80005a1c:	bbc080e7          	jalr	-1092(ra) # 800065d4 <_ZN9BufferCPP6getCntEv>
    80005a20:	fca04ae3          	bgtz	a0,800059f4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005a24:	01093503          	ld	a0,16(s2)
    80005a28:	ffffd097          	auipc	ra,0xffffd
    80005a2c:	e24080e7          	jalr	-476(ra) # 8000284c <_ZN9Semaphore6signalEv>
}
    80005a30:	02813083          	ld	ra,40(sp)
    80005a34:	02013403          	ld	s0,32(sp)
    80005a38:	01813483          	ld	s1,24(sp)
    80005a3c:	01013903          	ld	s2,16(sp)
    80005a40:	00813983          	ld	s3,8(sp)
    80005a44:	00013a03          	ld	s4,0(sp)
    80005a48:	03010113          	addi	sp,sp,48
    80005a4c:	00008067          	ret

0000000080005a50 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005a50:	f8010113          	addi	sp,sp,-128
    80005a54:	06113c23          	sd	ra,120(sp)
    80005a58:	06813823          	sd	s0,112(sp)
    80005a5c:	06913423          	sd	s1,104(sp)
    80005a60:	07213023          	sd	s2,96(sp)
    80005a64:	05313c23          	sd	s3,88(sp)
    80005a68:	05413823          	sd	s4,80(sp)
    80005a6c:	05513423          	sd	s5,72(sp)
    80005a70:	05613023          	sd	s6,64(sp)
    80005a74:	03713c23          	sd	s7,56(sp)
    80005a78:	03813823          	sd	s8,48(sp)
    80005a7c:	03913423          	sd	s9,40(sp)
    80005a80:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005a84:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005a88:	00006517          	auipc	a0,0x6
    80005a8c:	6d050513          	addi	a0,a0,1744 # 8000c158 <CONSOLE_STATUS+0x148>
    80005a90:	00000097          	auipc	ra,0x0
    80005a94:	604080e7          	jalr	1540(ra) # 80006094 <_Z11printStringPKc>
    getString(input, 30);
    80005a98:	01e00593          	li	a1,30
    80005a9c:	f8040493          	addi	s1,s0,-128
    80005aa0:	00048513          	mv	a0,s1
    80005aa4:	00000097          	auipc	ra,0x0
    80005aa8:	678080e7          	jalr	1656(ra) # 8000611c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005aac:	00048513          	mv	a0,s1
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	744080e7          	jalr	1860(ra) # 800061f4 <_Z11stringToIntPKc>
    80005ab8:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005abc:	00006517          	auipc	a0,0x6
    80005ac0:	6bc50513          	addi	a0,a0,1724 # 8000c178 <CONSOLE_STATUS+0x168>
    80005ac4:	00000097          	auipc	ra,0x0
    80005ac8:	5d0080e7          	jalr	1488(ra) # 80006094 <_Z11printStringPKc>
    getString(input, 30);
    80005acc:	01e00593          	li	a1,30
    80005ad0:	00048513          	mv	a0,s1
    80005ad4:	00000097          	auipc	ra,0x0
    80005ad8:	648080e7          	jalr	1608(ra) # 8000611c <_Z9getStringPci>
    n = stringToInt(input);
    80005adc:	00048513          	mv	a0,s1
    80005ae0:	00000097          	auipc	ra,0x0
    80005ae4:	714080e7          	jalr	1812(ra) # 800061f4 <_Z11stringToIntPKc>
    80005ae8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005aec:	00006517          	auipc	a0,0x6
    80005af0:	6ac50513          	addi	a0,a0,1708 # 8000c198 <CONSOLE_STATUS+0x188>
    80005af4:	00000097          	auipc	ra,0x0
    80005af8:	5a0080e7          	jalr	1440(ra) # 80006094 <_Z11printStringPKc>
    80005afc:	00000613          	li	a2,0
    80005b00:	00a00593          	li	a1,10
    80005b04:	00090513          	mv	a0,s2
    80005b08:	00000097          	auipc	ra,0x0
    80005b0c:	73c080e7          	jalr	1852(ra) # 80006244 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005b10:	00006517          	auipc	a0,0x6
    80005b14:	6a050513          	addi	a0,a0,1696 # 8000c1b0 <CONSOLE_STATUS+0x1a0>
    80005b18:	00000097          	auipc	ra,0x0
    80005b1c:	57c080e7          	jalr	1404(ra) # 80006094 <_Z11printStringPKc>
    80005b20:	00000613          	li	a2,0
    80005b24:	00a00593          	li	a1,10
    80005b28:	00048513          	mv	a0,s1
    80005b2c:	00000097          	auipc	ra,0x0
    80005b30:	718080e7          	jalr	1816(ra) # 80006244 <_Z8printIntiii>
    printString(".\n");
    80005b34:	00007517          	auipc	a0,0x7
    80005b38:	eac50513          	addi	a0,a0,-340 # 8000c9e0 <CONSOLE_STATUS+0x9d0>
    80005b3c:	00000097          	auipc	ra,0x0
    80005b40:	558080e7          	jalr	1368(ra) # 80006094 <_Z11printStringPKc>
    if(threadNum > n) {
    80005b44:	0324c463          	blt	s1,s2,80005b6c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005b48:	03205c63          	blez	s2,80005b80 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005b4c:	03800513          	li	a0,56
    80005b50:	ffffd097          	auipc	ra,0xffffd
    80005b54:	9d0080e7          	jalr	-1584(ra) # 80002520 <_Znwm>
    80005b58:	00050a93          	mv	s5,a0
    80005b5c:	00048593          	mv	a1,s1
    80005b60:	00001097          	auipc	ra,0x1
    80005b64:	804080e7          	jalr	-2044(ra) # 80006364 <_ZN9BufferCPPC1Ei>
    80005b68:	0300006f          	j	80005b98 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005b6c:	00006517          	auipc	a0,0x6
    80005b70:	65c50513          	addi	a0,a0,1628 # 8000c1c8 <CONSOLE_STATUS+0x1b8>
    80005b74:	00000097          	auipc	ra,0x0
    80005b78:	520080e7          	jalr	1312(ra) # 80006094 <_Z11printStringPKc>
        return;
    80005b7c:	0140006f          	j	80005b90 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005b80:	00006517          	auipc	a0,0x6
    80005b84:	68850513          	addi	a0,a0,1672 # 8000c208 <CONSOLE_STATUS+0x1f8>
    80005b88:	00000097          	auipc	ra,0x0
    80005b8c:	50c080e7          	jalr	1292(ra) # 80006094 <_Z11printStringPKc>
        return;
    80005b90:	000b8113          	mv	sp,s7
    80005b94:	2380006f          	j	80005dcc <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005b98:	01000513          	li	a0,16
    80005b9c:	ffffd097          	auipc	ra,0xffffd
    80005ba0:	984080e7          	jalr	-1660(ra) # 80002520 <_Znwm>
    80005ba4:	00050493          	mv	s1,a0
    80005ba8:	00000593          	li	a1,0
    80005bac:	ffffd097          	auipc	ra,0xffffd
    80005bb0:	c3c080e7          	jalr	-964(ra) # 800027e8 <_ZN9SemaphoreC1Ej>
    80005bb4:	0000a797          	auipc	a5,0xa
    80005bb8:	3c97b223          	sd	s1,964(a5) # 8000ff78 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005bbc:	00391793          	slli	a5,s2,0x3
    80005bc0:	00f78793          	addi	a5,a5,15
    80005bc4:	ff07f793          	andi	a5,a5,-16
    80005bc8:	40f10133          	sub	sp,sp,a5
    80005bcc:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005bd0:	0019071b          	addiw	a4,s2,1
    80005bd4:	00171793          	slli	a5,a4,0x1
    80005bd8:	00e787b3          	add	a5,a5,a4
    80005bdc:	00379793          	slli	a5,a5,0x3
    80005be0:	00f78793          	addi	a5,a5,15
    80005be4:	ff07f793          	andi	a5,a5,-16
    80005be8:	40f10133          	sub	sp,sp,a5
    80005bec:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005bf0:	00191c13          	slli	s8,s2,0x1
    80005bf4:	012c07b3          	add	a5,s8,s2
    80005bf8:	00379793          	slli	a5,a5,0x3
    80005bfc:	00fa07b3          	add	a5,s4,a5
    80005c00:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005c04:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005c08:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005c0c:	02800513          	li	a0,40
    80005c10:	ffffd097          	auipc	ra,0xffffd
    80005c14:	910080e7          	jalr	-1776(ra) # 80002520 <_Znwm>
    80005c18:	00050b13          	mv	s6,a0
    80005c1c:	012c0c33          	add	s8,s8,s2
    80005c20:	003c1c13          	slli	s8,s8,0x3
    80005c24:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005c28:	ffffd097          	auipc	ra,0xffffd
    80005c2c:	abc080e7          	jalr	-1348(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80005c30:	0000a797          	auipc	a5,0xa
    80005c34:	14878793          	addi	a5,a5,328 # 8000fd78 <_ZTV12ConsumerSync+0x10>
    80005c38:	00fb3023          	sd	a5,0(s6)
    80005c3c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005c40:	000b0513          	mv	a0,s6
    80005c44:	ffffd097          	auipc	ra,0xffffd
    80005c48:	a14080e7          	jalr	-1516(ra) # 80002658 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c4c:	00000493          	li	s1,0
    80005c50:	0380006f          	j	80005c88 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005c54:	0000a797          	auipc	a5,0xa
    80005c58:	0fc78793          	addi	a5,a5,252 # 8000fd50 <_ZTV12ProducerSync+0x10>
    80005c5c:	00fcb023          	sd	a5,0(s9)
    80005c60:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005c64:	00349793          	slli	a5,s1,0x3
    80005c68:	00f987b3          	add	a5,s3,a5
    80005c6c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005c70:	00349793          	slli	a5,s1,0x3
    80005c74:	00f987b3          	add	a5,s3,a5
    80005c78:	0007b503          	ld	a0,0(a5)
    80005c7c:	ffffd097          	auipc	ra,0xffffd
    80005c80:	9dc080e7          	jalr	-1572(ra) # 80002658 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005c84:	0014849b          	addiw	s1,s1,1
    80005c88:	0b24d063          	bge	s1,s2,80005d28 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005c8c:	00149793          	slli	a5,s1,0x1
    80005c90:	009787b3          	add	a5,a5,s1
    80005c94:	00379793          	slli	a5,a5,0x3
    80005c98:	00fa07b3          	add	a5,s4,a5
    80005c9c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005ca0:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005ca4:	0000a717          	auipc	a4,0xa
    80005ca8:	2d473703          	ld	a4,724(a4) # 8000ff78 <_ZL10waitForAll>
    80005cac:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005cb0:	02905863          	blez	s1,80005ce0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005cb4:	02800513          	li	a0,40
    80005cb8:	ffffd097          	auipc	ra,0xffffd
    80005cbc:	868080e7          	jalr	-1944(ra) # 80002520 <_Znwm>
    80005cc0:	00050c93          	mv	s9,a0
    80005cc4:	00149c13          	slli	s8,s1,0x1
    80005cc8:	009c0c33          	add	s8,s8,s1
    80005ccc:	003c1c13          	slli	s8,s8,0x3
    80005cd0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005cd4:	ffffd097          	auipc	ra,0xffffd
    80005cd8:	a10080e7          	jalr	-1520(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80005cdc:	f79ff06f          	j	80005c54 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005ce0:	02800513          	li	a0,40
    80005ce4:	ffffd097          	auipc	ra,0xffffd
    80005ce8:	83c080e7          	jalr	-1988(ra) # 80002520 <_Znwm>
    80005cec:	00050c93          	mv	s9,a0
    80005cf0:	00149c13          	slli	s8,s1,0x1
    80005cf4:	009c0c33          	add	s8,s8,s1
    80005cf8:	003c1c13          	slli	s8,s8,0x3
    80005cfc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005d00:	ffffd097          	auipc	ra,0xffffd
    80005d04:	9e4080e7          	jalr	-1564(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80005d08:	0000a797          	auipc	a5,0xa
    80005d0c:	02078793          	addi	a5,a5,32 # 8000fd28 <_ZTV16ProducerKeyboard+0x10>
    80005d10:	00fcb023          	sd	a5,0(s9)
    80005d14:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005d18:	00349793          	slli	a5,s1,0x3
    80005d1c:	00f987b3          	add	a5,s3,a5
    80005d20:	0197b023          	sd	s9,0(a5)
    80005d24:	f4dff06f          	j	80005c70 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005d28:	ffffd097          	auipc	ra,0xffffd
    80005d2c:	994080e7          	jalr	-1644(ra) # 800026bc <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d30:	00000493          	li	s1,0
    80005d34:	00994e63          	blt	s2,s1,80005d50 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005d38:	0000a517          	auipc	a0,0xa
    80005d3c:	24053503          	ld	a0,576(a0) # 8000ff78 <_ZL10waitForAll>
    80005d40:	ffffd097          	auipc	ra,0xffffd
    80005d44:	ae0080e7          	jalr	-1312(ra) # 80002820 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005d48:	0014849b          	addiw	s1,s1,1
    80005d4c:	fe9ff06f          	j	80005d34 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005d50:	00000493          	li	s1,0
    80005d54:	0080006f          	j	80005d5c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005d58:	0014849b          	addiw	s1,s1,1
    80005d5c:	0324d263          	bge	s1,s2,80005d80 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005d60:	00349793          	slli	a5,s1,0x3
    80005d64:	00f987b3          	add	a5,s3,a5
    80005d68:	0007b503          	ld	a0,0(a5)
    80005d6c:	fe0506e3          	beqz	a0,80005d58 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005d70:	00053783          	ld	a5,0(a0)
    80005d74:	0087b783          	ld	a5,8(a5)
    80005d78:	000780e7          	jalr	a5
    80005d7c:	fddff06f          	j	80005d58 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005d80:	000b0a63          	beqz	s6,80005d94 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005d84:	000b3783          	ld	a5,0(s6)
    80005d88:	0087b783          	ld	a5,8(a5)
    80005d8c:	000b0513          	mv	a0,s6
    80005d90:	000780e7          	jalr	a5
    delete waitForAll;
    80005d94:	0000a517          	auipc	a0,0xa
    80005d98:	1e453503          	ld	a0,484(a0) # 8000ff78 <_ZL10waitForAll>
    80005d9c:	00050863          	beqz	a0,80005dac <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80005da0:	00053783          	ld	a5,0(a0)
    80005da4:	0087b783          	ld	a5,8(a5)
    80005da8:	000780e7          	jalr	a5
    delete buffer;
    80005dac:	000a8e63          	beqz	s5,80005dc8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80005db0:	000a8513          	mv	a0,s5
    80005db4:	00001097          	auipc	ra,0x1
    80005db8:	8a8080e7          	jalr	-1880(ra) # 8000665c <_ZN9BufferCPPD1Ev>
    80005dbc:	000a8513          	mv	a0,s5
    80005dc0:	ffffc097          	auipc	ra,0xffffc
    80005dc4:	7b0080e7          	jalr	1968(ra) # 80002570 <_ZdlPv>
    80005dc8:	000b8113          	mv	sp,s7

}
    80005dcc:	f8040113          	addi	sp,s0,-128
    80005dd0:	07813083          	ld	ra,120(sp)
    80005dd4:	07013403          	ld	s0,112(sp)
    80005dd8:	06813483          	ld	s1,104(sp)
    80005ddc:	06013903          	ld	s2,96(sp)
    80005de0:	05813983          	ld	s3,88(sp)
    80005de4:	05013a03          	ld	s4,80(sp)
    80005de8:	04813a83          	ld	s5,72(sp)
    80005dec:	04013b03          	ld	s6,64(sp)
    80005df0:	03813b83          	ld	s7,56(sp)
    80005df4:	03013c03          	ld	s8,48(sp)
    80005df8:	02813c83          	ld	s9,40(sp)
    80005dfc:	08010113          	addi	sp,sp,128
    80005e00:	00008067          	ret
    80005e04:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80005e08:	000a8513          	mv	a0,s5
    80005e0c:	ffffc097          	auipc	ra,0xffffc
    80005e10:	764080e7          	jalr	1892(ra) # 80002570 <_ZdlPv>
    80005e14:	00048513          	mv	a0,s1
    80005e18:	0000b097          	auipc	ra,0xb
    80005e1c:	290080e7          	jalr	656(ra) # 800110a8 <_Unwind_Resume>
    80005e20:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005e24:	00048513          	mv	a0,s1
    80005e28:	ffffc097          	auipc	ra,0xffffc
    80005e2c:	748080e7          	jalr	1864(ra) # 80002570 <_ZdlPv>
    80005e30:	00090513          	mv	a0,s2
    80005e34:	0000b097          	auipc	ra,0xb
    80005e38:	274080e7          	jalr	628(ra) # 800110a8 <_Unwind_Resume>
    80005e3c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005e40:	000b0513          	mv	a0,s6
    80005e44:	ffffc097          	auipc	ra,0xffffc
    80005e48:	72c080e7          	jalr	1836(ra) # 80002570 <_ZdlPv>
    80005e4c:	00048513          	mv	a0,s1
    80005e50:	0000b097          	auipc	ra,0xb
    80005e54:	258080e7          	jalr	600(ra) # 800110a8 <_Unwind_Resume>
    80005e58:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005e5c:	000c8513          	mv	a0,s9
    80005e60:	ffffc097          	auipc	ra,0xffffc
    80005e64:	710080e7          	jalr	1808(ra) # 80002570 <_ZdlPv>
    80005e68:	00048513          	mv	a0,s1
    80005e6c:	0000b097          	auipc	ra,0xb
    80005e70:	23c080e7          	jalr	572(ra) # 800110a8 <_Unwind_Resume>
    80005e74:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005e78:	000c8513          	mv	a0,s9
    80005e7c:	ffffc097          	auipc	ra,0xffffc
    80005e80:	6f4080e7          	jalr	1780(ra) # 80002570 <_ZdlPv>
    80005e84:	00048513          	mv	a0,s1
    80005e88:	0000b097          	auipc	ra,0xb
    80005e8c:	220080e7          	jalr	544(ra) # 800110a8 <_Unwind_Resume>

0000000080005e90 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005e90:	ff010113          	addi	sp,sp,-16
    80005e94:	00113423          	sd	ra,8(sp)
    80005e98:	00813023          	sd	s0,0(sp)
    80005e9c:	01010413          	addi	s0,sp,16
    80005ea0:	0000a797          	auipc	a5,0xa
    80005ea4:	ed878793          	addi	a5,a5,-296 # 8000fd78 <_ZTV12ConsumerSync+0x10>
    80005ea8:	00f53023          	sd	a5,0(a0)
    80005eac:	ffffc097          	auipc	ra,0xffffc
    80005eb0:	5f0080e7          	jalr	1520(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005eb4:	00813083          	ld	ra,8(sp)
    80005eb8:	00013403          	ld	s0,0(sp)
    80005ebc:	01010113          	addi	sp,sp,16
    80005ec0:	00008067          	ret

0000000080005ec4 <_ZN12ConsumerSyncD0Ev>:
    80005ec4:	fe010113          	addi	sp,sp,-32
    80005ec8:	00113c23          	sd	ra,24(sp)
    80005ecc:	00813823          	sd	s0,16(sp)
    80005ed0:	00913423          	sd	s1,8(sp)
    80005ed4:	02010413          	addi	s0,sp,32
    80005ed8:	00050493          	mv	s1,a0
    80005edc:	0000a797          	auipc	a5,0xa
    80005ee0:	e9c78793          	addi	a5,a5,-356 # 8000fd78 <_ZTV12ConsumerSync+0x10>
    80005ee4:	00f53023          	sd	a5,0(a0)
    80005ee8:	ffffc097          	auipc	ra,0xffffc
    80005eec:	5b4080e7          	jalr	1460(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005ef0:	00048513          	mv	a0,s1
    80005ef4:	ffffc097          	auipc	ra,0xffffc
    80005ef8:	67c080e7          	jalr	1660(ra) # 80002570 <_ZdlPv>
    80005efc:	01813083          	ld	ra,24(sp)
    80005f00:	01013403          	ld	s0,16(sp)
    80005f04:	00813483          	ld	s1,8(sp)
    80005f08:	02010113          	addi	sp,sp,32
    80005f0c:	00008067          	ret

0000000080005f10 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005f10:	ff010113          	addi	sp,sp,-16
    80005f14:	00113423          	sd	ra,8(sp)
    80005f18:	00813023          	sd	s0,0(sp)
    80005f1c:	01010413          	addi	s0,sp,16
    80005f20:	0000a797          	auipc	a5,0xa
    80005f24:	e3078793          	addi	a5,a5,-464 # 8000fd50 <_ZTV12ProducerSync+0x10>
    80005f28:	00f53023          	sd	a5,0(a0)
    80005f2c:	ffffc097          	auipc	ra,0xffffc
    80005f30:	570080e7          	jalr	1392(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005f34:	00813083          	ld	ra,8(sp)
    80005f38:	00013403          	ld	s0,0(sp)
    80005f3c:	01010113          	addi	sp,sp,16
    80005f40:	00008067          	ret

0000000080005f44 <_ZN12ProducerSyncD0Ev>:
    80005f44:	fe010113          	addi	sp,sp,-32
    80005f48:	00113c23          	sd	ra,24(sp)
    80005f4c:	00813823          	sd	s0,16(sp)
    80005f50:	00913423          	sd	s1,8(sp)
    80005f54:	02010413          	addi	s0,sp,32
    80005f58:	00050493          	mv	s1,a0
    80005f5c:	0000a797          	auipc	a5,0xa
    80005f60:	df478793          	addi	a5,a5,-524 # 8000fd50 <_ZTV12ProducerSync+0x10>
    80005f64:	00f53023          	sd	a5,0(a0)
    80005f68:	ffffc097          	auipc	ra,0xffffc
    80005f6c:	534080e7          	jalr	1332(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005f70:	00048513          	mv	a0,s1
    80005f74:	ffffc097          	auipc	ra,0xffffc
    80005f78:	5fc080e7          	jalr	1532(ra) # 80002570 <_ZdlPv>
    80005f7c:	01813083          	ld	ra,24(sp)
    80005f80:	01013403          	ld	s0,16(sp)
    80005f84:	00813483          	ld	s1,8(sp)
    80005f88:	02010113          	addi	sp,sp,32
    80005f8c:	00008067          	ret

0000000080005f90 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005f90:	ff010113          	addi	sp,sp,-16
    80005f94:	00113423          	sd	ra,8(sp)
    80005f98:	00813023          	sd	s0,0(sp)
    80005f9c:	01010413          	addi	s0,sp,16
    80005fa0:	0000a797          	auipc	a5,0xa
    80005fa4:	d8878793          	addi	a5,a5,-632 # 8000fd28 <_ZTV16ProducerKeyboard+0x10>
    80005fa8:	00f53023          	sd	a5,0(a0)
    80005fac:	ffffc097          	auipc	ra,0xffffc
    80005fb0:	4f0080e7          	jalr	1264(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005fb4:	00813083          	ld	ra,8(sp)
    80005fb8:	00013403          	ld	s0,0(sp)
    80005fbc:	01010113          	addi	sp,sp,16
    80005fc0:	00008067          	ret

0000000080005fc4 <_ZN16ProducerKeyboardD0Ev>:
    80005fc4:	fe010113          	addi	sp,sp,-32
    80005fc8:	00113c23          	sd	ra,24(sp)
    80005fcc:	00813823          	sd	s0,16(sp)
    80005fd0:	00913423          	sd	s1,8(sp)
    80005fd4:	02010413          	addi	s0,sp,32
    80005fd8:	00050493          	mv	s1,a0
    80005fdc:	0000a797          	auipc	a5,0xa
    80005fe0:	d4c78793          	addi	a5,a5,-692 # 8000fd28 <_ZTV16ProducerKeyboard+0x10>
    80005fe4:	00f53023          	sd	a5,0(a0)
    80005fe8:	ffffc097          	auipc	ra,0xffffc
    80005fec:	4b4080e7          	jalr	1204(ra) # 8000249c <_ZN6ThreadD1Ev>
    80005ff0:	00048513          	mv	a0,s1
    80005ff4:	ffffc097          	auipc	ra,0xffffc
    80005ff8:	57c080e7          	jalr	1404(ra) # 80002570 <_ZdlPv>
    80005ffc:	01813083          	ld	ra,24(sp)
    80006000:	01013403          	ld	s0,16(sp)
    80006004:	00813483          	ld	s1,8(sp)
    80006008:	02010113          	addi	sp,sp,32
    8000600c:	00008067          	ret

0000000080006010 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80006010:	ff010113          	addi	sp,sp,-16
    80006014:	00113423          	sd	ra,8(sp)
    80006018:	00813023          	sd	s0,0(sp)
    8000601c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80006020:	02053583          	ld	a1,32(a0)
    80006024:	fffff097          	auipc	ra,0xfffff
    80006028:	7e4080e7          	jalr	2020(ra) # 80005808 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    8000602c:	00813083          	ld	ra,8(sp)
    80006030:	00013403          	ld	s0,0(sp)
    80006034:	01010113          	addi	sp,sp,16
    80006038:	00008067          	ret

000000008000603c <_ZN12ProducerSync3runEv>:
    void run() override {
    8000603c:	ff010113          	addi	sp,sp,-16
    80006040:	00113423          	sd	ra,8(sp)
    80006044:	00813023          	sd	s0,0(sp)
    80006048:	01010413          	addi	s0,sp,16
        producer(td);
    8000604c:	02053583          	ld	a1,32(a0)
    80006050:	00000097          	auipc	ra,0x0
    80006054:	878080e7          	jalr	-1928(ra) # 800058c8 <_ZN12ProducerSync8producerEPv>
    }
    80006058:	00813083          	ld	ra,8(sp)
    8000605c:	00013403          	ld	s0,0(sp)
    80006060:	01010113          	addi	sp,sp,16
    80006064:	00008067          	ret

0000000080006068 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80006068:	ff010113          	addi	sp,sp,-16
    8000606c:	00113423          	sd	ra,8(sp)
    80006070:	00813023          	sd	s0,0(sp)
    80006074:	01010413          	addi	s0,sp,16
        consumer(td);
    80006078:	02053583          	ld	a1,32(a0)
    8000607c:	00000097          	auipc	ra,0x0
    80006080:	8e0080e7          	jalr	-1824(ra) # 8000595c <_ZN12ConsumerSync8consumerEPv>
    }
    80006084:	00813083          	ld	ra,8(sp)
    80006088:	00013403          	ld	s0,0(sp)
    8000608c:	01010113          	addi	sp,sp,16
    80006090:	00008067          	ret

0000000080006094 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006094:	fe010113          	addi	sp,sp,-32
    80006098:	00113c23          	sd	ra,24(sp)
    8000609c:	00813823          	sd	s0,16(sp)
    800060a0:	00913423          	sd	s1,8(sp)
    800060a4:	02010413          	addi	s0,sp,32
    800060a8:	00050493          	mv	s1,a0
    LOCK();
    800060ac:	00100613          	li	a2,1
    800060b0:	00000593          	li	a1,0
    800060b4:	0000a517          	auipc	a0,0xa
    800060b8:	ecc50513          	addi	a0,a0,-308 # 8000ff80 <lockPrint>
    800060bc:	ffffb097          	auipc	ra,0xffffb
    800060c0:	068080e7          	jalr	104(ra) # 80001124 <copy_and_swap>
    800060c4:	00050863          	beqz	a0,800060d4 <_Z11printStringPKc+0x40>
    800060c8:	ffffb097          	auipc	ra,0xffffb
    800060cc:	3b0080e7          	jalr	944(ra) # 80001478 <_Z15thread_dispatchv>
    800060d0:	fddff06f          	j	800060ac <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800060d4:	0004c503          	lbu	a0,0(s1)
    800060d8:	00050a63          	beqz	a0,800060ec <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800060dc:	ffffb097          	auipc	ra,0xffffb
    800060e0:	648080e7          	jalr	1608(ra) # 80001724 <_Z4putcc>
        string++;
    800060e4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800060e8:	fedff06f          	j	800060d4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800060ec:	00000613          	li	a2,0
    800060f0:	00100593          	li	a1,1
    800060f4:	0000a517          	auipc	a0,0xa
    800060f8:	e8c50513          	addi	a0,a0,-372 # 8000ff80 <lockPrint>
    800060fc:	ffffb097          	auipc	ra,0xffffb
    80006100:	028080e7          	jalr	40(ra) # 80001124 <copy_and_swap>
    80006104:	fe0514e3          	bnez	a0,800060ec <_Z11printStringPKc+0x58>
}
    80006108:	01813083          	ld	ra,24(sp)
    8000610c:	01013403          	ld	s0,16(sp)
    80006110:	00813483          	ld	s1,8(sp)
    80006114:	02010113          	addi	sp,sp,32
    80006118:	00008067          	ret

000000008000611c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000611c:	fd010113          	addi	sp,sp,-48
    80006120:	02113423          	sd	ra,40(sp)
    80006124:	02813023          	sd	s0,32(sp)
    80006128:	00913c23          	sd	s1,24(sp)
    8000612c:	01213823          	sd	s2,16(sp)
    80006130:	01313423          	sd	s3,8(sp)
    80006134:	01413023          	sd	s4,0(sp)
    80006138:	03010413          	addi	s0,sp,48
    8000613c:	00050993          	mv	s3,a0
    80006140:	00058a13          	mv	s4,a1
    LOCK();
    80006144:	00100613          	li	a2,1
    80006148:	00000593          	li	a1,0
    8000614c:	0000a517          	auipc	a0,0xa
    80006150:	e3450513          	addi	a0,a0,-460 # 8000ff80 <lockPrint>
    80006154:	ffffb097          	auipc	ra,0xffffb
    80006158:	fd0080e7          	jalr	-48(ra) # 80001124 <copy_and_swap>
    8000615c:	00050863          	beqz	a0,8000616c <_Z9getStringPci+0x50>
    80006160:	ffffb097          	auipc	ra,0xffffb
    80006164:	318080e7          	jalr	792(ra) # 80001478 <_Z15thread_dispatchv>
    80006168:	fddff06f          	j	80006144 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000616c:	00000913          	li	s2,0
    80006170:	00090493          	mv	s1,s2
    80006174:	0019091b          	addiw	s2,s2,1
    80006178:	03495a63          	bge	s2,s4,800061ac <_Z9getStringPci+0x90>
        cc = getc();
    8000617c:	ffffb097          	auipc	ra,0xffffb
    80006180:	56c080e7          	jalr	1388(ra) # 800016e8 <_Z4getcv>
        if(cc < 1)
    80006184:	02050463          	beqz	a0,800061ac <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80006188:	009984b3          	add	s1,s3,s1
    8000618c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80006190:	00a00793          	li	a5,10
    80006194:	00f50a63          	beq	a0,a5,800061a8 <_Z9getStringPci+0x8c>
    80006198:	00d00793          	li	a5,13
    8000619c:	fcf51ae3          	bne	a0,a5,80006170 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800061a0:	00090493          	mv	s1,s2
    800061a4:	0080006f          	j	800061ac <_Z9getStringPci+0x90>
    800061a8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800061ac:	009984b3          	add	s1,s3,s1
    800061b0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800061b4:	00000613          	li	a2,0
    800061b8:	00100593          	li	a1,1
    800061bc:	0000a517          	auipc	a0,0xa
    800061c0:	dc450513          	addi	a0,a0,-572 # 8000ff80 <lockPrint>
    800061c4:	ffffb097          	auipc	ra,0xffffb
    800061c8:	f60080e7          	jalr	-160(ra) # 80001124 <copy_and_swap>
    800061cc:	fe0514e3          	bnez	a0,800061b4 <_Z9getStringPci+0x98>
    return buf;
}
    800061d0:	00098513          	mv	a0,s3
    800061d4:	02813083          	ld	ra,40(sp)
    800061d8:	02013403          	ld	s0,32(sp)
    800061dc:	01813483          	ld	s1,24(sp)
    800061e0:	01013903          	ld	s2,16(sp)
    800061e4:	00813983          	ld	s3,8(sp)
    800061e8:	00013a03          	ld	s4,0(sp)
    800061ec:	03010113          	addi	sp,sp,48
    800061f0:	00008067          	ret

00000000800061f4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800061f4:	ff010113          	addi	sp,sp,-16
    800061f8:	00813423          	sd	s0,8(sp)
    800061fc:	01010413          	addi	s0,sp,16
    80006200:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006204:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006208:	0006c603          	lbu	a2,0(a3)
    8000620c:	fd06071b          	addiw	a4,a2,-48
    80006210:	0ff77713          	andi	a4,a4,255
    80006214:	00900793          	li	a5,9
    80006218:	02e7e063          	bltu	a5,a4,80006238 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000621c:	0025179b          	slliw	a5,a0,0x2
    80006220:	00a787bb          	addw	a5,a5,a0
    80006224:	0017979b          	slliw	a5,a5,0x1
    80006228:	00168693          	addi	a3,a3,1
    8000622c:	00c787bb          	addw	a5,a5,a2
    80006230:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80006234:	fd5ff06f          	j	80006208 <_Z11stringToIntPKc+0x14>
    return n;
}
    80006238:	00813403          	ld	s0,8(sp)
    8000623c:	01010113          	addi	sp,sp,16
    80006240:	00008067          	ret

0000000080006244 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80006244:	fc010113          	addi	sp,sp,-64
    80006248:	02113c23          	sd	ra,56(sp)
    8000624c:	02813823          	sd	s0,48(sp)
    80006250:	02913423          	sd	s1,40(sp)
    80006254:	03213023          	sd	s2,32(sp)
    80006258:	01313c23          	sd	s3,24(sp)
    8000625c:	04010413          	addi	s0,sp,64
    80006260:	00050493          	mv	s1,a0
    80006264:	00058913          	mv	s2,a1
    80006268:	00060993          	mv	s3,a2
    LOCK();
    8000626c:	00100613          	li	a2,1
    80006270:	00000593          	li	a1,0
    80006274:	0000a517          	auipc	a0,0xa
    80006278:	d0c50513          	addi	a0,a0,-756 # 8000ff80 <lockPrint>
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	ea8080e7          	jalr	-344(ra) # 80001124 <copy_and_swap>
    80006284:	00050863          	beqz	a0,80006294 <_Z8printIntiii+0x50>
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	1f0080e7          	jalr	496(ra) # 80001478 <_Z15thread_dispatchv>
    80006290:	fddff06f          	j	8000626c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006294:	00098463          	beqz	s3,8000629c <_Z8printIntiii+0x58>
    80006298:	0804c463          	bltz	s1,80006320 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000629c:	0004851b          	sext.w	a0,s1
    neg = 0;
    800062a0:	00000593          	li	a1,0
    }

    i = 0;
    800062a4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800062a8:	0009079b          	sext.w	a5,s2
    800062ac:	0325773b          	remuw	a4,a0,s2
    800062b0:	00048613          	mv	a2,s1
    800062b4:	0014849b          	addiw	s1,s1,1
    800062b8:	02071693          	slli	a3,a4,0x20
    800062bc:	0206d693          	srli	a3,a3,0x20
    800062c0:	0000a717          	auipc	a4,0xa
    800062c4:	ad070713          	addi	a4,a4,-1328 # 8000fd90 <digits>
    800062c8:	00d70733          	add	a4,a4,a3
    800062cc:	00074683          	lbu	a3,0(a4)
    800062d0:	fd040713          	addi	a4,s0,-48
    800062d4:	00c70733          	add	a4,a4,a2
    800062d8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800062dc:	0005071b          	sext.w	a4,a0
    800062e0:	0325553b          	divuw	a0,a0,s2
    800062e4:	fcf772e3          	bgeu	a4,a5,800062a8 <_Z8printIntiii+0x64>
    if(neg)
    800062e8:	00058c63          	beqz	a1,80006300 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800062ec:	fd040793          	addi	a5,s0,-48
    800062f0:	009784b3          	add	s1,a5,s1
    800062f4:	02d00793          	li	a5,45
    800062f8:	fef48823          	sb	a5,-16(s1)
    800062fc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80006300:	fff4849b          	addiw	s1,s1,-1
    80006304:	0204c463          	bltz	s1,8000632c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006308:	fd040793          	addi	a5,s0,-48
    8000630c:	009787b3          	add	a5,a5,s1
    80006310:	ff07c503          	lbu	a0,-16(a5)
    80006314:	ffffb097          	auipc	ra,0xffffb
    80006318:	410080e7          	jalr	1040(ra) # 80001724 <_Z4putcc>
    8000631c:	fe5ff06f          	j	80006300 <_Z8printIntiii+0xbc>
        x = -xx;
    80006320:	4090053b          	negw	a0,s1
        neg = 1;
    80006324:	00100593          	li	a1,1
        x = -xx;
    80006328:	f7dff06f          	j	800062a4 <_Z8printIntiii+0x60>

    UNLOCK();
    8000632c:	00000613          	li	a2,0
    80006330:	00100593          	li	a1,1
    80006334:	0000a517          	auipc	a0,0xa
    80006338:	c4c50513          	addi	a0,a0,-948 # 8000ff80 <lockPrint>
    8000633c:	ffffb097          	auipc	ra,0xffffb
    80006340:	de8080e7          	jalr	-536(ra) # 80001124 <copy_and_swap>
    80006344:	fe0514e3          	bnez	a0,8000632c <_Z8printIntiii+0xe8>
    80006348:	03813083          	ld	ra,56(sp)
    8000634c:	03013403          	ld	s0,48(sp)
    80006350:	02813483          	ld	s1,40(sp)
    80006354:	02013903          	ld	s2,32(sp)
    80006358:	01813983          	ld	s3,24(sp)
    8000635c:	04010113          	addi	sp,sp,64
    80006360:	00008067          	ret

0000000080006364 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006364:	fd010113          	addi	sp,sp,-48
    80006368:	02113423          	sd	ra,40(sp)
    8000636c:	02813023          	sd	s0,32(sp)
    80006370:	00913c23          	sd	s1,24(sp)
    80006374:	01213823          	sd	s2,16(sp)
    80006378:	01313423          	sd	s3,8(sp)
    8000637c:	03010413          	addi	s0,sp,48
    80006380:	00050493          	mv	s1,a0
    80006384:	00058913          	mv	s2,a1
    80006388:	0015879b          	addiw	a5,a1,1
    8000638c:	0007851b          	sext.w	a0,a5
    80006390:	00f4a023          	sw	a5,0(s1)
    80006394:	0004a823          	sw	zero,16(s1)
    80006398:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000639c:	00251513          	slli	a0,a0,0x2
    800063a0:	ffffb097          	auipc	ra,0xffffb
    800063a4:	fb8080e7          	jalr	-72(ra) # 80001358 <_Z9mem_allocm>
    800063a8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800063ac:	01000513          	li	a0,16
    800063b0:	ffffc097          	auipc	ra,0xffffc
    800063b4:	170080e7          	jalr	368(ra) # 80002520 <_Znwm>
    800063b8:	00050993          	mv	s3,a0
    800063bc:	00000593          	li	a1,0
    800063c0:	ffffc097          	auipc	ra,0xffffc
    800063c4:	428080e7          	jalr	1064(ra) # 800027e8 <_ZN9SemaphoreC1Ej>
    800063c8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800063cc:	01000513          	li	a0,16
    800063d0:	ffffc097          	auipc	ra,0xffffc
    800063d4:	150080e7          	jalr	336(ra) # 80002520 <_Znwm>
    800063d8:	00050993          	mv	s3,a0
    800063dc:	00090593          	mv	a1,s2
    800063e0:	ffffc097          	auipc	ra,0xffffc
    800063e4:	408080e7          	jalr	1032(ra) # 800027e8 <_ZN9SemaphoreC1Ej>
    800063e8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800063ec:	01000513          	li	a0,16
    800063f0:	ffffc097          	auipc	ra,0xffffc
    800063f4:	130080e7          	jalr	304(ra) # 80002520 <_Znwm>
    800063f8:	00050913          	mv	s2,a0
    800063fc:	00100593          	li	a1,1
    80006400:	ffffc097          	auipc	ra,0xffffc
    80006404:	3e8080e7          	jalr	1000(ra) # 800027e8 <_ZN9SemaphoreC1Ej>
    80006408:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000640c:	01000513          	li	a0,16
    80006410:	ffffc097          	auipc	ra,0xffffc
    80006414:	110080e7          	jalr	272(ra) # 80002520 <_Znwm>
    80006418:	00050913          	mv	s2,a0
    8000641c:	00100593          	li	a1,1
    80006420:	ffffc097          	auipc	ra,0xffffc
    80006424:	3c8080e7          	jalr	968(ra) # 800027e8 <_ZN9SemaphoreC1Ej>
    80006428:	0324b823          	sd	s2,48(s1)
}
    8000642c:	02813083          	ld	ra,40(sp)
    80006430:	02013403          	ld	s0,32(sp)
    80006434:	01813483          	ld	s1,24(sp)
    80006438:	01013903          	ld	s2,16(sp)
    8000643c:	00813983          	ld	s3,8(sp)
    80006440:	03010113          	addi	sp,sp,48
    80006444:	00008067          	ret
    80006448:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000644c:	00098513          	mv	a0,s3
    80006450:	ffffc097          	auipc	ra,0xffffc
    80006454:	120080e7          	jalr	288(ra) # 80002570 <_ZdlPv>
    80006458:	00048513          	mv	a0,s1
    8000645c:	0000b097          	auipc	ra,0xb
    80006460:	c4c080e7          	jalr	-948(ra) # 800110a8 <_Unwind_Resume>
    80006464:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80006468:	00098513          	mv	a0,s3
    8000646c:	ffffc097          	auipc	ra,0xffffc
    80006470:	104080e7          	jalr	260(ra) # 80002570 <_ZdlPv>
    80006474:	00048513          	mv	a0,s1
    80006478:	0000b097          	auipc	ra,0xb
    8000647c:	c30080e7          	jalr	-976(ra) # 800110a8 <_Unwind_Resume>
    80006480:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80006484:	00090513          	mv	a0,s2
    80006488:	ffffc097          	auipc	ra,0xffffc
    8000648c:	0e8080e7          	jalr	232(ra) # 80002570 <_ZdlPv>
    80006490:	00048513          	mv	a0,s1
    80006494:	0000b097          	auipc	ra,0xb
    80006498:	c14080e7          	jalr	-1004(ra) # 800110a8 <_Unwind_Resume>
    8000649c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800064a0:	00090513          	mv	a0,s2
    800064a4:	ffffc097          	auipc	ra,0xffffc
    800064a8:	0cc080e7          	jalr	204(ra) # 80002570 <_ZdlPv>
    800064ac:	00048513          	mv	a0,s1
    800064b0:	0000b097          	auipc	ra,0xb
    800064b4:	bf8080e7          	jalr	-1032(ra) # 800110a8 <_Unwind_Resume>

00000000800064b8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800064b8:	fe010113          	addi	sp,sp,-32
    800064bc:	00113c23          	sd	ra,24(sp)
    800064c0:	00813823          	sd	s0,16(sp)
    800064c4:	00913423          	sd	s1,8(sp)
    800064c8:	01213023          	sd	s2,0(sp)
    800064cc:	02010413          	addi	s0,sp,32
    800064d0:	00050493          	mv	s1,a0
    800064d4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800064d8:	01853503          	ld	a0,24(a0)
    800064dc:	ffffc097          	auipc	ra,0xffffc
    800064e0:	344080e7          	jalr	836(ra) # 80002820 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800064e4:	0304b503          	ld	a0,48(s1)
    800064e8:	ffffc097          	auipc	ra,0xffffc
    800064ec:	338080e7          	jalr	824(ra) # 80002820 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800064f0:	0084b783          	ld	a5,8(s1)
    800064f4:	0144a703          	lw	a4,20(s1)
    800064f8:	00271713          	slli	a4,a4,0x2
    800064fc:	00e787b3          	add	a5,a5,a4
    80006500:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006504:	0144a783          	lw	a5,20(s1)
    80006508:	0017879b          	addiw	a5,a5,1
    8000650c:	0004a703          	lw	a4,0(s1)
    80006510:	02e7e7bb          	remw	a5,a5,a4
    80006514:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006518:	0304b503          	ld	a0,48(s1)
    8000651c:	ffffc097          	auipc	ra,0xffffc
    80006520:	330080e7          	jalr	816(ra) # 8000284c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006524:	0204b503          	ld	a0,32(s1)
    80006528:	ffffc097          	auipc	ra,0xffffc
    8000652c:	324080e7          	jalr	804(ra) # 8000284c <_ZN9Semaphore6signalEv>

}
    80006530:	01813083          	ld	ra,24(sp)
    80006534:	01013403          	ld	s0,16(sp)
    80006538:	00813483          	ld	s1,8(sp)
    8000653c:	00013903          	ld	s2,0(sp)
    80006540:	02010113          	addi	sp,sp,32
    80006544:	00008067          	ret

0000000080006548 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80006548:	fe010113          	addi	sp,sp,-32
    8000654c:	00113c23          	sd	ra,24(sp)
    80006550:	00813823          	sd	s0,16(sp)
    80006554:	00913423          	sd	s1,8(sp)
    80006558:	01213023          	sd	s2,0(sp)
    8000655c:	02010413          	addi	s0,sp,32
    80006560:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80006564:	02053503          	ld	a0,32(a0)
    80006568:	ffffc097          	auipc	ra,0xffffc
    8000656c:	2b8080e7          	jalr	696(ra) # 80002820 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80006570:	0284b503          	ld	a0,40(s1)
    80006574:	ffffc097          	auipc	ra,0xffffc
    80006578:	2ac080e7          	jalr	684(ra) # 80002820 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000657c:	0084b703          	ld	a4,8(s1)
    80006580:	0104a783          	lw	a5,16(s1)
    80006584:	00279693          	slli	a3,a5,0x2
    80006588:	00d70733          	add	a4,a4,a3
    8000658c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80006590:	0017879b          	addiw	a5,a5,1
    80006594:	0004a703          	lw	a4,0(s1)
    80006598:	02e7e7bb          	remw	a5,a5,a4
    8000659c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800065a0:	0284b503          	ld	a0,40(s1)
    800065a4:	ffffc097          	auipc	ra,0xffffc
    800065a8:	2a8080e7          	jalr	680(ra) # 8000284c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800065ac:	0184b503          	ld	a0,24(s1)
    800065b0:	ffffc097          	auipc	ra,0xffffc
    800065b4:	29c080e7          	jalr	668(ra) # 8000284c <_ZN9Semaphore6signalEv>

    return ret;
}
    800065b8:	00090513          	mv	a0,s2
    800065bc:	01813083          	ld	ra,24(sp)
    800065c0:	01013403          	ld	s0,16(sp)
    800065c4:	00813483          	ld	s1,8(sp)
    800065c8:	00013903          	ld	s2,0(sp)
    800065cc:	02010113          	addi	sp,sp,32
    800065d0:	00008067          	ret

00000000800065d4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800065d4:	fe010113          	addi	sp,sp,-32
    800065d8:	00113c23          	sd	ra,24(sp)
    800065dc:	00813823          	sd	s0,16(sp)
    800065e0:	00913423          	sd	s1,8(sp)
    800065e4:	01213023          	sd	s2,0(sp)
    800065e8:	02010413          	addi	s0,sp,32
    800065ec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800065f0:	02853503          	ld	a0,40(a0)
    800065f4:	ffffc097          	auipc	ra,0xffffc
    800065f8:	22c080e7          	jalr	556(ra) # 80002820 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800065fc:	0304b503          	ld	a0,48(s1)
    80006600:	ffffc097          	auipc	ra,0xffffc
    80006604:	220080e7          	jalr	544(ra) # 80002820 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006608:	0144a783          	lw	a5,20(s1)
    8000660c:	0104a903          	lw	s2,16(s1)
    80006610:	0327ce63          	blt	a5,s2,8000664c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006614:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006618:	0304b503          	ld	a0,48(s1)
    8000661c:	ffffc097          	auipc	ra,0xffffc
    80006620:	230080e7          	jalr	560(ra) # 8000284c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006624:	0284b503          	ld	a0,40(s1)
    80006628:	ffffc097          	auipc	ra,0xffffc
    8000662c:	224080e7          	jalr	548(ra) # 8000284c <_ZN9Semaphore6signalEv>

    return ret;
}
    80006630:	00090513          	mv	a0,s2
    80006634:	01813083          	ld	ra,24(sp)
    80006638:	01013403          	ld	s0,16(sp)
    8000663c:	00813483          	ld	s1,8(sp)
    80006640:	00013903          	ld	s2,0(sp)
    80006644:	02010113          	addi	sp,sp,32
    80006648:	00008067          	ret
        ret = cap - head + tail;
    8000664c:	0004a703          	lw	a4,0(s1)
    80006650:	4127093b          	subw	s2,a4,s2
    80006654:	00f9093b          	addw	s2,s2,a5
    80006658:	fc1ff06f          	j	80006618 <_ZN9BufferCPP6getCntEv+0x44>

000000008000665c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000665c:	fe010113          	addi	sp,sp,-32
    80006660:	00113c23          	sd	ra,24(sp)
    80006664:	00813823          	sd	s0,16(sp)
    80006668:	00913423          	sd	s1,8(sp)
    8000666c:	02010413          	addi	s0,sp,32
    80006670:	00050493          	mv	s1,a0
    Console::putc('\n');
    80006674:	00a00513          	li	a0,10
    80006678:	ffffc097          	auipc	ra,0xffffc
    8000667c:	228080e7          	jalr	552(ra) # 800028a0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80006680:	00006517          	auipc	a0,0x6
    80006684:	df050513          	addi	a0,a0,-528 # 8000c470 <CONSOLE_STATUS+0x460>
    80006688:	00000097          	auipc	ra,0x0
    8000668c:	a0c080e7          	jalr	-1524(ra) # 80006094 <_Z11printStringPKc>
    while (getCnt()) {
    80006690:	00048513          	mv	a0,s1
    80006694:	00000097          	auipc	ra,0x0
    80006698:	f40080e7          	jalr	-192(ra) # 800065d4 <_ZN9BufferCPP6getCntEv>
    8000669c:	02050c63          	beqz	a0,800066d4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800066a0:	0084b783          	ld	a5,8(s1)
    800066a4:	0104a703          	lw	a4,16(s1)
    800066a8:	00271713          	slli	a4,a4,0x2
    800066ac:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800066b0:	0007c503          	lbu	a0,0(a5)
    800066b4:	ffffc097          	auipc	ra,0xffffc
    800066b8:	1ec080e7          	jalr	492(ra) # 800028a0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800066bc:	0104a783          	lw	a5,16(s1)
    800066c0:	0017879b          	addiw	a5,a5,1
    800066c4:	0004a703          	lw	a4,0(s1)
    800066c8:	02e7e7bb          	remw	a5,a5,a4
    800066cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800066d0:	fc1ff06f          	j	80006690 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800066d4:	02100513          	li	a0,33
    800066d8:	ffffc097          	auipc	ra,0xffffc
    800066dc:	1c8080e7          	jalr	456(ra) # 800028a0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800066e0:	00a00513          	li	a0,10
    800066e4:	ffffc097          	auipc	ra,0xffffc
    800066e8:	1bc080e7          	jalr	444(ra) # 800028a0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800066ec:	0084b503          	ld	a0,8(s1)
    800066f0:	ffffb097          	auipc	ra,0xffffb
    800066f4:	ca0080e7          	jalr	-864(ra) # 80001390 <_Z8mem_freePv>
    delete itemAvailable;
    800066f8:	0204b503          	ld	a0,32(s1)
    800066fc:	00050863          	beqz	a0,8000670c <_ZN9BufferCPPD1Ev+0xb0>
    80006700:	00053783          	ld	a5,0(a0)
    80006704:	0087b783          	ld	a5,8(a5)
    80006708:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000670c:	0184b503          	ld	a0,24(s1)
    80006710:	00050863          	beqz	a0,80006720 <_ZN9BufferCPPD1Ev+0xc4>
    80006714:	00053783          	ld	a5,0(a0)
    80006718:	0087b783          	ld	a5,8(a5)
    8000671c:	000780e7          	jalr	a5
    delete mutexTail;
    80006720:	0304b503          	ld	a0,48(s1)
    80006724:	00050863          	beqz	a0,80006734 <_ZN9BufferCPPD1Ev+0xd8>
    80006728:	00053783          	ld	a5,0(a0)
    8000672c:	0087b783          	ld	a5,8(a5)
    80006730:	000780e7          	jalr	a5
    delete mutexHead;
    80006734:	0284b503          	ld	a0,40(s1)
    80006738:	00050863          	beqz	a0,80006748 <_ZN9BufferCPPD1Ev+0xec>
    8000673c:	00053783          	ld	a5,0(a0)
    80006740:	0087b783          	ld	a5,8(a5)
    80006744:	000780e7          	jalr	a5
}
    80006748:	01813083          	ld	ra,24(sp)
    8000674c:	01013403          	ld	s0,16(sp)
    80006750:	00813483          	ld	s1,8(sp)
    80006754:	02010113          	addi	sp,sp,32
    80006758:	00008067          	ret

000000008000675c <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    8000675c:	fe010113          	addi	sp,sp,-32
    80006760:	00113c23          	sd	ra,24(sp)
    80006764:	00813823          	sd	s0,16(sp)
    80006768:	00913423          	sd	s1,8(sp)
    8000676c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-9]\n");
    80006770:	00006517          	auipc	a0,0x6
    80006774:	d1850513          	addi	a0,a0,-744 # 8000c488 <CONSOLE_STATUS+0x478>
    80006778:	00000097          	auipc	ra,0x0
    8000677c:	91c080e7          	jalr	-1764(ra) # 80006094 <_Z11printStringPKc>
    int test = getc() - '0';
    80006780:	ffffb097          	auipc	ra,0xffffb
    80006784:	f68080e7          	jalr	-152(ra) # 800016e8 <_Z4getcv>
    80006788:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    8000678c:	ffffb097          	auipc	ra,0xffffb
    80006790:	f5c080e7          	jalr	-164(ra) # 800016e8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80006794:	00900793          	li	a5,9
    80006798:	1297ea63          	bltu	a5,s1,800068cc <_Z8userMainv+0x170>
    8000679c:	00249493          	slli	s1,s1,0x2
    800067a0:	00006717          	auipc	a4,0x6
    800067a4:	fb070713          	addi	a4,a4,-80 # 8000c750 <CONSOLE_STATUS+0x740>
    800067a8:	00e484b3          	add	s1,s1,a4
    800067ac:	0004a783          	lw	a5,0(s1)
    800067b0:	00e787b3          	add	a5,a5,a4
    800067b4:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    800067b8:	fffff097          	auipc	ra,0xfffff
    800067bc:	800080e7          	jalr	-2048(ra) # 80004fb8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    800067c0:	00006517          	auipc	a0,0x6
    800067c4:	ce850513          	addi	a0,a0,-792 # 8000c4a8 <CONSOLE_STATUS+0x498>
    800067c8:	00000097          	auipc	ra,0x0
    800067cc:	8cc080e7          	jalr	-1844(ra) # 80006094 <_Z11printStringPKc>
            printString("Test 9 (thread paired cpp api) uspesno realizovan!\n");
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800067d0:	01813083          	ld	ra,24(sp)
    800067d4:	01013403          	ld	s0,16(sp)
    800067d8:	00813483          	ld	s1,8(sp)
    800067dc:	02010113          	addi	sp,sp,32
    800067e0:	00008067          	ret
            Threads_CPP_API_test();
    800067e4:	ffffd097          	auipc	ra,0xffffd
    800067e8:	6b4080e7          	jalr	1716(ra) # 80003e98 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800067ec:	00006517          	auipc	a0,0x6
    800067f0:	cfc50513          	addi	a0,a0,-772 # 8000c4e8 <CONSOLE_STATUS+0x4d8>
    800067f4:	00000097          	auipc	ra,0x0
    800067f8:	8a0080e7          	jalr	-1888(ra) # 80006094 <_Z11printStringPKc>
            break;
    800067fc:	fd5ff06f          	j	800067d0 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80006800:	ffffd097          	auipc	ra,0xffffd
    80006804:	eec080e7          	jalr	-276(ra) # 800036ec <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80006808:	00006517          	auipc	a0,0x6
    8000680c:	d2050513          	addi	a0,a0,-736 # 8000c528 <CONSOLE_STATUS+0x518>
    80006810:	00000097          	auipc	ra,0x0
    80006814:	884080e7          	jalr	-1916(ra) # 80006094 <_Z11printStringPKc>
            break;
    80006818:	fb9ff06f          	j	800067d0 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    8000681c:	fffff097          	auipc	ra,0xfffff
    80006820:	234080e7          	jalr	564(ra) # 80005a50 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80006824:	00006517          	auipc	a0,0x6
    80006828:	d5450513          	addi	a0,a0,-684 # 8000c578 <CONSOLE_STATUS+0x568>
    8000682c:	00000097          	auipc	ra,0x0
    80006830:	868080e7          	jalr	-1944(ra) # 80006094 <_Z11printStringPKc>
            break;
    80006834:	f9dff06f          	j	800067d0 <_Z8userMainv+0x74>
            testSleeping();
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	14c080e7          	jalr	332(ra) # 80006984 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80006840:	00006517          	auipc	a0,0x6
    80006844:	d9050513          	addi	a0,a0,-624 # 8000c5d0 <CONSOLE_STATUS+0x5c0>
    80006848:	00000097          	auipc	ra,0x0
    8000684c:	84c080e7          	jalr	-1972(ra) # 80006094 <_Z11printStringPKc>
            break;
    80006850:	f81ff06f          	j	800067d0 <_Z8userMainv+0x74>
            testConsumerProducer();
    80006854:	ffffe097          	auipc	ra,0xffffe
    80006858:	b04080e7          	jalr	-1276(ra) # 80004358 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    8000685c:	00006517          	auipc	a0,0x6
    80006860:	da450513          	addi	a0,a0,-604 # 8000c600 <CONSOLE_STATUS+0x5f0>
    80006864:	00000097          	auipc	ra,0x0
    80006868:	830080e7          	jalr	-2000(ra) # 80006094 <_Z11printStringPKc>
            break;
    8000686c:	f65ff06f          	j	800067d0 <_Z8userMainv+0x74>
            System_Mode_test();
    80006870:	00001097          	auipc	ra,0x1
    80006874:	994080e7          	jalr	-1644(ra) # 80007204 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80006878:	00006517          	auipc	a0,0x6
    8000687c:	dc850513          	addi	a0,a0,-568 # 8000c640 <CONSOLE_STATUS+0x630>
    80006880:	00000097          	auipc	ra,0x0
    80006884:	814080e7          	jalr	-2028(ra) # 80006094 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80006888:	00006517          	auipc	a0,0x6
    8000688c:	dd850513          	addi	a0,a0,-552 # 8000c660 <CONSOLE_STATUS+0x650>
    80006890:	00000097          	auipc	ra,0x0
    80006894:	804080e7          	jalr	-2044(ra) # 80006094 <_Z11printStringPKc>
            break;
    80006898:	f39ff06f          	j	800067d0 <_Z8userMainv+0x74>
            makeMatrix();
    8000689c:	00000097          	auipc	ra,0x0
    800068a0:	170080e7          	jalr	368(ra) # 80006a0c <_Z10makeMatrixv>
            printString("Test 8 (thread join cpp api) uspesno realizovan!\n");
    800068a4:	00006517          	auipc	a0,0x6
    800068a8:	e1450513          	addi	a0,a0,-492 # 8000c6b8 <CONSOLE_STATUS+0x6a8>
    800068ac:	fffff097          	auipc	ra,0xfffff
    800068b0:	7e8080e7          	jalr	2024(ra) # 80006094 <_Z11printStringPKc>
            break;
    800068b4:	f1dff06f          	j	800067d0 <_Z8userMainv+0x74>
            printString("Test 9 (thread paired cpp api) uspesno realizovan!\n");
    800068b8:	00006517          	auipc	a0,0x6
    800068bc:	e3850513          	addi	a0,a0,-456 # 8000c6f0 <CONSOLE_STATUS+0x6e0>
    800068c0:	fffff097          	auipc	ra,0xfffff
    800068c4:	7d4080e7          	jalr	2004(ra) # 80006094 <_Z11printStringPKc>
            break;
    800068c8:	f09ff06f          	j	800067d0 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    800068cc:	00006517          	auipc	a0,0x6
    800068d0:	e5c50513          	addi	a0,a0,-420 # 8000c728 <CONSOLE_STATUS+0x718>
    800068d4:	fffff097          	auipc	ra,0xfffff
    800068d8:	7c0080e7          	jalr	1984(ra) # 80006094 <_Z11printStringPKc>
    800068dc:	ef5ff06f          	j	800067d0 <_Z8userMainv+0x74>

00000000800068e0 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800068e0:	fe010113          	addi	sp,sp,-32
    800068e4:	00113c23          	sd	ra,24(sp)
    800068e8:	00813823          	sd	s0,16(sp)
    800068ec:	00913423          	sd	s1,8(sp)
    800068f0:	01213023          	sd	s2,0(sp)
    800068f4:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800068f8:	00053903          	ld	s2,0(a0)
    int i = 6;
    800068fc:	00600493          	li	s1,6
    while (--i > 0) {
    80006900:	fff4849b          	addiw	s1,s1,-1
    80006904:	04905463          	blez	s1,8000694c <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80006908:	00006517          	auipc	a0,0x6
    8000690c:	e7050513          	addi	a0,a0,-400 # 8000c778 <CONSOLE_STATUS+0x768>
    80006910:	fffff097          	auipc	ra,0xfffff
    80006914:	784080e7          	jalr	1924(ra) # 80006094 <_Z11printStringPKc>
        printInt(sleep_time);
    80006918:	00000613          	li	a2,0
    8000691c:	00a00593          	li	a1,10
    80006920:	0009051b          	sext.w	a0,s2
    80006924:	00000097          	auipc	ra,0x0
    80006928:	920080e7          	jalr	-1760(ra) # 80006244 <_Z8printIntiii>
        printString(" !\n");
    8000692c:	00006517          	auipc	a0,0x6
    80006930:	e5450513          	addi	a0,a0,-428 # 8000c780 <CONSOLE_STATUS+0x770>
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	760080e7          	jalr	1888(ra) # 80006094 <_Z11printStringPKc>
        time_sleep(sleep_time);
    8000693c:	00090513          	mv	a0,s2
    80006940:	ffffb097          	auipc	ra,0xffffb
    80006944:	d60080e7          	jalr	-672(ra) # 800016a0 <_Z10time_sleepm>
    while (--i > 0) {
    80006948:	fb9ff06f          	j	80006900 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    8000694c:	00a00793          	li	a5,10
    80006950:	02f95933          	divu	s2,s2,a5
    80006954:	fff90913          	addi	s2,s2,-1
    80006958:	00009797          	auipc	a5,0x9
    8000695c:	63078793          	addi	a5,a5,1584 # 8000ff88 <_ZL8finished>
    80006960:	01278933          	add	s2,a5,s2
    80006964:	00100793          	li	a5,1
    80006968:	00f90023          	sb	a5,0(s2)
}
    8000696c:	01813083          	ld	ra,24(sp)
    80006970:	01013403          	ld	s0,16(sp)
    80006974:	00813483          	ld	s1,8(sp)
    80006978:	00013903          	ld	s2,0(sp)
    8000697c:	02010113          	addi	sp,sp,32
    80006980:	00008067          	ret

0000000080006984 <_Z12testSleepingv>:

void testSleeping() {
    80006984:	fc010113          	addi	sp,sp,-64
    80006988:	02113c23          	sd	ra,56(sp)
    8000698c:	02813823          	sd	s0,48(sp)
    80006990:	02913423          	sd	s1,40(sp)
    80006994:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006998:	00a00793          	li	a5,10
    8000699c:	fcf43823          	sd	a5,-48(s0)
    800069a0:	01400793          	li	a5,20
    800069a4:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800069a8:	00000493          	li	s1,0
    800069ac:	02c0006f          	j	800069d8 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800069b0:	00349793          	slli	a5,s1,0x3
    800069b4:	fd040613          	addi	a2,s0,-48
    800069b8:	00f60633          	add	a2,a2,a5
    800069bc:	00000597          	auipc	a1,0x0
    800069c0:	f2458593          	addi	a1,a1,-220 # 800068e0 <_ZL9sleepyRunPv>
    800069c4:	fc040513          	addi	a0,s0,-64
    800069c8:	00f50533          	add	a0,a0,a5
    800069cc:	ffffb097          	auipc	ra,0xffffb
    800069d0:	a00080e7          	jalr	-1536(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800069d4:	0014849b          	addiw	s1,s1,1
    800069d8:	00100793          	li	a5,1
    800069dc:	fc97dae3          	bge	a5,s1,800069b0 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800069e0:	00009797          	auipc	a5,0x9
    800069e4:	5a87c783          	lbu	a5,1448(a5) # 8000ff88 <_ZL8finished>
    800069e8:	fe078ce3          	beqz	a5,800069e0 <_Z12testSleepingv+0x5c>
    800069ec:	00009797          	auipc	a5,0x9
    800069f0:	59d7c783          	lbu	a5,1437(a5) # 8000ff89 <_ZL8finished+0x1>
    800069f4:	fe0786e3          	beqz	a5,800069e0 <_Z12testSleepingv+0x5c>
}
    800069f8:	03813083          	ld	ra,56(sp)
    800069fc:	03013403          	ld	s0,48(sp)
    80006a00:	02813483          	ld	s1,40(sp)
    80006a04:	04010113          	addi	sp,sp,64
    80006a08:	00008067          	ret

0000000080006a0c <_Z10makeMatrixv>:
        // Signaliziramo glavnoj niti da smo završili sabiranje reda
        doneSem->signal();
    }
};

void makeMatrix() {
    80006a0c:	f3010113          	addi	sp,sp,-208
    80006a10:	0c113423          	sd	ra,200(sp)
    80006a14:	0c813023          	sd	s0,192(sp)
    80006a18:	0a913c23          	sd	s1,184(sp)
    80006a1c:	0b213823          	sd	s2,176(sp)
    80006a20:	0b313423          	sd	s3,168(sp)
    80006a24:	0b413023          	sd	s4,160(sp)
    80006a28:	09513c23          	sd	s5,152(sp)
    80006a2c:	0d010413          	addi	s0,sp,208
    int matrix[ROWS][COLS] = {
    80006a30:	00006797          	auipc	a5,0x6
    80006a34:	d7878793          	addi	a5,a5,-648 # 8000c7a8 <CONSOLE_STATUS+0x798>
    80006a38:	0007be03          	ld	t3,0(a5)
    80006a3c:	0087b303          	ld	t1,8(a5)
    80006a40:	0107b883          	ld	a7,16(a5)
    80006a44:	0187b803          	ld	a6,24(a5)
    80006a48:	0207b503          	ld	a0,32(a5)
    80006a4c:	0287b583          	ld	a1,40(a5)
    80006a50:	0307b603          	ld	a2,48(a5)
    80006a54:	0387b683          	ld	a3,56(a5)
    80006a58:	0407b703          	ld	a4,64(a5)
    80006a5c:	0487b783          	ld	a5,72(a5)
    80006a60:	f7c43823          	sd	t3,-144(s0)
    80006a64:	f6643c23          	sd	t1,-136(s0)
    80006a68:	f9143023          	sd	a7,-128(s0)
    80006a6c:	f9043423          	sd	a6,-120(s0)
    80006a70:	f8a43823          	sd	a0,-112(s0)
    80006a74:	f8b43c23          	sd	a1,-104(s0)
    80006a78:	fac43023          	sd	a2,-96(s0)
    80006a7c:	fad43423          	sd	a3,-88(s0)
    80006a80:	fae43823          	sd	a4,-80(s0)
    80006a84:	faf43c23          	sd	a5,-72(s0)
    int rowSums[ROWS];
    MatrixRowThread* threads[ROWS];

    // Inicijalizujemo JEDAN semafor na 0.
    // On će služiti da glavna nit sačeka da sve radničke niti završe.
    Semaphore* doneSem = new Semaphore(0);
    80006a88:	01000513          	li	a0,16
    80006a8c:	ffffc097          	auipc	ra,0xffffc
    80006a90:	a94080e7          	jalr	-1388(ra) # 80002520 <_Znwm>
    80006a94:	00050a13          	mv	s4,a0
    80006a98:	00000593          	li	a1,0
    80006a9c:	ffffc097          	auipc	ra,0xffffc
    80006aa0:	d4c080e7          	jalr	-692(ra) # 800027e8 <_ZN9SemaphoreC1Ej>

    // Kreiranje i pokretanje niti
    for (int i = 0; i < ROWS; i++) {
    80006aa4:	00000913          	li	s2,0
    80006aa8:	0440006f          	j	80006aec <_Z10makeMatrixv+0xe0>
    MatrixRowThread(int* r, int c, int* rs, Semaphore* sem) : Thread() {
    80006aac:	00009797          	auipc	a5,0x9
    80006ab0:	30c78793          	addi	a5,a5,780 # 8000fdb8 <_ZTV15MatrixRowThread+0x10>
    80006ab4:	00f4b023          	sd	a5,0(s1)
        this->row = r;
    80006ab8:	0354b023          	sd	s5,32(s1)
        this->cols = c;
    80006abc:	00400793          	li	a5,4
    80006ac0:	02f4a423          	sw	a5,40(s1)
        this->rowSum = rs;
    80006ac4:	0334b823          	sd	s3,48(s1)
        this->doneSem = sem;
    80006ac8:	0344bc23          	sd	s4,56(s1)
        // Prosleđujemo red, broj kolona, adresu gde upisuje sumu i pokazivač na semafor
        threads[i] = new MatrixRowThread(matrix[i], COLS, &rowSums[i], doneSem);
    80006acc:	00391793          	slli	a5,s2,0x3
    80006ad0:	fc040713          	addi	a4,s0,-64
    80006ad4:	00f707b3          	add	a5,a4,a5
    80006ad8:	f697b823          	sd	s1,-144(a5)
        threads[i]->start();
    80006adc:	00048513          	mv	a0,s1
    80006ae0:	ffffc097          	auipc	ra,0xffffc
    80006ae4:	b78080e7          	jalr	-1160(ra) # 80002658 <_ZN6Thread5startEv>
    for (int i = 0; i < ROWS; i++) {
    80006ae8:	0019091b          	addiw	s2,s2,1
    80006aec:	00400793          	li	a5,4
    80006af0:	0327cc63          	blt	a5,s2,80006b28 <_Z10makeMatrixv+0x11c>
        threads[i] = new MatrixRowThread(matrix[i], COLS, &rowSums[i], doneSem);
    80006af4:	04000513          	li	a0,64
    80006af8:	ffffc097          	auipc	ra,0xffffc
    80006afc:	a28080e7          	jalr	-1496(ra) # 80002520 <_Znwm>
    80006b00:	00050493          	mv	s1,a0
    80006b04:	00491a93          	slli	s5,s2,0x4
    80006b08:	f7040793          	addi	a5,s0,-144
    80006b0c:	01578ab3          	add	s5,a5,s5
    80006b10:	00291993          	slli	s3,s2,0x2
    80006b14:	f5840793          	addi	a5,s0,-168
    80006b18:	013789b3          	add	s3,a5,s3
    MatrixRowThread(int* r, int c, int* rs, Semaphore* sem) : Thread() {
    80006b1c:	ffffc097          	auipc	ra,0xffffc
    80006b20:	bc8080e7          	jalr	-1080(ra) # 800026e4 <_ZN6ThreadC1Ev>
    80006b24:	f89ff06f          	j	80006aac <_Z10makeMatrixv+0xa0>
    }

    // Glavna nit čeka ROWS puta (za svaku pokrenutu nit po jednom)
    for (int i = 0; i < ROWS; i++) {
    80006b28:	00000493          	li	s1,0
    80006b2c:	00400793          	li	a5,4
    80006b30:	0097cc63          	blt	a5,s1,80006b48 <_Z10makeMatrixv+0x13c>
        doneSem->wait();
    80006b34:	000a0513          	mv	a0,s4
    80006b38:	ffffc097          	auipc	ra,0xffffc
    80006b3c:	ce8080e7          	jalr	-792(ra) # 80002820 <_ZN9Semaphore4waitEv>
    for (int i = 0; i < ROWS; i++) {
    80006b40:	0014849b          	addiw	s1,s1,1
    80006b44:	fe9ff06f          	j	80006b2c <_Z10makeMatrixv+0x120>
    }

    // Konačno sabiranje sada bezbedno može da se obavi jer su sve niti sigurno završile
    int totalSum = 0;
    for (int i = 0; i < ROWS; i++) {
    80006b48:	00000493          	li	s1,0
    int totalSum = 0;
    80006b4c:	00000913          	li	s2,0
    80006b50:	0080006f          	j	80006b58 <_Z10makeMatrixv+0x14c>
    for (int i = 0; i < ROWS; i++) {
    80006b54:	0014849b          	addiw	s1,s1,1
    80006b58:	00400793          	li	a5,4
    80006b5c:	0297cc63          	blt	a5,s1,80006b94 <_Z10makeMatrixv+0x188>
        totalSum += rowSums[i];
    80006b60:	00249793          	slli	a5,s1,0x2
    80006b64:	fc040713          	addi	a4,s0,-64
    80006b68:	00f707b3          	add	a5,a4,a5
    80006b6c:	f987a783          	lw	a5,-104(a5)
    80006b70:	0127893b          	addw	s2,a5,s2
        delete threads[i]; // Čišćenje memorije
    80006b74:	00349793          	slli	a5,s1,0x3
    80006b78:	00f707b3          	add	a5,a4,a5
    80006b7c:	f707b503          	ld	a0,-144(a5)
    80006b80:	fc050ae3          	beqz	a0,80006b54 <_Z10makeMatrixv+0x148>
    80006b84:	00053783          	ld	a5,0(a0)
    80006b88:	0087b783          	ld	a5,8(a5)
    80006b8c:	000780e7          	jalr	a5
    80006b90:	fc5ff06f          	j	80006b54 <_Z10makeMatrixv+0x148>
    }

    delete doneSem; // Ne zaboravite da obrišete i semafor!
    80006b94:	000a0a63          	beqz	s4,80006ba8 <_Z10makeMatrixv+0x19c>
    80006b98:	000a3783          	ld	a5,0(s4)
    80006b9c:	0087b783          	ld	a5,8(a5)
    80006ba0:	000a0513          	mv	a0,s4
    80006ba4:	000780e7          	jalr	a5

    printString("Ukupna suma matrice je: ");
    80006ba8:	00006517          	auipc	a0,0x6
    80006bac:	be050513          	addi	a0,a0,-1056 # 8000c788 <CONSOLE_STATUS+0x778>
    80006bb0:	fffff097          	auipc	ra,0xfffff
    80006bb4:	4e4080e7          	jalr	1252(ra) # 80006094 <_Z11printStringPKc>
    printInt(totalSum);
    80006bb8:	00000613          	li	a2,0
    80006bbc:	00a00593          	li	a1,10
    80006bc0:	00090513          	mv	a0,s2
    80006bc4:	fffff097          	auipc	ra,0xfffff
    80006bc8:	680080e7          	jalr	1664(ra) # 80006244 <_Z8printIntiii>
    printString("\n");
    80006bcc:	00006517          	auipc	a0,0x6
    80006bd0:	b1c50513          	addi	a0,a0,-1252 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	4c0080e7          	jalr	1216(ra) # 80006094 <_Z11printStringPKc>
    80006bdc:	0c813083          	ld	ra,200(sp)
    80006be0:	0c013403          	ld	s0,192(sp)
    80006be4:	0b813483          	ld	s1,184(sp)
    80006be8:	0b013903          	ld	s2,176(sp)
    80006bec:	0a813983          	ld	s3,168(sp)
    80006bf0:	0a013a03          	ld	s4,160(sp)
    80006bf4:	09813a83          	ld	s5,152(sp)
    80006bf8:	0d010113          	addi	sp,sp,208
    80006bfc:	00008067          	ret
    80006c00:	00050493          	mv	s1,a0
    Semaphore* doneSem = new Semaphore(0);
    80006c04:	000a0513          	mv	a0,s4
    80006c08:	ffffc097          	auipc	ra,0xffffc
    80006c0c:	968080e7          	jalr	-1688(ra) # 80002570 <_ZdlPv>
    80006c10:	00048513          	mv	a0,s1
    80006c14:	0000a097          	auipc	ra,0xa
    80006c18:	494080e7          	jalr	1172(ra) # 800110a8 <_Unwind_Resume>
    80006c1c:	00050913          	mv	s2,a0
        threads[i] = new MatrixRowThread(matrix[i], COLS, &rowSums[i], doneSem);
    80006c20:	00048513          	mv	a0,s1
    80006c24:	ffffc097          	auipc	ra,0xffffc
    80006c28:	94c080e7          	jalr	-1716(ra) # 80002570 <_ZdlPv>
    80006c2c:	00090513          	mv	a0,s2
    80006c30:	0000a097          	auipc	ra,0xa
    80006c34:	478080e7          	jalr	1144(ra) # 800110a8 <_Unwind_Resume>

0000000080006c38 <_ZN15MatrixRowThread3runEv>:
    void run() override {
    80006c38:	ff010113          	addi	sp,sp,-16
    80006c3c:	00113423          	sd	ra,8(sp)
    80006c40:	00813023          	sd	s0,0(sp)
    80006c44:	01010413          	addi	s0,sp,16
        for (int i = 0; i < cols; i++) {
    80006c48:	00000793          	li	a5,0
        int sum = 0;
    80006c4c:	00000693          	li	a3,0
        for (int i = 0; i < cols; i++) {
    80006c50:	02852703          	lw	a4,40(a0)
    80006c54:	02e7d063          	bge	a5,a4,80006c74 <_ZN15MatrixRowThread3runEv+0x3c>
            sum += row[i];
    80006c58:	02053703          	ld	a4,32(a0)
    80006c5c:	00279613          	slli	a2,a5,0x2
    80006c60:	00c70733          	add	a4,a4,a2
    80006c64:	00072703          	lw	a4,0(a4)
    80006c68:	00d706bb          	addw	a3,a4,a3
        for (int i = 0; i < cols; i++) {
    80006c6c:	0017879b          	addiw	a5,a5,1
    80006c70:	fe1ff06f          	j	80006c50 <_ZN15MatrixRowThread3runEv+0x18>
        *rowSum = sum;
    80006c74:	03053783          	ld	a5,48(a0)
    80006c78:	00d7a023          	sw	a3,0(a5)
        doneSem->signal();
    80006c7c:	03853503          	ld	a0,56(a0)
    80006c80:	ffffc097          	auipc	ra,0xffffc
    80006c84:	bcc080e7          	jalr	-1076(ra) # 8000284c <_ZN9Semaphore6signalEv>
    }
    80006c88:	00813083          	ld	ra,8(sp)
    80006c8c:	00013403          	ld	s0,0(sp)
    80006c90:	01010113          	addi	sp,sp,16
    80006c94:	00008067          	ret

0000000080006c98 <_ZN15MatrixRowThreadD1Ev>:
class MatrixRowThread : public Thread {
    80006c98:	ff010113          	addi	sp,sp,-16
    80006c9c:	00113423          	sd	ra,8(sp)
    80006ca0:	00813023          	sd	s0,0(sp)
    80006ca4:	01010413          	addi	s0,sp,16
    80006ca8:	00009797          	auipc	a5,0x9
    80006cac:	11078793          	addi	a5,a5,272 # 8000fdb8 <_ZTV15MatrixRowThread+0x10>
    80006cb0:	00f53023          	sd	a5,0(a0)
    80006cb4:	ffffb097          	auipc	ra,0xffffb
    80006cb8:	7e8080e7          	jalr	2024(ra) # 8000249c <_ZN6ThreadD1Ev>
    80006cbc:	00813083          	ld	ra,8(sp)
    80006cc0:	00013403          	ld	s0,0(sp)
    80006cc4:	01010113          	addi	sp,sp,16
    80006cc8:	00008067          	ret

0000000080006ccc <_ZN15MatrixRowThreadD0Ev>:
    80006ccc:	fe010113          	addi	sp,sp,-32
    80006cd0:	00113c23          	sd	ra,24(sp)
    80006cd4:	00813823          	sd	s0,16(sp)
    80006cd8:	00913423          	sd	s1,8(sp)
    80006cdc:	02010413          	addi	s0,sp,32
    80006ce0:	00050493          	mv	s1,a0
    80006ce4:	00009797          	auipc	a5,0x9
    80006ce8:	0d478793          	addi	a5,a5,212 # 8000fdb8 <_ZTV15MatrixRowThread+0x10>
    80006cec:	00f53023          	sd	a5,0(a0)
    80006cf0:	ffffb097          	auipc	ra,0xffffb
    80006cf4:	7ac080e7          	jalr	1964(ra) # 8000249c <_ZN6ThreadD1Ev>
    80006cf8:	00048513          	mv	a0,s1
    80006cfc:	ffffc097          	auipc	ra,0xffffc
    80006d00:	874080e7          	jalr	-1932(ra) # 80002570 <_ZdlPv>
    80006d04:	01813083          	ld	ra,24(sp)
    80006d08:	01013403          	ld	s0,16(sp)
    80006d0c:	00813483          	ld	s1,8(sp)
    80006d10:	02010113          	addi	sp,sp,32
    80006d14:	00008067          	ret

0000000080006d18 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006d18:	fe010113          	addi	sp,sp,-32
    80006d1c:	00113c23          	sd	ra,24(sp)
    80006d20:	00813823          	sd	s0,16(sp)
    80006d24:	00913423          	sd	s1,8(sp)
    80006d28:	01213023          	sd	s2,0(sp)
    80006d2c:	02010413          	addi	s0,sp,32
    80006d30:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006d34:	00100793          	li	a5,1
    80006d38:	02a7f863          	bgeu	a5,a0,80006d68 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006d3c:	00a00793          	li	a5,10
    80006d40:	02f577b3          	remu	a5,a0,a5
    80006d44:	02078e63          	beqz	a5,80006d80 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006d48:	fff48513          	addi	a0,s1,-1
    80006d4c:	00000097          	auipc	ra,0x0
    80006d50:	fcc080e7          	jalr	-52(ra) # 80006d18 <_ZL9fibonaccim>
    80006d54:	00050913          	mv	s2,a0
    80006d58:	ffe48513          	addi	a0,s1,-2
    80006d5c:	00000097          	auipc	ra,0x0
    80006d60:	fbc080e7          	jalr	-68(ra) # 80006d18 <_ZL9fibonaccim>
    80006d64:	00a90533          	add	a0,s2,a0
}
    80006d68:	01813083          	ld	ra,24(sp)
    80006d6c:	01013403          	ld	s0,16(sp)
    80006d70:	00813483          	ld	s1,8(sp)
    80006d74:	00013903          	ld	s2,0(sp)
    80006d78:	02010113          	addi	sp,sp,32
    80006d7c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006d80:	ffffa097          	auipc	ra,0xffffa
    80006d84:	6f8080e7          	jalr	1784(ra) # 80001478 <_Z15thread_dispatchv>
    80006d88:	fc1ff06f          	j	80006d48 <_ZL9fibonaccim+0x30>

0000000080006d8c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006d8c:	fe010113          	addi	sp,sp,-32
    80006d90:	00113c23          	sd	ra,24(sp)
    80006d94:	00813823          	sd	s0,16(sp)
    80006d98:	00913423          	sd	s1,8(sp)
    80006d9c:	01213023          	sd	s2,0(sp)
    80006da0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006da4:	00a00493          	li	s1,10
    80006da8:	0400006f          	j	80006de8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006dac:	00005517          	auipc	a0,0x5
    80006db0:	4ec50513          	addi	a0,a0,1260 # 8000c298 <CONSOLE_STATUS+0x288>
    80006db4:	fffff097          	auipc	ra,0xfffff
    80006db8:	2e0080e7          	jalr	736(ra) # 80006094 <_Z11printStringPKc>
    80006dbc:	00000613          	li	a2,0
    80006dc0:	00a00593          	li	a1,10
    80006dc4:	00048513          	mv	a0,s1
    80006dc8:	fffff097          	auipc	ra,0xfffff
    80006dcc:	47c080e7          	jalr	1148(ra) # 80006244 <_Z8printIntiii>
    80006dd0:	00006517          	auipc	a0,0x6
    80006dd4:	91850513          	addi	a0,a0,-1768 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80006dd8:	fffff097          	auipc	ra,0xfffff
    80006ddc:	2bc080e7          	jalr	700(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006de0:	0014849b          	addiw	s1,s1,1
    80006de4:	0ff4f493          	andi	s1,s1,255
    80006de8:	00c00793          	li	a5,12
    80006dec:	fc97f0e3          	bgeu	a5,s1,80006dac <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006df0:	00005517          	auipc	a0,0x5
    80006df4:	4b050513          	addi	a0,a0,1200 # 8000c2a0 <CONSOLE_STATUS+0x290>
    80006df8:	fffff097          	auipc	ra,0xfffff
    80006dfc:	29c080e7          	jalr	668(ra) # 80006094 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006e00:	00500313          	li	t1,5
    thread_dispatch();
    80006e04:	ffffa097          	auipc	ra,0xffffa
    80006e08:	674080e7          	jalr	1652(ra) # 80001478 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006e0c:	01000513          	li	a0,16
    80006e10:	00000097          	auipc	ra,0x0
    80006e14:	f08080e7          	jalr	-248(ra) # 80006d18 <_ZL9fibonaccim>
    80006e18:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006e1c:	00005517          	auipc	a0,0x5
    80006e20:	49450513          	addi	a0,a0,1172 # 8000c2b0 <CONSOLE_STATUS+0x2a0>
    80006e24:	fffff097          	auipc	ra,0xfffff
    80006e28:	270080e7          	jalr	624(ra) # 80006094 <_Z11printStringPKc>
    80006e2c:	00000613          	li	a2,0
    80006e30:	00a00593          	li	a1,10
    80006e34:	0009051b          	sext.w	a0,s2
    80006e38:	fffff097          	auipc	ra,0xfffff
    80006e3c:	40c080e7          	jalr	1036(ra) # 80006244 <_Z8printIntiii>
    80006e40:	00006517          	auipc	a0,0x6
    80006e44:	8a850513          	addi	a0,a0,-1880 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80006e48:	fffff097          	auipc	ra,0xfffff
    80006e4c:	24c080e7          	jalr	588(ra) # 80006094 <_Z11printStringPKc>
    80006e50:	0400006f          	j	80006e90 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006e54:	00005517          	auipc	a0,0x5
    80006e58:	44450513          	addi	a0,a0,1092 # 8000c298 <CONSOLE_STATUS+0x288>
    80006e5c:	fffff097          	auipc	ra,0xfffff
    80006e60:	238080e7          	jalr	568(ra) # 80006094 <_Z11printStringPKc>
    80006e64:	00000613          	li	a2,0
    80006e68:	00a00593          	li	a1,10
    80006e6c:	00048513          	mv	a0,s1
    80006e70:	fffff097          	auipc	ra,0xfffff
    80006e74:	3d4080e7          	jalr	980(ra) # 80006244 <_Z8printIntiii>
    80006e78:	00006517          	auipc	a0,0x6
    80006e7c:	87050513          	addi	a0,a0,-1936 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80006e80:	fffff097          	auipc	ra,0xfffff
    80006e84:	214080e7          	jalr	532(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006e88:	0014849b          	addiw	s1,s1,1
    80006e8c:	0ff4f493          	andi	s1,s1,255
    80006e90:	00f00793          	li	a5,15
    80006e94:	fc97f0e3          	bgeu	a5,s1,80006e54 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006e98:	00005517          	auipc	a0,0x5
    80006e9c:	42850513          	addi	a0,a0,1064 # 8000c2c0 <CONSOLE_STATUS+0x2b0>
    80006ea0:	fffff097          	auipc	ra,0xfffff
    80006ea4:	1f4080e7          	jalr	500(ra) # 80006094 <_Z11printStringPKc>
    finishedD = true;
    80006ea8:	00100793          	li	a5,1
    80006eac:	00009717          	auipc	a4,0x9
    80006eb0:	0cf70f23          	sb	a5,222(a4) # 8000ff8a <_ZL9finishedD>
    thread_dispatch();
    80006eb4:	ffffa097          	auipc	ra,0xffffa
    80006eb8:	5c4080e7          	jalr	1476(ra) # 80001478 <_Z15thread_dispatchv>
}
    80006ebc:	01813083          	ld	ra,24(sp)
    80006ec0:	01013403          	ld	s0,16(sp)
    80006ec4:	00813483          	ld	s1,8(sp)
    80006ec8:	00013903          	ld	s2,0(sp)
    80006ecc:	02010113          	addi	sp,sp,32
    80006ed0:	00008067          	ret

0000000080006ed4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006ed4:	fe010113          	addi	sp,sp,-32
    80006ed8:	00113c23          	sd	ra,24(sp)
    80006edc:	00813823          	sd	s0,16(sp)
    80006ee0:	00913423          	sd	s1,8(sp)
    80006ee4:	01213023          	sd	s2,0(sp)
    80006ee8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006eec:	00000493          	li	s1,0
    80006ef0:	0400006f          	j	80006f30 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006ef4:	00005517          	auipc	a0,0x5
    80006ef8:	37450513          	addi	a0,a0,884 # 8000c268 <CONSOLE_STATUS+0x258>
    80006efc:	fffff097          	auipc	ra,0xfffff
    80006f00:	198080e7          	jalr	408(ra) # 80006094 <_Z11printStringPKc>
    80006f04:	00000613          	li	a2,0
    80006f08:	00a00593          	li	a1,10
    80006f0c:	00048513          	mv	a0,s1
    80006f10:	fffff097          	auipc	ra,0xfffff
    80006f14:	334080e7          	jalr	820(ra) # 80006244 <_Z8printIntiii>
    80006f18:	00005517          	auipc	a0,0x5
    80006f1c:	7d050513          	addi	a0,a0,2000 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80006f20:	fffff097          	auipc	ra,0xfffff
    80006f24:	174080e7          	jalr	372(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006f28:	0014849b          	addiw	s1,s1,1
    80006f2c:	0ff4f493          	andi	s1,s1,255
    80006f30:	00200793          	li	a5,2
    80006f34:	fc97f0e3          	bgeu	a5,s1,80006ef4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006f38:	00005517          	auipc	a0,0x5
    80006f3c:	33850513          	addi	a0,a0,824 # 8000c270 <CONSOLE_STATUS+0x260>
    80006f40:	fffff097          	auipc	ra,0xfffff
    80006f44:	154080e7          	jalr	340(ra) # 80006094 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006f48:	00700313          	li	t1,7
    thread_dispatch();
    80006f4c:	ffffa097          	auipc	ra,0xffffa
    80006f50:	52c080e7          	jalr	1324(ra) # 80001478 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006f54:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006f58:	00005517          	auipc	a0,0x5
    80006f5c:	32850513          	addi	a0,a0,808 # 8000c280 <CONSOLE_STATUS+0x270>
    80006f60:	fffff097          	auipc	ra,0xfffff
    80006f64:	134080e7          	jalr	308(ra) # 80006094 <_Z11printStringPKc>
    80006f68:	00000613          	li	a2,0
    80006f6c:	00a00593          	li	a1,10
    80006f70:	0009051b          	sext.w	a0,s2
    80006f74:	fffff097          	auipc	ra,0xfffff
    80006f78:	2d0080e7          	jalr	720(ra) # 80006244 <_Z8printIntiii>
    80006f7c:	00005517          	auipc	a0,0x5
    80006f80:	76c50513          	addi	a0,a0,1900 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80006f84:	fffff097          	auipc	ra,0xfffff
    80006f88:	110080e7          	jalr	272(ra) # 80006094 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006f8c:	00c00513          	li	a0,12
    80006f90:	00000097          	auipc	ra,0x0
    80006f94:	d88080e7          	jalr	-632(ra) # 80006d18 <_ZL9fibonaccim>
    80006f98:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006f9c:	00005517          	auipc	a0,0x5
    80006fa0:	2ec50513          	addi	a0,a0,748 # 8000c288 <CONSOLE_STATUS+0x278>
    80006fa4:	fffff097          	auipc	ra,0xfffff
    80006fa8:	0f0080e7          	jalr	240(ra) # 80006094 <_Z11printStringPKc>
    80006fac:	00000613          	li	a2,0
    80006fb0:	00a00593          	li	a1,10
    80006fb4:	0009051b          	sext.w	a0,s2
    80006fb8:	fffff097          	auipc	ra,0xfffff
    80006fbc:	28c080e7          	jalr	652(ra) # 80006244 <_Z8printIntiii>
    80006fc0:	00005517          	auipc	a0,0x5
    80006fc4:	72850513          	addi	a0,a0,1832 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80006fc8:	fffff097          	auipc	ra,0xfffff
    80006fcc:	0cc080e7          	jalr	204(ra) # 80006094 <_Z11printStringPKc>
    80006fd0:	0400006f          	j	80007010 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006fd4:	00005517          	auipc	a0,0x5
    80006fd8:	29450513          	addi	a0,a0,660 # 8000c268 <CONSOLE_STATUS+0x258>
    80006fdc:	fffff097          	auipc	ra,0xfffff
    80006fe0:	0b8080e7          	jalr	184(ra) # 80006094 <_Z11printStringPKc>
    80006fe4:	00000613          	li	a2,0
    80006fe8:	00a00593          	li	a1,10
    80006fec:	00048513          	mv	a0,s1
    80006ff0:	fffff097          	auipc	ra,0xfffff
    80006ff4:	254080e7          	jalr	596(ra) # 80006244 <_Z8printIntiii>
    80006ff8:	00005517          	auipc	a0,0x5
    80006ffc:	6f050513          	addi	a0,a0,1776 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80007000:	fffff097          	auipc	ra,0xfffff
    80007004:	094080e7          	jalr	148(ra) # 80006094 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80007008:	0014849b          	addiw	s1,s1,1
    8000700c:	0ff4f493          	andi	s1,s1,255
    80007010:	00500793          	li	a5,5
    80007014:	fc97f0e3          	bgeu	a5,s1,80006fd4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80007018:	00005517          	auipc	a0,0x5
    8000701c:	22850513          	addi	a0,a0,552 # 8000c240 <CONSOLE_STATUS+0x230>
    80007020:	fffff097          	auipc	ra,0xfffff
    80007024:	074080e7          	jalr	116(ra) # 80006094 <_Z11printStringPKc>
    finishedC = true;
    80007028:	00100793          	li	a5,1
    8000702c:	00009717          	auipc	a4,0x9
    80007030:	f4f70fa3          	sb	a5,-161(a4) # 8000ff8b <_ZL9finishedC>
    thread_dispatch();
    80007034:	ffffa097          	auipc	ra,0xffffa
    80007038:	444080e7          	jalr	1092(ra) # 80001478 <_Z15thread_dispatchv>
}
    8000703c:	01813083          	ld	ra,24(sp)
    80007040:	01013403          	ld	s0,16(sp)
    80007044:	00813483          	ld	s1,8(sp)
    80007048:	00013903          	ld	s2,0(sp)
    8000704c:	02010113          	addi	sp,sp,32
    80007050:	00008067          	ret

0000000080007054 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80007054:	fe010113          	addi	sp,sp,-32
    80007058:	00113c23          	sd	ra,24(sp)
    8000705c:	00813823          	sd	s0,16(sp)
    80007060:	00913423          	sd	s1,8(sp)
    80007064:	01213023          	sd	s2,0(sp)
    80007068:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000706c:	00000913          	li	s2,0
    80007070:	0400006f          	j	800070b0 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80007074:	ffffa097          	auipc	ra,0xffffa
    80007078:	404080e7          	jalr	1028(ra) # 80001478 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000707c:	00148493          	addi	s1,s1,1
    80007080:	000027b7          	lui	a5,0x2
    80007084:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80007088:	0097ee63          	bltu	a5,s1,800070a4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000708c:	00000713          	li	a4,0
    80007090:	000077b7          	lui	a5,0x7
    80007094:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80007098:	fce7eee3          	bltu	a5,a4,80007074 <_ZL11workerBodyBPv+0x20>
    8000709c:	00170713          	addi	a4,a4,1
    800070a0:	ff1ff06f          	j	80007090 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800070a4:	00a00793          	li	a5,10
    800070a8:	04f90663          	beq	s2,a5,800070f4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800070ac:	00190913          	addi	s2,s2,1
    800070b0:	00f00793          	li	a5,15
    800070b4:	0527e463          	bltu	a5,s2,800070fc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800070b8:	00005517          	auipc	a0,0x5
    800070bc:	19850513          	addi	a0,a0,408 # 8000c250 <CONSOLE_STATUS+0x240>
    800070c0:	fffff097          	auipc	ra,0xfffff
    800070c4:	fd4080e7          	jalr	-44(ra) # 80006094 <_Z11printStringPKc>
    800070c8:	00000613          	li	a2,0
    800070cc:	00a00593          	li	a1,10
    800070d0:	0009051b          	sext.w	a0,s2
    800070d4:	fffff097          	auipc	ra,0xfffff
    800070d8:	170080e7          	jalr	368(ra) # 80006244 <_Z8printIntiii>
    800070dc:	00005517          	auipc	a0,0x5
    800070e0:	60c50513          	addi	a0,a0,1548 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    800070e4:	fffff097          	auipc	ra,0xfffff
    800070e8:	fb0080e7          	jalr	-80(ra) # 80006094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800070ec:	00000493          	li	s1,0
    800070f0:	f91ff06f          	j	80007080 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800070f4:	14102ff3          	csrr	t6,sepc
    800070f8:	fb5ff06f          	j	800070ac <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800070fc:	00005517          	auipc	a0,0x5
    80007100:	15c50513          	addi	a0,a0,348 # 8000c258 <CONSOLE_STATUS+0x248>
    80007104:	fffff097          	auipc	ra,0xfffff
    80007108:	f90080e7          	jalr	-112(ra) # 80006094 <_Z11printStringPKc>
    finishedB = true;
    8000710c:	00100793          	li	a5,1
    80007110:	00009717          	auipc	a4,0x9
    80007114:	e6f70e23          	sb	a5,-388(a4) # 8000ff8c <_ZL9finishedB>
    thread_dispatch();
    80007118:	ffffa097          	auipc	ra,0xffffa
    8000711c:	360080e7          	jalr	864(ra) # 80001478 <_Z15thread_dispatchv>
}
    80007120:	01813083          	ld	ra,24(sp)
    80007124:	01013403          	ld	s0,16(sp)
    80007128:	00813483          	ld	s1,8(sp)
    8000712c:	00013903          	ld	s2,0(sp)
    80007130:	02010113          	addi	sp,sp,32
    80007134:	00008067          	ret

0000000080007138 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80007138:	fe010113          	addi	sp,sp,-32
    8000713c:	00113c23          	sd	ra,24(sp)
    80007140:	00813823          	sd	s0,16(sp)
    80007144:	00913423          	sd	s1,8(sp)
    80007148:	01213023          	sd	s2,0(sp)
    8000714c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80007150:	00000913          	li	s2,0
    80007154:	0380006f          	j	8000718c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80007158:	ffffa097          	auipc	ra,0xffffa
    8000715c:	320080e7          	jalr	800(ra) # 80001478 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80007160:	00148493          	addi	s1,s1,1
    80007164:	000027b7          	lui	a5,0x2
    80007168:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000716c:	0097ee63          	bltu	a5,s1,80007188 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80007170:	00000713          	li	a4,0
    80007174:	000077b7          	lui	a5,0x7
    80007178:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000717c:	fce7eee3          	bltu	a5,a4,80007158 <_ZL11workerBodyAPv+0x20>
    80007180:	00170713          	addi	a4,a4,1
    80007184:	ff1ff06f          	j	80007174 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80007188:	00190913          	addi	s2,s2,1
    8000718c:	00900793          	li	a5,9
    80007190:	0527e063          	bltu	a5,s2,800071d0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80007194:	00005517          	auipc	a0,0x5
    80007198:	0a450513          	addi	a0,a0,164 # 8000c238 <CONSOLE_STATUS+0x228>
    8000719c:	fffff097          	auipc	ra,0xfffff
    800071a0:	ef8080e7          	jalr	-264(ra) # 80006094 <_Z11printStringPKc>
    800071a4:	00000613          	li	a2,0
    800071a8:	00a00593          	li	a1,10
    800071ac:	0009051b          	sext.w	a0,s2
    800071b0:	fffff097          	auipc	ra,0xfffff
    800071b4:	094080e7          	jalr	148(ra) # 80006244 <_Z8printIntiii>
    800071b8:	00005517          	auipc	a0,0x5
    800071bc:	53050513          	addi	a0,a0,1328 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    800071c0:	fffff097          	auipc	ra,0xfffff
    800071c4:	ed4080e7          	jalr	-300(ra) # 80006094 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800071c8:	00000493          	li	s1,0
    800071cc:	f99ff06f          	j	80007164 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800071d0:	00005517          	auipc	a0,0x5
    800071d4:	07050513          	addi	a0,a0,112 # 8000c240 <CONSOLE_STATUS+0x230>
    800071d8:	fffff097          	auipc	ra,0xfffff
    800071dc:	ebc080e7          	jalr	-324(ra) # 80006094 <_Z11printStringPKc>
    finishedA = true;
    800071e0:	00100793          	li	a5,1
    800071e4:	00009717          	auipc	a4,0x9
    800071e8:	daf704a3          	sb	a5,-599(a4) # 8000ff8d <_ZL9finishedA>
}
    800071ec:	01813083          	ld	ra,24(sp)
    800071f0:	01013403          	ld	s0,16(sp)
    800071f4:	00813483          	ld	s1,8(sp)
    800071f8:	00013903          	ld	s2,0(sp)
    800071fc:	02010113          	addi	sp,sp,32
    80007200:	00008067          	ret

0000000080007204 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80007204:	fd010113          	addi	sp,sp,-48
    80007208:	02113423          	sd	ra,40(sp)
    8000720c:	02813023          	sd	s0,32(sp)
    80007210:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80007214:	00000613          	li	a2,0
    80007218:	00000597          	auipc	a1,0x0
    8000721c:	f2058593          	addi	a1,a1,-224 # 80007138 <_ZL11workerBodyAPv>
    80007220:	fd040513          	addi	a0,s0,-48
    80007224:	ffffa097          	auipc	ra,0xffffa
    80007228:	1a8080e7          	jalr	424(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    8000722c:	00005517          	auipc	a0,0x5
    80007230:	0a450513          	addi	a0,a0,164 # 8000c2d0 <CONSOLE_STATUS+0x2c0>
    80007234:	fffff097          	auipc	ra,0xfffff
    80007238:	e60080e7          	jalr	-416(ra) # 80006094 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    8000723c:	00000613          	li	a2,0
    80007240:	00000597          	auipc	a1,0x0
    80007244:	e1458593          	addi	a1,a1,-492 # 80007054 <_ZL11workerBodyBPv>
    80007248:	fd840513          	addi	a0,s0,-40
    8000724c:	ffffa097          	auipc	ra,0xffffa
    80007250:	180080e7          	jalr	384(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80007254:	00005517          	auipc	a0,0x5
    80007258:	09450513          	addi	a0,a0,148 # 8000c2e8 <CONSOLE_STATUS+0x2d8>
    8000725c:	fffff097          	auipc	ra,0xfffff
    80007260:	e38080e7          	jalr	-456(ra) # 80006094 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80007264:	00000613          	li	a2,0
    80007268:	00000597          	auipc	a1,0x0
    8000726c:	c6c58593          	addi	a1,a1,-916 # 80006ed4 <_ZL11workerBodyCPv>
    80007270:	fe040513          	addi	a0,s0,-32
    80007274:	ffffa097          	auipc	ra,0xffffa
    80007278:	158080e7          	jalr	344(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    8000727c:	00005517          	auipc	a0,0x5
    80007280:	08450513          	addi	a0,a0,132 # 8000c300 <CONSOLE_STATUS+0x2f0>
    80007284:	fffff097          	auipc	ra,0xfffff
    80007288:	e10080e7          	jalr	-496(ra) # 80006094 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    8000728c:	00000613          	li	a2,0
    80007290:	00000597          	auipc	a1,0x0
    80007294:	afc58593          	addi	a1,a1,-1284 # 80006d8c <_ZL11workerBodyDPv>
    80007298:	fe840513          	addi	a0,s0,-24
    8000729c:	ffffa097          	auipc	ra,0xffffa
    800072a0:	130080e7          	jalr	304(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800072a4:	00005517          	auipc	a0,0x5
    800072a8:	07450513          	addi	a0,a0,116 # 8000c318 <CONSOLE_STATUS+0x308>
    800072ac:	fffff097          	auipc	ra,0xfffff
    800072b0:	de8080e7          	jalr	-536(ra) # 80006094 <_Z11printStringPKc>
    800072b4:	00c0006f          	j	800072c0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800072b8:	ffffa097          	auipc	ra,0xffffa
    800072bc:	1c0080e7          	jalr	448(ra) # 80001478 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800072c0:	00009797          	auipc	a5,0x9
    800072c4:	ccd7c783          	lbu	a5,-819(a5) # 8000ff8d <_ZL9finishedA>
    800072c8:	fe0788e3          	beqz	a5,800072b8 <_Z16System_Mode_testv+0xb4>
    800072cc:	00009797          	auipc	a5,0x9
    800072d0:	cc07c783          	lbu	a5,-832(a5) # 8000ff8c <_ZL9finishedB>
    800072d4:	fe0782e3          	beqz	a5,800072b8 <_Z16System_Mode_testv+0xb4>
    800072d8:	00009797          	auipc	a5,0x9
    800072dc:	cb37c783          	lbu	a5,-845(a5) # 8000ff8b <_ZL9finishedC>
    800072e0:	fc078ce3          	beqz	a5,800072b8 <_Z16System_Mode_testv+0xb4>
    800072e4:	00009797          	auipc	a5,0x9
    800072e8:	ca67c783          	lbu	a5,-858(a5) # 8000ff8a <_ZL9finishedD>
    800072ec:	fc0786e3          	beqz	a5,800072b8 <_Z16System_Mode_testv+0xb4>
    }

}
    800072f0:	02813083          	ld	ra,40(sp)
    800072f4:	02013403          	ld	s0,32(sp)
    800072f8:	03010113          	addi	sp,sp,48
    800072fc:	00008067          	ret

0000000080007300 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80007300:	fe010113          	addi	sp,sp,-32
    80007304:	00113c23          	sd	ra,24(sp)
    80007308:	00813823          	sd	s0,16(sp)
    8000730c:	00913423          	sd	s1,8(sp)
    80007310:	01213023          	sd	s2,0(sp)
    80007314:	02010413          	addi	s0,sp,32
    80007318:	00050493          	mv	s1,a0
    8000731c:	00058913          	mv	s2,a1
    80007320:	0015879b          	addiw	a5,a1,1
    80007324:	0007851b          	sext.w	a0,a5
    80007328:	00f4a023          	sw	a5,0(s1)
    8000732c:	0004a823          	sw	zero,16(s1)
    80007330:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80007334:	00251513          	slli	a0,a0,0x2
    80007338:	ffffa097          	auipc	ra,0xffffa
    8000733c:	020080e7          	jalr	32(ra) # 80001358 <_Z9mem_allocm>
    80007340:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80007344:	00000593          	li	a1,0
    80007348:	02048513          	addi	a0,s1,32
    8000734c:	ffffa097          	auipc	ra,0xffffa
    80007350:	1d4080e7          	jalr	468(ra) # 80001520 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80007354:	00090593          	mv	a1,s2
    80007358:	01848513          	addi	a0,s1,24
    8000735c:	ffffa097          	auipc	ra,0xffffa
    80007360:	1c4080e7          	jalr	452(ra) # 80001520 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80007364:	00100593          	li	a1,1
    80007368:	02848513          	addi	a0,s1,40
    8000736c:	ffffa097          	auipc	ra,0xffffa
    80007370:	1b4080e7          	jalr	436(ra) # 80001520 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80007374:	00100593          	li	a1,1
    80007378:	03048513          	addi	a0,s1,48
    8000737c:	ffffa097          	auipc	ra,0xffffa
    80007380:	1a4080e7          	jalr	420(ra) # 80001520 <_Z8sem_openPP3Semj>
}
    80007384:	01813083          	ld	ra,24(sp)
    80007388:	01013403          	ld	s0,16(sp)
    8000738c:	00813483          	ld	s1,8(sp)
    80007390:	00013903          	ld	s2,0(sp)
    80007394:	02010113          	addi	sp,sp,32
    80007398:	00008067          	ret

000000008000739c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    8000739c:	fe010113          	addi	sp,sp,-32
    800073a0:	00113c23          	sd	ra,24(sp)
    800073a4:	00813823          	sd	s0,16(sp)
    800073a8:	00913423          	sd	s1,8(sp)
    800073ac:	01213023          	sd	s2,0(sp)
    800073b0:	02010413          	addi	s0,sp,32
    800073b4:	00050493          	mv	s1,a0
    800073b8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800073bc:	01853503          	ld	a0,24(a0)
    800073c0:	ffffa097          	auipc	ra,0xffffa
    800073c4:	1e0080e7          	jalr	480(ra) # 800015a0 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    800073c8:	0304b503          	ld	a0,48(s1)
    800073cc:	ffffa097          	auipc	ra,0xffffa
    800073d0:	1d4080e7          	jalr	468(ra) # 800015a0 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    800073d4:	0084b783          	ld	a5,8(s1)
    800073d8:	0144a703          	lw	a4,20(s1)
    800073dc:	00271713          	slli	a4,a4,0x2
    800073e0:	00e787b3          	add	a5,a5,a4
    800073e4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800073e8:	0144a783          	lw	a5,20(s1)
    800073ec:	0017879b          	addiw	a5,a5,1
    800073f0:	0004a703          	lw	a4,0(s1)
    800073f4:	02e7e7bb          	remw	a5,a5,a4
    800073f8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800073fc:	0304b503          	ld	a0,48(s1)
    80007400:	ffffa097          	auipc	ra,0xffffa
    80007404:	1dc080e7          	jalr	476(ra) # 800015dc <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80007408:	0204b503          	ld	a0,32(s1)
    8000740c:	ffffa097          	auipc	ra,0xffffa
    80007410:	1d0080e7          	jalr	464(ra) # 800015dc <_Z10sem_signalP3Sem>

}
    80007414:	01813083          	ld	ra,24(sp)
    80007418:	01013403          	ld	s0,16(sp)
    8000741c:	00813483          	ld	s1,8(sp)
    80007420:	00013903          	ld	s2,0(sp)
    80007424:	02010113          	addi	sp,sp,32
    80007428:	00008067          	ret

000000008000742c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000742c:	fe010113          	addi	sp,sp,-32
    80007430:	00113c23          	sd	ra,24(sp)
    80007434:	00813823          	sd	s0,16(sp)
    80007438:	00913423          	sd	s1,8(sp)
    8000743c:	01213023          	sd	s2,0(sp)
    80007440:	02010413          	addi	s0,sp,32
    80007444:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80007448:	02053503          	ld	a0,32(a0)
    8000744c:	ffffa097          	auipc	ra,0xffffa
    80007450:	154080e7          	jalr	340(ra) # 800015a0 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80007454:	0284b503          	ld	a0,40(s1)
    80007458:	ffffa097          	auipc	ra,0xffffa
    8000745c:	148080e7          	jalr	328(ra) # 800015a0 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80007460:	0084b703          	ld	a4,8(s1)
    80007464:	0104a783          	lw	a5,16(s1)
    80007468:	00279693          	slli	a3,a5,0x2
    8000746c:	00d70733          	add	a4,a4,a3
    80007470:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80007474:	0017879b          	addiw	a5,a5,1
    80007478:	0004a703          	lw	a4,0(s1)
    8000747c:	02e7e7bb          	remw	a5,a5,a4
    80007480:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80007484:	0284b503          	ld	a0,40(s1)
    80007488:	ffffa097          	auipc	ra,0xffffa
    8000748c:	154080e7          	jalr	340(ra) # 800015dc <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80007490:	0184b503          	ld	a0,24(s1)
    80007494:	ffffa097          	auipc	ra,0xffffa
    80007498:	148080e7          	jalr	328(ra) # 800015dc <_Z10sem_signalP3Sem>

    return ret;
}
    8000749c:	00090513          	mv	a0,s2
    800074a0:	01813083          	ld	ra,24(sp)
    800074a4:	01013403          	ld	s0,16(sp)
    800074a8:	00813483          	ld	s1,8(sp)
    800074ac:	00013903          	ld	s2,0(sp)
    800074b0:	02010113          	addi	sp,sp,32
    800074b4:	00008067          	ret

00000000800074b8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800074b8:	fe010113          	addi	sp,sp,-32
    800074bc:	00113c23          	sd	ra,24(sp)
    800074c0:	00813823          	sd	s0,16(sp)
    800074c4:	00913423          	sd	s1,8(sp)
    800074c8:	01213023          	sd	s2,0(sp)
    800074cc:	02010413          	addi	s0,sp,32
    800074d0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800074d4:	02853503          	ld	a0,40(a0)
    800074d8:	ffffa097          	auipc	ra,0xffffa
    800074dc:	0c8080e7          	jalr	200(ra) # 800015a0 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    800074e0:	0304b503          	ld	a0,48(s1)
    800074e4:	ffffa097          	auipc	ra,0xffffa
    800074e8:	0bc080e7          	jalr	188(ra) # 800015a0 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800074ec:	0144a783          	lw	a5,20(s1)
    800074f0:	0104a903          	lw	s2,16(s1)
    800074f4:	0327ce63          	blt	a5,s2,80007530 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800074f8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800074fc:	0304b503          	ld	a0,48(s1)
    80007500:	ffffa097          	auipc	ra,0xffffa
    80007504:	0dc080e7          	jalr	220(ra) # 800015dc <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80007508:	0284b503          	ld	a0,40(s1)
    8000750c:	ffffa097          	auipc	ra,0xffffa
    80007510:	0d0080e7          	jalr	208(ra) # 800015dc <_Z10sem_signalP3Sem>

    return ret;
}
    80007514:	00090513          	mv	a0,s2
    80007518:	01813083          	ld	ra,24(sp)
    8000751c:	01013403          	ld	s0,16(sp)
    80007520:	00813483          	ld	s1,8(sp)
    80007524:	00013903          	ld	s2,0(sp)
    80007528:	02010113          	addi	sp,sp,32
    8000752c:	00008067          	ret
        ret = cap - head + tail;
    80007530:	0004a703          	lw	a4,0(s1)
    80007534:	4127093b          	subw	s2,a4,s2
    80007538:	00f9093b          	addw	s2,s2,a5
    8000753c:	fc1ff06f          	j	800074fc <_ZN6Buffer6getCntEv+0x44>

0000000080007540 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80007540:	fe010113          	addi	sp,sp,-32
    80007544:	00113c23          	sd	ra,24(sp)
    80007548:	00813823          	sd	s0,16(sp)
    8000754c:	00913423          	sd	s1,8(sp)
    80007550:	02010413          	addi	s0,sp,32
    80007554:	00050493          	mv	s1,a0
    putc('\n');
    80007558:	00a00513          	li	a0,10
    8000755c:	ffffa097          	auipc	ra,0xffffa
    80007560:	1c8080e7          	jalr	456(ra) # 80001724 <_Z4putcc>
    printString("Buffer deleted!\n");
    80007564:	00005517          	auipc	a0,0x5
    80007568:	f0c50513          	addi	a0,a0,-244 # 8000c470 <CONSOLE_STATUS+0x460>
    8000756c:	fffff097          	auipc	ra,0xfffff
    80007570:	b28080e7          	jalr	-1240(ra) # 80006094 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80007574:	00048513          	mv	a0,s1
    80007578:	00000097          	auipc	ra,0x0
    8000757c:	f40080e7          	jalr	-192(ra) # 800074b8 <_ZN6Buffer6getCntEv>
    80007580:	02a05c63          	blez	a0,800075b8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007584:	0084b783          	ld	a5,8(s1)
    80007588:	0104a703          	lw	a4,16(s1)
    8000758c:	00271713          	slli	a4,a4,0x2
    80007590:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007594:	0007c503          	lbu	a0,0(a5)
    80007598:	ffffa097          	auipc	ra,0xffffa
    8000759c:	18c080e7          	jalr	396(ra) # 80001724 <_Z4putcc>
        head = (head + 1) % cap;
    800075a0:	0104a783          	lw	a5,16(s1)
    800075a4:	0017879b          	addiw	a5,a5,1
    800075a8:	0004a703          	lw	a4,0(s1)
    800075ac:	02e7e7bb          	remw	a5,a5,a4
    800075b0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800075b4:	fc1ff06f          	j	80007574 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800075b8:	02100513          	li	a0,33
    800075bc:	ffffa097          	auipc	ra,0xffffa
    800075c0:	168080e7          	jalr	360(ra) # 80001724 <_Z4putcc>
    putc('\n');
    800075c4:	00a00513          	li	a0,10
    800075c8:	ffffa097          	auipc	ra,0xffffa
    800075cc:	15c080e7          	jalr	348(ra) # 80001724 <_Z4putcc>
    mem_free(buffer);
    800075d0:	0084b503          	ld	a0,8(s1)
    800075d4:	ffffa097          	auipc	ra,0xffffa
    800075d8:	dbc080e7          	jalr	-580(ra) # 80001390 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800075dc:	0204b503          	ld	a0,32(s1)
    800075e0:	ffffa097          	auipc	ra,0xffffa
    800075e4:	f84080e7          	jalr	-124(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800075e8:	0184b503          	ld	a0,24(s1)
    800075ec:	ffffa097          	auipc	ra,0xffffa
    800075f0:	f78080e7          	jalr	-136(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800075f4:	0304b503          	ld	a0,48(s1)
    800075f8:	ffffa097          	auipc	ra,0xffffa
    800075fc:	f6c080e7          	jalr	-148(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80007600:	0284b503          	ld	a0,40(s1)
    80007604:	ffffa097          	auipc	ra,0xffffa
    80007608:	f60080e7          	jalr	-160(ra) # 80001564 <_Z9sem_closeP3Sem>
}
    8000760c:	01813083          	ld	ra,24(sp)
    80007610:	01013403          	ld	s0,16(sp)
    80007614:	00813483          	ld	s1,8(sp)
    80007618:	02010113          	addi	sp,sp,32
    8000761c:	00008067          	ret

0000000080007620 <_Z13worker_threadPv>:
#include "../h/tcb.hpp"
// Globalni semafor za sinhronizaciju glavne niti sa radnim nitima
sem_t finished_sem;

// Rutina koju izvršava svaka od 70 niti
void worker_thread(void *arg) {
    80007620:	ff010113          	addi	sp,sp,-16
    80007624:	00113423          	sd	ra,8(sp)
    80007628:	00813023          	sd	s0,0(sp)
    8000762c:	01010413          	addi	s0,sp,16
    if (arg == nullptr) {
    80007630:	02050c63          	beqz	a0,80007668 <_Z13worker_threadPv+0x48>

    // Kastujemo argument nazad u karakter koji ova nit treba da ispiše
    char c = *(char*)arg;

    // Ispisivanje dodeljenog slova na ekran
    putc(c);
    80007634:	00054503          	lbu	a0,0(a0)
    80007638:	ffffa097          	auipc	ra,0xffffa
    8000763c:	0ec080e7          	jalr	236(ra) # 80001724 <_Z4putcc>

    // Signaliziramo glavnoj niti da smo završili sa ispisom
    sem_signal(finished_sem);
    80007640:	00009517          	auipc	a0,0x9
    80007644:	95053503          	ld	a0,-1712(a0) # 8000ff90 <finished_sem>
    80007648:	ffffa097          	auipc	ra,0xffffa
    8000764c:	f94080e7          	jalr	-108(ra) # 800015dc <_Z10sem_signalP3Sem>

    // Eksplicitno gasimo nit i oslobađamo njene resurse
    thread_exit();
    80007650:	ffffa097          	auipc	ra,0xffffa
    80007654:	dec080e7          	jalr	-532(ra) # 8000143c <_Z11thread_exitv>
}
    80007658:	00813083          	ld	ra,8(sp)
    8000765c:	00013403          	ld	s0,0(sp)
    80007660:	01010113          	addi	sp,sp,16
    80007664:	00008067          	ret
        thread_exit();
    80007668:	ffffa097          	auipc	ra,0xffffa
    8000766c:	dd4080e7          	jalr	-556(ra) # 8000143c <_Z11thread_exitv>
        return;
    80007670:	fe9ff06f          	j	80007658 <_Z13worker_threadPv+0x38>

0000000080007674 <_Z11Seventymainv>:

int Seventymain() {
    80007674:	d6010113          	addi	sp,sp,-672
    80007678:	28113c23          	sd	ra,664(sp)
    8000767c:	28813823          	sd	s0,656(sp)
    80007680:	28913423          	sd	s1,648(sp)
    80007684:	29213023          	sd	s2,640(sp)
    80007688:	2a010413          	addi	s0,sp,672
    thread_t threads[NUM_THREADS];
    char characters[NUM_THREADS];

    // Otvaramo semafor sa početnom vrednošću 0.
    // Glavna nit će se blokirati na sem_wait sve dok radne niti ne urade sem_signal.
    if (sem_open(&finished_sem, 0) < 0) {
    8000768c:	00000593          	li	a1,0
    80007690:	00009517          	auipc	a0,0x9
    80007694:	90050513          	addi	a0,a0,-1792 # 8000ff90 <finished_sem>
    80007698:	ffffa097          	auipc	ra,0xffffa
    8000769c:	e88080e7          	jalr	-376(ra) # 80001520 <_Z8sem_openPP3Semj>
    800076a0:	0e054063          	bltz	a0,80007780 <_Z11Seventymainv+0x10c>
        return -1;
    }

    // Inicijalizujemo niz karaktera koje ćemo proslediti nitima.
    // Koristimo rotaciju kroz velika slova abecede ('A' do 'Z') radi lakše vizuelizacije.
    for (int i = 0; i < NUM_THREADS; i++) {
    800076a4:	00000713          	li	a4,0
    800076a8:	0200006f          	j	800076c8 <_Z11Seventymainv+0x54>
        characters[i] = 'A' + (i % 26);
    800076ac:	01a00793          	li	a5,26
    800076b0:	02f767bb          	remw	a5,a4,a5
    800076b4:	0417879b          	addiw	a5,a5,65
    800076b8:	fe040693          	addi	a3,s0,-32
    800076bc:	00e686b3          	add	a3,a3,a4
    800076c0:	d8f68423          	sb	a5,-632(a3)
    for (int i = 0; i < NUM_THREADS; i++) {
    800076c4:	0017071b          	addiw	a4,a4,1
    800076c8:	04500793          	li	a5,69
    800076cc:	fee7d0e3          	bge	a5,a4,800076ac <_Z11Seventymainv+0x38>
    }

    // Kreiranje 70 uporedno aktivnih niti
    for (int i = 0; i < NUM_THREADS; i++) {
    800076d0:	00000493          	li	s1,0
    800076d4:	04500793          	li	a5,69
    800076d8:	0297c863          	blt	a5,s1,80007708 <_Z11Seventymainv+0x94>
        int res = thread_create(&threads[i], worker_thread, &characters[i]);
    800076dc:	00349793          	slli	a5,s1,0x3
    800076e0:	d6840613          	addi	a2,s0,-664
    800076e4:	00960633          	add	a2,a2,s1
    800076e8:	00000597          	auipc	a1,0x0
    800076ec:	f3858593          	addi	a1,a1,-200 # 80007620 <_Z13worker_threadPv>
    800076f0:	db040513          	addi	a0,s0,-592
    800076f4:	00f50533          	add	a0,a0,a5
    800076f8:	ffffa097          	auipc	ra,0xffffa
    800076fc:	cd4080e7          	jalr	-812(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < NUM_THREADS; i++) {
    80007700:	0014849b          	addiw	s1,s1,1
    80007704:	fd1ff06f          	j	800076d4 <_Z11Seventymainv+0x60>
    }

    // Čekamo da svih 70 niti završi rad.
    // Pozivamo sem_wait 70 puta. Alternativno, ukoliko vaš kernel ima potpuno 
    // implementiran sem_wait_n, možete iskoristiti: sem_wait_n(finished_sem, NUM_THREADS);
    for (int i = 0; i < NUM_THREADS; i++) {
    80007708:	00000493          	li	s1,0
    8000770c:	04500793          	li	a5,69
    80007710:	0097ce63          	blt	a5,s1,8000772c <_Z11Seventymainv+0xb8>
        sem_wait(finished_sem);
    80007714:	00009517          	auipc	a0,0x9
    80007718:	87c53503          	ld	a0,-1924(a0) # 8000ff90 <finished_sem>
    8000771c:	ffffa097          	auipc	ra,0xffffa
    80007720:	e84080e7          	jalr	-380(ra) # 800015a0 <_Z8sem_waitP3Sem>
    for (int i = 0; i < NUM_THREADS; i++) {
    80007724:	0014849b          	addiw	s1,s1,1
    80007728:	fe5ff06f          	j	8000770c <_Z11Seventymainv+0x98>
    }

    // Nakon što su sve niti završile, bezbedno zatvaramo semafor
    sem_close(finished_sem);
    8000772c:	00009517          	auipc	a0,0x9
    80007730:	86453503          	ld	a0,-1948(a0) # 8000ff90 <finished_sem>
    80007734:	ffffa097          	auipc	ra,0xffffa
    80007738:	e30080e7          	jalr	-464(ra) # 80001564 <_Z9sem_closeP3Sem>

    // Ispisujemo novi red na samom kraju testa
    for (int i = 0; i < NUM_THREADS; i++) {
    8000773c:	00000493          	li	s1,0
    80007740:	0200006f          	j	80007760 <_Z11Seventymainv+0xec>
        delete threads[i];
    80007744:	00090513          	mv	a0,s2
    80007748:	ffffb097          	auipc	ra,0xffffb
    8000774c:	928080e7          	jalr	-1752(ra) # 80002070 <_ZN3TCBD1Ev>
    80007750:	00090513          	mv	a0,s2
    80007754:	ffffa097          	auipc	ra,0xffffa
    80007758:	664080e7          	jalr	1636(ra) # 80001db8 <_ZN3TCBdlEPv>
    for (int i = 0; i < NUM_THREADS; i++) {
    8000775c:	0014849b          	addiw	s1,s1,1
    80007760:	04500793          	li	a5,69
    80007764:	0297c263          	blt	a5,s1,80007788 <_Z11Seventymainv+0x114>
        delete threads[i];
    80007768:	00349793          	slli	a5,s1,0x3
    8000776c:	fe040713          	addi	a4,s0,-32
    80007770:	00f707b3          	add	a5,a4,a5
    80007774:	dd07b903          	ld	s2,-560(a5)
    80007778:	fc0916e3          	bnez	s2,80007744 <_Z11Seventymainv+0xd0>
    8000777c:	fe1ff06f          	j	8000775c <_Z11Seventymainv+0xe8>
        return -1;
    80007780:	fff00513          	li	a0,-1
    80007784:	0080006f          	j	8000778c <_Z11Seventymainv+0x118>
    }

    return 0;
    80007788:	00000513          	li	a0,0
    8000778c:	29813083          	ld	ra,664(sp)
    80007790:	29013403          	ld	s0,656(sp)
    80007794:	28813483          	ld	s1,648(sp)
    80007798:	28013903          	ld	s2,640(sp)
    8000779c:	2a010113          	addi	sp,sp,672
    800077a0:	00008067          	ret

00000000800077a4 <_Z19printStringPeriodicPKc>:
#include "../h/syscall_cpp.hpp"
void printStringPeriodic(const char* str) {
    800077a4:	fe010113          	addi	sp,sp,-32
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	00813823          	sd	s0,16(sp)
    800077b0:	00913423          	sd	s1,8(sp)
    800077b4:	02010413          	addi	s0,sp,32
    800077b8:	00050493          	mv	s1,a0
    while (*str) {
    800077bc:	0004c503          	lbu	a0,0(s1)
    800077c0:	00050a63          	beqz	a0,800077d4 <_Z19printStringPeriodicPKc+0x30>
        Console::putc(*str++);
    800077c4:	00148493          	addi	s1,s1,1
    800077c8:	ffffb097          	auipc	ra,0xffffb
    800077cc:	0d8080e7          	jalr	216(ra) # 800028a0 <_ZN7Console4putcEc>
    while (*str) {
    800077d0:	fedff06f          	j	800077bc <_Z19printStringPeriodicPKc+0x18>
    }
}
    800077d4:	01813083          	ld	ra,24(sp)
    800077d8:	01013403          	ld	s0,16(sp)
    800077dc:	00813483          	ld	s1,8(sp)
    800077e0:	02010113          	addi	sp,sp,32
    800077e4:	00008067          	ret

00000000800077e8 <_Z12periodicMainv>:

        brojac++;
    }
};

void periodicMain() {
    800077e8:	fe010113          	addi	sp,sp,-32
    800077ec:	00113c23          	sd	ra,24(sp)
    800077f0:	00813823          	sd	s0,16(sp)
    800077f4:	00913423          	sd	s1,8(sp)
    800077f8:	01213023          	sd	s2,0(sp)
    800077fc:	02010413          	addi	s0,sp,32
    printStringPeriodic("--- START TESTA ---\n");
    80007800:	00005517          	auipc	a0,0x5
    80007804:	02050513          	addi	a0,a0,32 # 8000c820 <CONSOLE_STATUS+0x810>
    80007808:	00000097          	auipc	ra,0x0
    8000780c:	f9c080e7          	jalr	-100(ra) # 800077a4 <_Z19printStringPeriodicPKc>

    // 1. Kreiramo periodicnu nit sa periodom od npr. 5 vremenskih jedinica
    printStringPeriodic("Glavna nit: Kreiram periodicnu nit sa periodom 5...\n");
    80007810:	00005517          	auipc	a0,0x5
    80007814:	02850513          	addi	a0,a0,40 # 8000c838 <CONSOLE_STATUS+0x828>
    80007818:	00000097          	auipc	ra,0x0
    8000781c:	f8c080e7          	jalr	-116(ra) # 800077a4 <_Z19printStringPeriodicPKc>
    MojPeriodicniRadnik* radnik = new MojPeriodicniRadnik(5);
    80007820:	03000513          	li	a0,48
    80007824:	ffffb097          	auipc	ra,0xffffb
    80007828:	cfc080e7          	jalr	-772(ra) # 80002520 <_Znwm>
    8000782c:	00050493          	mv	s1,a0
    MojPeriodicniRadnik(time_t period) : PeriodicThread(period), brojac(0) {}
    80007830:	00500593          	li	a1,5
    80007834:	ffffb097          	auipc	ra,0xffffb
    80007838:	0b0080e7          	jalr	176(ra) # 800028e4 <_ZN14PeriodicThreadC1Em>
    8000783c:	00008797          	auipc	a5,0x8
    80007840:	5a478793          	addi	a5,a5,1444 # 8000fde0 <_ZTV19MojPeriodicniRadnik+0x10>
    80007844:	00f4b023          	sd	a5,0(s1)
    80007848:	0204a423          	sw	zero,40(s1)

    // 2. Pokrecemo nit
    printStringPeriodic("Glavna nit: Pokrecem radnika...\n");
    8000784c:	00005517          	auipc	a0,0x5
    80007850:	02450513          	addi	a0,a0,36 # 8000c870 <CONSOLE_STATUS+0x860>
    80007854:	00000097          	auipc	ra,0x0
    80007858:	f50080e7          	jalr	-176(ra) # 800077a4 <_Z19printStringPeriodicPKc>
    if (radnik->start() < 0) {
    8000785c:	00048513          	mv	a0,s1
    80007860:	ffffb097          	auipc	ra,0xffffb
    80007864:	df8080e7          	jalr	-520(ra) # 80002658 <_ZN6Thread5startEv>
    80007868:	0a054263          	bltz	a0,8000790c <_Z12periodicMainv+0x124>
        delete radnik;
    }

    // 3. Glavna nit spava 22 vremenske jedinice
    // Za to vreme, radnik bi trebao da se aktivira oko 4 puta (na 0, 5, 10, 15, 20)
    printStringPeriodic("Glavna nit: Odlazim na spavanje (vreme: 22)...\n\n");
    8000786c:	00005517          	auipc	a0,0x5
    80007870:	05450513          	addi	a0,a0,84 # 8000c8c0 <CONSOLE_STATUS+0x8b0>
    80007874:	00000097          	auipc	ra,0x0
    80007878:	f30080e7          	jalr	-208(ra) # 800077a4 <_Z19printStringPeriodicPKc>
    Thread::sleep(20);
    8000787c:	01400513          	li	a0,20
    80007880:	ffffb097          	auipc	ra,0xffffb
    80007884:	e94080e7          	jalr	-364(ra) # 80002714 <_ZN6Thread5sleepEm>

    // 4. Gasimo periodicnu nit
    printStringPeriodic("\nGlavna nit: Budjenje! Pozivam terminate()...\n");
    80007888:	00005517          	auipc	a0,0x5
    8000788c:	07050513          	addi	a0,a0,112 # 8000c8f8 <CONSOLE_STATUS+0x8e8>
    80007890:	00000097          	auipc	ra,0x0
    80007894:	f14080e7          	jalr	-236(ra) # 800077a4 <_Z19printStringPeriodicPKc>
    radnik->terminate();
    80007898:	00048513          	mv	a0,s1
    8000789c:	ffffb097          	auipc	ra,0xffffb
    800078a0:	02c080e7          	jalr	44(ra) # 800028c8 <_ZN14PeriodicThread9terminateEv>

    // 5. Dajemo periodicni niti malo vremena da se probudi iz svog sleep-a,
    // vidi da je period postao 0, i bezbedno zavrsi rad.
    printStringPeriodic("Glavna nit: Cekam da se periodicna nit ugasi...\n");
    800078a4:	00005517          	auipc	a0,0x5
    800078a8:	08450513          	addi	a0,a0,132 # 8000c928 <CONSOLE_STATUS+0x918>
    800078ac:	00000097          	auipc	ra,0x0
    800078b0:	ef8080e7          	jalr	-264(ra) # 800077a4 <_Z19printStringPeriodicPKc>
    Thread::sleep(10);
    800078b4:	00a00513          	li	a0,10
    800078b8:	ffffb097          	auipc	ra,0xffffb
    800078bc:	e5c080e7          	jalr	-420(ra) # 80002714 <_ZN6Thread5sleepEm>

    // 6. Unistavamo objekat
    printStringPeriodic("Glavna nit: Brisem objekat niti iz memorije...\n");
    800078c0:	00005517          	auipc	a0,0x5
    800078c4:	0a050513          	addi	a0,a0,160 # 8000c960 <CONSOLE_STATUS+0x950>
    800078c8:	00000097          	auipc	ra,0x0
    800078cc:	edc080e7          	jalr	-292(ra) # 800077a4 <_Z19printStringPeriodicPKc>
    delete radnik;
    800078d0:	00048a63          	beqz	s1,800078e4 <_Z12periodicMainv+0xfc>
    800078d4:	0004b783          	ld	a5,0(s1)
    800078d8:	0087b783          	ld	a5,8(a5)
    800078dc:	00048513          	mv	a0,s1
    800078e0:	000780e7          	jalr	a5

    printStringPeriodic("--- KRAJ TESTA (Uspesno!) ---\n");
    800078e4:	00005517          	auipc	a0,0x5
    800078e8:	0ac50513          	addi	a0,a0,172 # 8000c990 <CONSOLE_STATUS+0x980>
    800078ec:	00000097          	auipc	ra,0x0
    800078f0:	eb8080e7          	jalr	-328(ra) # 800077a4 <_Z19printStringPeriodicPKc>
    800078f4:	01813083          	ld	ra,24(sp)
    800078f8:	01013403          	ld	s0,16(sp)
    800078fc:	00813483          	ld	s1,8(sp)
    80007900:	00013903          	ld	s2,0(sp)
    80007904:	02010113          	addi	sp,sp,32
    80007908:	00008067          	ret
        printStringPeriodic("Greska: Nit nije uspesno pokrenuta!\n");
    8000790c:	00005517          	auipc	a0,0x5
    80007910:	f8c50513          	addi	a0,a0,-116 # 8000c898 <CONSOLE_STATUS+0x888>
    80007914:	00000097          	auipc	ra,0x0
    80007918:	e90080e7          	jalr	-368(ra) # 800077a4 <_Z19printStringPeriodicPKc>
        delete radnik;
    8000791c:	f40488e3          	beqz	s1,8000786c <_Z12periodicMainv+0x84>
    80007920:	0004b783          	ld	a5,0(s1)
    80007924:	0087b783          	ld	a5,8(a5)
    80007928:	00048513          	mv	a0,s1
    8000792c:	000780e7          	jalr	a5
    80007930:	f3dff06f          	j	8000786c <_Z12periodicMainv+0x84>
    80007934:	00050913          	mv	s2,a0
    MojPeriodicniRadnik* radnik = new MojPeriodicniRadnik(5);
    80007938:	00048513          	mv	a0,s1
    8000793c:	ffffb097          	auipc	ra,0xffffb
    80007940:	c34080e7          	jalr	-972(ra) # 80002570 <_ZdlPv>
    80007944:	00090513          	mv	a0,s2
    80007948:	00009097          	auipc	ra,0x9
    8000794c:	760080e7          	jalr	1888(ra) # 800110a8 <_Unwind_Resume>

0000000080007950 <_ZN19MojPeriodicniRadnikD1Ev>:
class MojPeriodicniRadnik : public PeriodicThread {
    80007950:	ff010113          	addi	sp,sp,-16
    80007954:	00113423          	sd	ra,8(sp)
    80007958:	00813023          	sd	s0,0(sp)
    8000795c:	01010413          	addi	s0,sp,16

private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
    80007960:	00008797          	auipc	a5,0x8
    80007964:	4c87b783          	ld	a5,1224(a5) # 8000fe28 <_GLOBAL_OFFSET_TABLE_+0x28>
    80007968:	01078793          	addi	a5,a5,16
    8000796c:	00f53023          	sd	a5,0(a0)
    80007970:	ffffb097          	auipc	ra,0xffffb
    80007974:	b2c080e7          	jalr	-1236(ra) # 8000249c <_ZN6ThreadD1Ev>
    80007978:	00813083          	ld	ra,8(sp)
    8000797c:	00013403          	ld	s0,0(sp)
    80007980:	01010113          	addi	sp,sp,16
    80007984:	00008067          	ret

0000000080007988 <_ZN19MojPeriodicniRadnikD0Ev>:
    80007988:	fe010113          	addi	sp,sp,-32
    8000798c:	00113c23          	sd	ra,24(sp)
    80007990:	00813823          	sd	s0,16(sp)
    80007994:	00913423          	sd	s1,8(sp)
    80007998:	02010413          	addi	s0,sp,32
    8000799c:	00050493          	mv	s1,a0
    800079a0:	00008797          	auipc	a5,0x8
    800079a4:	4887b783          	ld	a5,1160(a5) # 8000fe28 <_GLOBAL_OFFSET_TABLE_+0x28>
    800079a8:	01078793          	addi	a5,a5,16
    800079ac:	00f53023          	sd	a5,0(a0)
    800079b0:	ffffb097          	auipc	ra,0xffffb
    800079b4:	aec080e7          	jalr	-1300(ra) # 8000249c <_ZN6ThreadD1Ev>
    800079b8:	00048513          	mv	a0,s1
    800079bc:	ffffb097          	auipc	ra,0xffffb
    800079c0:	bb4080e7          	jalr	-1100(ra) # 80002570 <_ZdlPv>
    800079c4:	01813083          	ld	ra,24(sp)
    800079c8:	01013403          	ld	s0,16(sp)
    800079cc:	00813483          	ld	s1,8(sp)
    800079d0:	02010113          	addi	sp,sp,32
    800079d4:	00008067          	ret

00000000800079d8 <_ZN19MojPeriodicniRadnik18periodicActivationEv>:
    void periodicActivation() override {
    800079d8:	fe010113          	addi	sp,sp,-32
    800079dc:	00113c23          	sd	ra,24(sp)
    800079e0:	00813823          	sd	s0,16(sp)
    800079e4:	00913423          	sd	s1,8(sp)
    800079e8:	02010413          	addi	s0,sp,32
    800079ec:	00050493          	mv	s1,a0
        printStringPeriodic("[Periodicna Nit] Aktivacija broj: ");
    800079f0:	00005517          	auipc	a0,0x5
    800079f4:	e0850513          	addi	a0,a0,-504 # 8000c7f8 <CONSOLE_STATUS+0x7e8>
    800079f8:	00000097          	auipc	ra,0x0
    800079fc:	dac080e7          	jalr	-596(ra) # 800077a4 <_Z19printStringPeriodicPKc>
        Console::putc('0' + (brojac % 10));
    80007a00:	0284a503          	lw	a0,40(s1)
    80007a04:	00a00793          	li	a5,10
    80007a08:	02f5653b          	remw	a0,a0,a5
    80007a0c:	0305051b          	addiw	a0,a0,48
    80007a10:	0ff57513          	andi	a0,a0,255
    80007a14:	ffffb097          	auipc	ra,0xffffb
    80007a18:	e8c080e7          	jalr	-372(ra) # 800028a0 <_ZN7Console4putcEc>
        printStringPeriodic("\n");
    80007a1c:	00005517          	auipc	a0,0x5
    80007a20:	ccc50513          	addi	a0,a0,-820 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80007a24:	00000097          	auipc	ra,0x0
    80007a28:	d80080e7          	jalr	-640(ra) # 800077a4 <_Z19printStringPeriodicPKc>
        brojac++;
    80007a2c:	0284a783          	lw	a5,40(s1)
    80007a30:	0017879b          	addiw	a5,a5,1
    80007a34:	02f4a423          	sw	a5,40(s1)
    }
    80007a38:	01813083          	ld	ra,24(sp)
    80007a3c:	01013403          	ld	s0,16(sp)
    80007a40:	00813483          	ld	s1,8(sp)
    80007a44:	02010113          	addi	sp,sp,32
    80007a48:	00008067          	ret

0000000080007a4c <_Z10putGetTestv>:
#include "../h/syscall_c.h"

void putGetTest(){
    80007a4c:	fe010113          	addi	sp,sp,-32
    80007a50:	00113c23          	sd	ra,24(sp)
    80007a54:	00813823          	sd	s0,16(sp)
    80007a58:	00913423          	sd	s1,8(sp)
    80007a5c:	02010413          	addi	s0,sp,32
    putc('U');
    80007a60:	05500513          	li	a0,85
    80007a64:	ffffa097          	auipc	ra,0xffffa
    80007a68:	cc0080e7          	jalr	-832(ra) # 80001724 <_Z4putcc>
    putc('N');
    80007a6c:	04e00513          	li	a0,78
    80007a70:	ffffa097          	auipc	ra,0xffffa
    80007a74:	cb4080e7          	jalr	-844(ra) # 80001724 <_Z4putcc>
    putc('E');
    80007a78:	04500513          	li	a0,69
    80007a7c:	ffffa097          	auipc	ra,0xffffa
    80007a80:	ca8080e7          	jalr	-856(ra) # 80001724 <_Z4putcc>
    putc('S');
    80007a84:	05300513          	li	a0,83
    80007a88:	ffffa097          	auipc	ra,0xffffa
    80007a8c:	c9c080e7          	jalr	-868(ra) # 80001724 <_Z4putcc>
    putc('I');
    80007a90:	04900513          	li	a0,73
    80007a94:	ffffa097          	auipc	ra,0xffffa
    80007a98:	c90080e7          	jalr	-880(ra) # 80001724 <_Z4putcc>
    char c = getc();
    80007a9c:	ffffa097          	auipc	ra,0xffffa
    80007aa0:	c4c080e7          	jalr	-948(ra) # 800016e8 <_Z4getcv>
    80007aa4:	00050493          	mv	s1,a0
    getc();
    80007aa8:	ffffa097          	auipc	ra,0xffffa
    80007aac:	c40080e7          	jalr	-960(ra) # 800016e8 <_Z4getcv>
    putc(c);
    80007ab0:	00048513          	mv	a0,s1
    80007ab4:	ffffa097          	auipc	ra,0xffffa
    80007ab8:	c70080e7          	jalr	-912(ra) # 80001724 <_Z4putcc>
    putc('U');
    80007abc:	05500513          	li	a0,85
    80007ac0:	ffffa097          	auipc	ra,0xffffa
    80007ac4:	c64080e7          	jalr	-924(ra) # 80001724 <_Z4putcc>
    putc('N');
    80007ac8:	04e00513          	li	a0,78
    80007acc:	ffffa097          	auipc	ra,0xffffa
    80007ad0:	c58080e7          	jalr	-936(ra) # 80001724 <_Z4putcc>
    putc('E');
    80007ad4:	04500513          	li	a0,69
    80007ad8:	ffffa097          	auipc	ra,0xffffa
    80007adc:	c4c080e7          	jalr	-948(ra) # 80001724 <_Z4putcc>
    putc('S');
    80007ae0:	05300513          	li	a0,83
    80007ae4:	ffffa097          	auipc	ra,0xffffa
    80007ae8:	c40080e7          	jalr	-960(ra) # 80001724 <_Z4putcc>
    putc('I');
    80007aec:	04900513          	li	a0,73
    80007af0:	ffffa097          	auipc	ra,0xffffa
    80007af4:	c34080e7          	jalr	-972(ra) # 80001724 <_Z4putcc>
    c = getc();
    80007af8:	ffffa097          	auipc	ra,0xffffa
    80007afc:	bf0080e7          	jalr	-1040(ra) # 800016e8 <_Z4getcv>
    80007b00:	00050493          	mv	s1,a0
    getc();
    80007b04:	ffffa097          	auipc	ra,0xffffa
    80007b08:	be4080e7          	jalr	-1052(ra) # 800016e8 <_Z4getcv>
    // 3. Kada korisnik nesto ukuca, odstampaćemo to nazad
    putc(c);
    80007b0c:	00048513          	mv	a0,s1
    80007b10:	ffffa097          	auipc	ra,0xffffa
    80007b14:	c14080e7          	jalr	-1004(ra) # 80001724 <_Z4putcc>
    putc('\n');
    80007b18:	00a00513          	li	a0,10
    80007b1c:	ffffa097          	auipc	ra,0xffffa
    80007b20:	c08080e7          	jalr	-1016(ra) # 80001724 <_Z4putcc>
}
    80007b24:	01813083          	ld	ra,24(sp)
    80007b28:	01013403          	ld	s0,16(sp)
    80007b2c:	00813483          	ld	s1,8(sp)
    80007b30:	02010113          	addi	sp,sp,32
    80007b34:	00008067          	ret

0000000080007b38 <_Z6justGov>:

void justGo(){
    80007b38:	ff010113          	addi	sp,sp,-16
    80007b3c:	00113423          	sd	ra,8(sp)
    80007b40:	00813023          	sd	s0,0(sp)
    80007b44:	01010413          	addi	s0,sp,16
    while(true){
        putc('L');
    80007b48:	04c00513          	li	a0,76
    80007b4c:	ffffa097          	auipc	ra,0xffffa
    80007b50:	bd8080e7          	jalr	-1064(ra) # 80001724 <_Z4putcc>
    while(true){
    80007b54:	ff5ff06f          	j	80007b48 <_Z6justGov+0x10>

0000000080007b58 <_Z13myprintStringPKc>:
#include "../h/syscall_c.h"

void myprintString(const char *string) {
    80007b58:	fe010113          	addi	sp,sp,-32
    80007b5c:	00113c23          	sd	ra,24(sp)
    80007b60:	00813823          	sd	s0,16(sp)
    80007b64:	00913423          	sd	s1,8(sp)
    80007b68:	02010413          	addi	s0,sp,32
    80007b6c:	00050493          	mv	s1,a0
    while (*string != '\0') {
    80007b70:	0004c503          	lbu	a0,0(s1)
    80007b74:	00050a63          	beqz	a0,80007b88 <_Z13myprintStringPKc+0x30>
        putc(*string);
    80007b78:	ffffa097          	auipc	ra,0xffffa
    80007b7c:	bac080e7          	jalr	-1108(ra) # 80001724 <_Z4putcc>
        string++;
    80007b80:	00148493          	addi	s1,s1,1
    while (*string != '\0') {
    80007b84:	fedff06f          	j	80007b70 <_Z13myprintStringPKc+0x18>
    }
}
    80007b88:	01813083          	ld	ra,24(sp)
    80007b8c:	01013403          	ld	s0,16(sp)
    80007b90:	00813483          	ld	s1,8(sp)
    80007b94:	02010113          	addi	sp,sp,32
    80007b98:	00008067          	ret

0000000080007b9c <_Z12greedyWorkerPv>:
// TEST 3: Multi-Resource (Wait_N i Signal_N)
// ==========================================
sem_t poolSem; // Bazen resursa, inicijalno npr. 5
sem_t mutexPrint; // Da nam se slova ne bi preklopila na ekranu

void greedyWorker(void* arg) {
    80007b9c:	fe010113          	addi	sp,sp,-32
    80007ba0:	00113c23          	sd	ra,24(sp)
    80007ba4:	00813823          	sd	s0,16(sp)
    80007ba8:	00913423          	sd	s1,8(sp)
    80007bac:	02010413          	addi	s0,sp,32
    sem_wait(mutexPrint);
    80007bb0:	00008497          	auipc	s1,0x8
    80007bb4:	3e848493          	addi	s1,s1,1000 # 8000ff98 <mutexPrint>
    80007bb8:	0004b503          	ld	a0,0(s1)
    80007bbc:	ffffa097          	auipc	ra,0xffffa
    80007bc0:	9e4080e7          	jalr	-1564(ra) # 800015a0 <_Z8sem_waitP3Sem>
    myprintString("[Test 3] Greedy nit pokusava da uzme 4 resursa...\n");
    80007bc4:	00005517          	auipc	a0,0x5
    80007bc8:	dec50513          	addi	a0,a0,-532 # 8000c9b0 <CONSOLE_STATUS+0x9a0>
    80007bcc:	00000097          	auipc	ra,0x0
    80007bd0:	f8c080e7          	jalr	-116(ra) # 80007b58 <_Z13myprintStringPKc>
    sem_signal(mutexPrint);
    80007bd4:	0004b503          	ld	a0,0(s1)
    80007bd8:	ffffa097          	auipc	ra,0xffffa
    80007bdc:	a04080e7          	jalr	-1532(ra) # 800015dc <_Z10sem_signalP3Sem>

    sem_wait_n(poolSem, 4); // Ovo bi trebalo da je blokira dok ne bude dovoljno resursa
    80007be0:	00400593          	li	a1,4
    80007be4:	0084b503          	ld	a0,8(s1)
    80007be8:	ffffa097          	auipc	ra,0xffffa
    80007bec:	a30080e7          	jalr	-1488(ra) # 80001618 <_Z10sem_wait_nP3Semj>

    sem_wait(mutexPrint);
    80007bf0:	0004b503          	ld	a0,0(s1)
    80007bf4:	ffffa097          	auipc	ra,0xffffa
    80007bf8:	9ac080e7          	jalr	-1620(ra) # 800015a0 <_Z8sem_waitP3Sem>
    myprintString("[Test 3] Greedy nit je UZELA 4 resursa!\n");
    80007bfc:	00005517          	auipc	a0,0x5
    80007c00:	dec50513          	addi	a0,a0,-532 # 8000c9e8 <CONSOLE_STATUS+0x9d8>
    80007c04:	00000097          	auipc	ra,0x0
    80007c08:	f54080e7          	jalr	-172(ra) # 80007b58 <_Z13myprintStringPKc>
    sem_signal(mutexPrint);
    80007c0c:	0004b503          	ld	a0,0(s1)
    80007c10:	ffffa097          	auipc	ra,0xffffa
    80007c14:	9cc080e7          	jalr	-1588(ra) # 800015dc <_Z10sem_signalP3Sem>

    thread_dispatch(); // Simulacija rada
    80007c18:	ffffa097          	auipc	ra,0xffffa
    80007c1c:	860080e7          	jalr	-1952(ra) # 80001478 <_Z15thread_dispatchv>

    sem_wait(mutexPrint);
    80007c20:	0004b503          	ld	a0,0(s1)
    80007c24:	ffffa097          	auipc	ra,0xffffa
    80007c28:	97c080e7          	jalr	-1668(ra) # 800015a0 <_Z8sem_waitP3Sem>
    myprintString("[Test 3] Greedy nit oslobadja 4 resursa.\n");
    80007c2c:	00005517          	auipc	a0,0x5
    80007c30:	dec50513          	addi	a0,a0,-532 # 8000ca18 <CONSOLE_STATUS+0xa08>
    80007c34:	00000097          	auipc	ra,0x0
    80007c38:	f24080e7          	jalr	-220(ra) # 80007b58 <_Z13myprintStringPKc>
    sem_signal(mutexPrint);
    80007c3c:	0004b503          	ld	a0,0(s1)
    80007c40:	ffffa097          	auipc	ra,0xffffa
    80007c44:	99c080e7          	jalr	-1636(ra) # 800015dc <_Z10sem_signalP3Sem>

    sem_signal_n(poolSem, 4);
    80007c48:	00400593          	li	a1,4
    80007c4c:	0084b503          	ld	a0,8(s1)
    80007c50:	ffffa097          	auipc	ra,0xffffa
    80007c54:	a0c080e7          	jalr	-1524(ra) # 8000165c <_Z12sem_signal_nP3Semj>
    sem_signal(testFinishedSem);
    80007c58:	0104b503          	ld	a0,16(s1)
    80007c5c:	ffffa097          	auipc	ra,0xffffa
    80007c60:	980080e7          	jalr	-1664(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    80007c64:	01813083          	ld	ra,24(sp)
    80007c68:	01013403          	ld	s0,16(sp)
    80007c6c:	00813483          	ld	s1,8(sp)
    80007c70:	02010113          	addi	sp,sp,32
    80007c74:	00008067          	ret

0000000080007c78 <_Z12modestWorkerPv>:

void modestWorker(void* arg) {
    80007c78:	fe010113          	addi	sp,sp,-32
    80007c7c:	00113c23          	sd	ra,24(sp)
    80007c80:	00813823          	sd	s0,16(sp)
    80007c84:	00913423          	sd	s1,8(sp)
    80007c88:	02010413          	addi	s0,sp,32
    sem_wait(mutexPrint);
    80007c8c:	00008497          	auipc	s1,0x8
    80007c90:	30c48493          	addi	s1,s1,780 # 8000ff98 <mutexPrint>
    80007c94:	0004b503          	ld	a0,0(s1)
    80007c98:	ffffa097          	auipc	ra,0xffffa
    80007c9c:	908080e7          	jalr	-1784(ra) # 800015a0 <_Z8sem_waitP3Sem>
    myprintString("[Test 3] Modest nit uzima 2 resursa...\n");
    80007ca0:	00005517          	auipc	a0,0x5
    80007ca4:	da850513          	addi	a0,a0,-600 # 8000ca48 <CONSOLE_STATUS+0xa38>
    80007ca8:	00000097          	auipc	ra,0x0
    80007cac:	eb0080e7          	jalr	-336(ra) # 80007b58 <_Z13myprintStringPKc>
    sem_signal(mutexPrint);
    80007cb0:	0004b503          	ld	a0,0(s1)
    80007cb4:	ffffa097          	auipc	ra,0xffffa
    80007cb8:	928080e7          	jalr	-1752(ra) # 800015dc <_Z10sem_signalP3Sem>

    sem_wait_n(poolSem, 2);
    80007cbc:	00200593          	li	a1,2
    80007cc0:	0084b503          	ld	a0,8(s1)
    80007cc4:	ffffa097          	auipc	ra,0xffffa
    80007cc8:	954080e7          	jalr	-1708(ra) # 80001618 <_Z10sem_wait_nP3Semj>

    sem_wait(mutexPrint);
    80007ccc:	0004b503          	ld	a0,0(s1)
    80007cd0:	ffffa097          	auipc	ra,0xffffa
    80007cd4:	8d0080e7          	jalr	-1840(ra) # 800015a0 <_Z8sem_waitP3Sem>
    myprintString("[Test 3] Modest nit je UZELA 2 resursa!\n");
    80007cd8:	00005517          	auipc	a0,0x5
    80007cdc:	d9850513          	addi	a0,a0,-616 # 8000ca70 <CONSOLE_STATUS+0xa60>
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	e78080e7          	jalr	-392(ra) # 80007b58 <_Z13myprintStringPKc>
    sem_signal(mutexPrint);
    80007ce8:	0004b503          	ld	a0,0(s1)
    80007cec:	ffffa097          	auipc	ra,0xffffa
    80007cf0:	8f0080e7          	jalr	-1808(ra) # 800015dc <_Z10sem_signalP3Sem>

    thread_dispatch(); // Simulacija rada
    80007cf4:	ffff9097          	auipc	ra,0xffff9
    80007cf8:	784080e7          	jalr	1924(ra) # 80001478 <_Z15thread_dispatchv>

    sem_wait(mutexPrint);
    80007cfc:	0004b503          	ld	a0,0(s1)
    80007d00:	ffffa097          	auipc	ra,0xffffa
    80007d04:	8a0080e7          	jalr	-1888(ra) # 800015a0 <_Z8sem_waitP3Sem>
    myprintString("[Test 3] Modest nit oslobadja 2 resursa.\n");
    80007d08:	00005517          	auipc	a0,0x5
    80007d0c:	d9850513          	addi	a0,a0,-616 # 8000caa0 <CONSOLE_STATUS+0xa90>
    80007d10:	00000097          	auipc	ra,0x0
    80007d14:	e48080e7          	jalr	-440(ra) # 80007b58 <_Z13myprintStringPKc>
    sem_signal(mutexPrint);
    80007d18:	0004b503          	ld	a0,0(s1)
    80007d1c:	ffffa097          	auipc	ra,0xffffa
    80007d20:	8c0080e7          	jalr	-1856(ra) # 800015dc <_Z10sem_signalP3Sem>

    sem_signal_n(poolSem, 2);
    80007d24:	00200593          	li	a1,2
    80007d28:	0084b503          	ld	a0,8(s1)
    80007d2c:	ffffa097          	auipc	ra,0xffffa
    80007d30:	930080e7          	jalr	-1744(ra) # 8000165c <_Z12sem_signal_nP3Semj>
    sem_signal(testFinishedSem);
    80007d34:	0104b503          	ld	a0,16(s1)
    80007d38:	ffffa097          	auipc	ra,0xffffa
    80007d3c:	8a4080e7          	jalr	-1884(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    80007d40:	01813083          	ld	ra,24(sp)
    80007d44:	01013403          	ld	s0,16(sp)
    80007d48:	00813483          	ld	s1,8(sp)
    80007d4c:	02010113          	addi	sp,sp,32
    80007d50:	00008067          	ret

0000000080007d54 <_Z10myprintInti>:
void myprintInt(int val) {
    80007d54:	fc010113          	addi	sp,sp,-64
    80007d58:	02113c23          	sd	ra,56(sp)
    80007d5c:	02813823          	sd	s0,48(sp)
    80007d60:	02913423          	sd	s1,40(sp)
    80007d64:	03213023          	sd	s2,32(sp)
    80007d68:	04010413          	addi	s0,sp,64
    if (val == 0) {
    80007d6c:	02050c63          	beqz	a0,80007da4 <_Z10myprintInti+0x50>
    80007d70:	00050913          	mv	s2,a0
    if (val < 0) {
    80007d74:	04054063          	bltz	a0,80007db4 <_Z10myprintInti+0x60>
void myprintInt(int val) {
    80007d78:	00000493          	li	s1,0
    while (val > 0) {
    80007d7c:	07205263          	blez	s2,80007de0 <_Z10myprintInti+0x8c>
        buffer[i++] = (val % 10) + '0';
    80007d80:	00a00713          	li	a4,10
    80007d84:	02e967bb          	remw	a5,s2,a4
    80007d88:	0307879b          	addiw	a5,a5,48
    80007d8c:	fe040693          	addi	a3,s0,-32
    80007d90:	009686b3          	add	a3,a3,s1
    80007d94:	fef68423          	sb	a5,-24(a3)
        val /= 10;
    80007d98:	02e9493b          	divw	s2,s2,a4
        buffer[i++] = (val % 10) + '0';
    80007d9c:	0014849b          	addiw	s1,s1,1
    while (val > 0) {
    80007da0:	fddff06f          	j	80007d7c <_Z10myprintInti+0x28>
        putc('0');
    80007da4:	03000513          	li	a0,48
    80007da8:	ffffa097          	auipc	ra,0xffffa
    80007dac:	97c080e7          	jalr	-1668(ra) # 80001724 <_Z4putcc>
        return;
    80007db0:	0340006f          	j	80007de4 <_Z10myprintInti+0x90>
        putc('-');
    80007db4:	02d00513          	li	a0,45
    80007db8:	ffffa097          	auipc	ra,0xffffa
    80007dbc:	96c080e7          	jalr	-1684(ra) # 80001724 <_Z4putcc>
        val = -val;
    80007dc0:	4120093b          	negw	s2,s2
    80007dc4:	fb5ff06f          	j	80007d78 <_Z10myprintInti+0x24>
        putc(buffer[--i]);
    80007dc8:	fff4849b          	addiw	s1,s1,-1
    80007dcc:	fe040793          	addi	a5,s0,-32
    80007dd0:	009787b3          	add	a5,a5,s1
    80007dd4:	fe87c503          	lbu	a0,-24(a5)
    80007dd8:	ffffa097          	auipc	ra,0xffffa
    80007ddc:	94c080e7          	jalr	-1716(ra) # 80001724 <_Z4putcc>
    while (i > 0) {
    80007de0:	fe9044e3          	bgtz	s1,80007dc8 <_Z10myprintInti+0x74>
}
    80007de4:	03813083          	ld	ra,56(sp)
    80007de8:	03013403          	ld	s0,48(sp)
    80007dec:	02813483          	ld	s1,40(sp)
    80007df0:	02013903          	ld	s2,32(sp)
    80007df4:	04010113          	addi	sp,sp,64
    80007df8:	00008067          	ret

0000000080007dfc <_Z14producerSinglePv>:
void producerSingle(void* arg) {
    80007dfc:	fe010113          	addi	sp,sp,-32
    80007e00:	00113c23          	sd	ra,24(sp)
    80007e04:	00813823          	sd	s0,16(sp)
    80007e08:	00913423          	sd	s1,8(sp)
    80007e0c:	01213023          	sd	s2,0(sp)
    80007e10:	02010413          	addi	s0,sp,32
    for (int i = 1; i <= 3; i++) {
    80007e14:	00100913          	li	s2,1
    80007e18:	0780006f          	j	80007e90 <_Z14producerSinglePv+0x94>
        sem_wait(spaceSingle);
    80007e1c:	00008497          	auipc	s1,0x8
    80007e20:	17c48493          	addi	s1,s1,380 # 8000ff98 <mutexPrint>
    80007e24:	0184b503          	ld	a0,24(s1)
    80007e28:	ffff9097          	auipc	ra,0xffff9
    80007e2c:	778080e7          	jalr	1912(ra) # 800015a0 <_Z8sem_waitP3Sem>
        sem_wait(mutexSingle);
    80007e30:	0204b503          	ld	a0,32(s1)
    80007e34:	ffff9097          	auipc	ra,0xffff9
    80007e38:	76c080e7          	jalr	1900(ra) # 800015a0 <_Z8sem_waitP3Sem>
        singleBuffer = i;
    80007e3c:	0324a423          	sw	s2,40(s1)
        myprintString("[Test 2 - Producer] Upisao u bafer: ");
    80007e40:	00005517          	auipc	a0,0x5
    80007e44:	c9050513          	addi	a0,a0,-880 # 8000cad0 <CONSOLE_STATUS+0xac0>
    80007e48:	00000097          	auipc	ra,0x0
    80007e4c:	d10080e7          	jalr	-752(ra) # 80007b58 <_Z13myprintStringPKc>
        myprintInt(singleBuffer);
    80007e50:	0284a503          	lw	a0,40(s1)
    80007e54:	00000097          	auipc	ra,0x0
    80007e58:	f00080e7          	jalr	-256(ra) # 80007d54 <_Z10myprintInti>
        myprintString("\n");
    80007e5c:	00005517          	auipc	a0,0x5
    80007e60:	88c50513          	addi	a0,a0,-1908 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80007e64:	00000097          	auipc	ra,0x0
    80007e68:	cf4080e7          	jalr	-780(ra) # 80007b58 <_Z13myprintStringPKc>
        sem_signal(mutexSingle);
    80007e6c:	0204b503          	ld	a0,32(s1)
    80007e70:	ffff9097          	auipc	ra,0xffff9
    80007e74:	76c080e7          	jalr	1900(ra) # 800015dc <_Z10sem_signalP3Sem>
        sem_signal(itemSingle);
    80007e78:	0304b503          	ld	a0,48(s1)
    80007e7c:	ffff9097          	auipc	ra,0xffff9
    80007e80:	760080e7          	jalr	1888(ra) # 800015dc <_Z10sem_signalP3Sem>
        thread_dispatch(); // Nasilna promena
    80007e84:	ffff9097          	auipc	ra,0xffff9
    80007e88:	5f4080e7          	jalr	1524(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 1; i <= 3; i++) {
    80007e8c:	0019091b          	addiw	s2,s2,1
    80007e90:	00300793          	li	a5,3
    80007e94:	f927d4e3          	bge	a5,s2,80007e1c <_Z14producerSinglePv+0x20>
    sem_signal(testFinishedSem);
    80007e98:	00008517          	auipc	a0,0x8
    80007e9c:	11053503          	ld	a0,272(a0) # 8000ffa8 <testFinishedSem>
    80007ea0:	ffff9097          	auipc	ra,0xffff9
    80007ea4:	73c080e7          	jalr	1852(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    80007ea8:	01813083          	ld	ra,24(sp)
    80007eac:	01013403          	ld	s0,16(sp)
    80007eb0:	00813483          	ld	s1,8(sp)
    80007eb4:	00013903          	ld	s2,0(sp)
    80007eb8:	02010113          	addi	sp,sp,32
    80007ebc:	00008067          	ret

0000000080007ec0 <_Z14consumerSinglePv>:
void consumerSingle(void* arg) {
    80007ec0:	fd010113          	addi	sp,sp,-48
    80007ec4:	02113423          	sd	ra,40(sp)
    80007ec8:	02813023          	sd	s0,32(sp)
    80007ecc:	00913c23          	sd	s1,24(sp)
    80007ed0:	01213823          	sd	s2,16(sp)
    80007ed4:	01313423          	sd	s3,8(sp)
    80007ed8:	03010413          	addi	s0,sp,48
    for (int i = 1; i <= 3; i++) {
    80007edc:	00100913          	li	s2,1
    80007ee0:	0780006f          	j	80007f58 <_Z14consumerSinglePv+0x98>
        sem_wait(itemSingle);
    80007ee4:	00008497          	auipc	s1,0x8
    80007ee8:	0b448493          	addi	s1,s1,180 # 8000ff98 <mutexPrint>
    80007eec:	0304b503          	ld	a0,48(s1)
    80007ef0:	ffff9097          	auipc	ra,0xffff9
    80007ef4:	6b0080e7          	jalr	1712(ra) # 800015a0 <_Z8sem_waitP3Sem>
        sem_wait(mutexSingle);
    80007ef8:	0204b503          	ld	a0,32(s1)
    80007efc:	ffff9097          	auipc	ra,0xffff9
    80007f00:	6a4080e7          	jalr	1700(ra) # 800015a0 <_Z8sem_waitP3Sem>
        int vrednost = singleBuffer;
    80007f04:	0284a983          	lw	s3,40(s1)
        myprintString("[Test 2 - Consumer] Procitao iz bafera: ");
    80007f08:	00005517          	auipc	a0,0x5
    80007f0c:	bf050513          	addi	a0,a0,-1040 # 8000caf8 <CONSOLE_STATUS+0xae8>
    80007f10:	00000097          	auipc	ra,0x0
    80007f14:	c48080e7          	jalr	-952(ra) # 80007b58 <_Z13myprintStringPKc>
        myprintInt(vrednost);
    80007f18:	00098513          	mv	a0,s3
    80007f1c:	00000097          	auipc	ra,0x0
    80007f20:	e38080e7          	jalr	-456(ra) # 80007d54 <_Z10myprintInti>
        myprintString("\n");
    80007f24:	00004517          	auipc	a0,0x4
    80007f28:	7c450513          	addi	a0,a0,1988 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80007f2c:	00000097          	auipc	ra,0x0
    80007f30:	c2c080e7          	jalr	-980(ra) # 80007b58 <_Z13myprintStringPKc>
        sem_signal(mutexSingle);
    80007f34:	0204b503          	ld	a0,32(s1)
    80007f38:	ffff9097          	auipc	ra,0xffff9
    80007f3c:	6a4080e7          	jalr	1700(ra) # 800015dc <_Z10sem_signalP3Sem>
        sem_signal(spaceSingle);
    80007f40:	0184b503          	ld	a0,24(s1)
    80007f44:	ffff9097          	auipc	ra,0xffff9
    80007f48:	698080e7          	jalr	1688(ra) # 800015dc <_Z10sem_signalP3Sem>
        thread_dispatch(); // Nasilna promena
    80007f4c:	ffff9097          	auipc	ra,0xffff9
    80007f50:	52c080e7          	jalr	1324(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 1; i <= 3; i++) {
    80007f54:	0019091b          	addiw	s2,s2,1
    80007f58:	00300793          	li	a5,3
    80007f5c:	f927d4e3          	bge	a5,s2,80007ee4 <_Z14consumerSinglePv+0x24>
    sem_signal(testFinishedSem);
    80007f60:	00008517          	auipc	a0,0x8
    80007f64:	04853503          	ld	a0,72(a0) # 8000ffa8 <testFinishedSem>
    80007f68:	ffff9097          	auipc	ra,0xffff9
    80007f6c:	674080e7          	jalr	1652(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    80007f70:	02813083          	ld	ra,40(sp)
    80007f74:	02013403          	ld	s0,32(sp)
    80007f78:	01813483          	ld	s1,24(sp)
    80007f7c:	01013903          	ld	s2,16(sp)
    80007f80:	00813983          	ld	s3,8(sp)
    80007f84:	03010113          	addi	sp,sp,48
    80007f88:	00008067          	ret

0000000080007f8c <_Z19rekurzijaFaktorijeli>:
int rekurzijaFaktorijel(int n) {
    80007f8c:	fe010113          	addi	sp,sp,-32
    80007f90:	00113c23          	sd	ra,24(sp)
    80007f94:	00813823          	sd	s0,16(sp)
    80007f98:	00913423          	sd	s1,8(sp)
    80007f9c:	02010413          	addi	s0,sp,32
    80007fa0:	00050493          	mv	s1,a0
    thread_dispatch(); // Nasilno prekidamo nit da vidimo da li stek preživljava
    80007fa4:	ffff9097          	auipc	ra,0xffff9
    80007fa8:	4d4080e7          	jalr	1236(ra) # 80001478 <_Z15thread_dispatchv>
    if (n <= 1) return 1;
    80007fac:	00100793          	li	a5,1
    80007fb0:	0297d463          	bge	a5,s1,80007fd8 <_Z19rekurzijaFaktorijeli+0x4c>
    return n * rekurzijaFaktorijel(n - 1);
    80007fb4:	fff4851b          	addiw	a0,s1,-1
    80007fb8:	00000097          	auipc	ra,0x0
    80007fbc:	fd4080e7          	jalr	-44(ra) # 80007f8c <_Z19rekurzijaFaktorijeli>
    80007fc0:	02a4853b          	mulw	a0,s1,a0
}
    80007fc4:	01813083          	ld	ra,24(sp)
    80007fc8:	01013403          	ld	s0,16(sp)
    80007fcc:	00813483          	ld	s1,8(sp)
    80007fd0:	02010113          	addi	sp,sp,32
    80007fd4:	00008067          	ret
    if (n <= 1) return 1;
    80007fd8:	00100513          	li	a0,1
    80007fdc:	fe9ff06f          	j	80007fc4 <_Z19rekurzijaFaktorijeli+0x38>

0000000080007fe0 <_Z15recursionThreadPv>:
void recursionThread(void* arg) {
    80007fe0:	fe010113          	addi	sp,sp,-32
    80007fe4:	00113c23          	sd	ra,24(sp)
    80007fe8:	00813823          	sd	s0,16(sp)
    80007fec:	00913423          	sd	s1,8(sp)
    80007ff0:	02010413          	addi	s0,sp,32
    myprintString("[Test 1] Zapocinjem rekurziju...\n");
    80007ff4:	00005517          	auipc	a0,0x5
    80007ff8:	b3450513          	addi	a0,a0,-1228 # 8000cb28 <CONSOLE_STATUS+0xb18>
    80007ffc:	00000097          	auipc	ra,0x0
    80008000:	b5c080e7          	jalr	-1188(ra) # 80007b58 <_Z13myprintStringPKc>
    int rezultat = rekurzijaFaktorijel(5);
    80008004:	00500513          	li	a0,5
    80008008:	00000097          	auipc	ra,0x0
    8000800c:	f84080e7          	jalr	-124(ra) # 80007f8c <_Z19rekurzijaFaktorijeli>
    80008010:	00050493          	mv	s1,a0
    myprintString("[Test 1] Faktorijel od 5 je: ");
    80008014:	00005517          	auipc	a0,0x5
    80008018:	b3c50513          	addi	a0,a0,-1220 # 8000cb50 <CONSOLE_STATUS+0xb40>
    8000801c:	00000097          	auipc	ra,0x0
    80008020:	b3c080e7          	jalr	-1220(ra) # 80007b58 <_Z13myprintStringPKc>
    myprintInt(rezultat); // Treba da bude 120
    80008024:	00048513          	mv	a0,s1
    80008028:	00000097          	auipc	ra,0x0
    8000802c:	d2c080e7          	jalr	-724(ra) # 80007d54 <_Z10myprintInti>
    myprintString("\n");
    80008030:	00004517          	auipc	a0,0x4
    80008034:	6b850513          	addi	a0,a0,1720 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80008038:	00000097          	auipc	ra,0x0
    8000803c:	b20080e7          	jalr	-1248(ra) # 80007b58 <_Z13myprintStringPKc>
    sem_signal(testFinishedSem);
    80008040:	00008517          	auipc	a0,0x8
    80008044:	f6853503          	ld	a0,-152(a0) # 8000ffa8 <testFinishedSem>
    80008048:	ffff9097          	auipc	ra,0xffff9
    8000804c:	594080e7          	jalr	1428(ra) # 800015dc <_Z10sem_signalP3Sem>
}
    80008050:	01813083          	ld	ra,24(sp)
    80008054:	01013403          	ld	s0,16(sp)
    80008058:	00813483          	ld	s1,8(sp)
    8000805c:	02010113          	addi	sp,sp,32
    80008060:	00008067          	ret

0000000080008064 <_Z16cynhroneSemTest1v>:

// ==========================================
// GLAVNA KORISNIČKA FUNKCIJA (userMain)
// ==========================================
void cynhroneSemTest1() {
    80008064:	fb010113          	addi	sp,sp,-80
    80008068:	04113423          	sd	ra,72(sp)
    8000806c:	04813023          	sd	s0,64(sp)
    80008070:	02913c23          	sd	s1,56(sp)
    80008074:	05010413          	addi	s0,sp,80
    myprintString("=== Pocinje korisnicki test ===\n");
    80008078:	00005517          	auipc	a0,0x5
    8000807c:	af850513          	addi	a0,a0,-1288 # 8000cb70 <CONSOLE_STATUS+0xb60>
    80008080:	00000097          	auipc	ra,0x0
    80008084:	ad8080e7          	jalr	-1320(ra) # 80007b58 <_Z13myprintStringPKc>

    // Inicijalizacija semafora
    sem_open(&testFinishedSem, 0); // Krece od 0, niti ga signaliziraju na kraju
    80008088:	00000593          	li	a1,0
    8000808c:	00008517          	auipc	a0,0x8
    80008090:	f1c50513          	addi	a0,a0,-228 # 8000ffa8 <testFinishedSem>
    80008094:	ffff9097          	auipc	ra,0xffff9
    80008098:	48c080e7          	jalr	1164(ra) # 80001520 <_Z8sem_openPP3Semj>
    sem_open(&mutexSingle, 1);
    8000809c:	00100593          	li	a1,1
    800080a0:	00008517          	auipc	a0,0x8
    800080a4:	f1850513          	addi	a0,a0,-232 # 8000ffb8 <mutexSingle>
    800080a8:	ffff9097          	auipc	ra,0xffff9
    800080ac:	478080e7          	jalr	1144(ra) # 80001520 <_Z8sem_openPP3Semj>
    sem_open(&spaceSingle, 1);     // Samo jedno mesto u baferu
    800080b0:	00100593          	li	a1,1
    800080b4:	00008517          	auipc	a0,0x8
    800080b8:	efc50513          	addi	a0,a0,-260 # 8000ffb0 <spaceSingle>
    800080bc:	ffff9097          	auipc	ra,0xffff9
    800080c0:	464080e7          	jalr	1124(ra) # 80001520 <_Z8sem_openPP3Semj>
    sem_open(&itemSingle, 0);      // Inicijalno prazno
    800080c4:	00000593          	li	a1,0
    800080c8:	00008517          	auipc	a0,0x8
    800080cc:	f0050513          	addi	a0,a0,-256 # 8000ffc8 <itemSingle>
    800080d0:	ffff9097          	auipc	ra,0xffff9
    800080d4:	450080e7          	jalr	1104(ra) # 80001520 <_Z8sem_openPP3Semj>

    sem_open(&poolSem, 5);         // Bazen od 5 resursa
    800080d8:	00500593          	li	a1,5
    800080dc:	00008517          	auipc	a0,0x8
    800080e0:	ec450513          	addi	a0,a0,-316 # 8000ffa0 <poolSem>
    800080e4:	ffff9097          	auipc	ra,0xffff9
    800080e8:	43c080e7          	jalr	1084(ra) # 80001520 <_Z8sem_openPP3Semj>
    sem_open(&mutexPrint, 1);      // Zastita ispisa
    800080ec:	00100593          	li	a1,1
    800080f0:	00008517          	auipc	a0,0x8
    800080f4:	ea850513          	addi	a0,a0,-344 # 8000ff98 <mutexPrint>
    800080f8:	ffff9097          	auipc	ra,0xffff9
    800080fc:	428080e7          	jalr	1064(ra) # 80001520 <_Z8sem_openPP3Semj>

    thread_t threads[6];

    // Kreiranje niti
    thread_create(&threads[0], recursionThread, nullptr);
    80008100:	00000613          	li	a2,0
    80008104:	00000597          	auipc	a1,0x0
    80008108:	edc58593          	addi	a1,a1,-292 # 80007fe0 <_Z15recursionThreadPv>
    8000810c:	fb040513          	addi	a0,s0,-80
    80008110:	ffff9097          	auipc	ra,0xffff9
    80008114:	2bc080e7          	jalr	700(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[1], producerSingle, nullptr);
    80008118:	00000613          	li	a2,0
    8000811c:	00000597          	auipc	a1,0x0
    80008120:	ce058593          	addi	a1,a1,-800 # 80007dfc <_Z14producerSinglePv>
    80008124:	fb840513          	addi	a0,s0,-72
    80008128:	ffff9097          	auipc	ra,0xffff9
    8000812c:	2a4080e7          	jalr	676(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], consumerSingle, nullptr);
    80008130:	00000613          	li	a2,0
    80008134:	00000597          	auipc	a1,0x0
    80008138:	d8c58593          	addi	a1,a1,-628 # 80007ec0 <_Z14consumerSinglePv>
    8000813c:	fc040513          	addi	a0,s0,-64
    80008140:	ffff9097          	auipc	ra,0xffff9
    80008144:	28c080e7          	jalr	652(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>

    // Test 3 raspored: 
    // Modest1 odmah uzima 2 (ostaje 3). Greedy hoce 4 (BLOKIRA SE). Modest2 hoce 2 (ostaje 1).
    // Modesti vrate resurse, Greedy se budi i uzima 4.
    thread_create(&threads[3], modestWorker, nullptr);
    80008148:	00000613          	li	a2,0
    8000814c:	00000597          	auipc	a1,0x0
    80008150:	b2c58593          	addi	a1,a1,-1236 # 80007c78 <_Z12modestWorkerPv>
    80008154:	fc840513          	addi	a0,s0,-56
    80008158:	ffff9097          	auipc	ra,0xffff9
    8000815c:	274080e7          	jalr	628(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[4], greedyWorker, nullptr);
    80008160:	00000613          	li	a2,0
    80008164:	00000597          	auipc	a1,0x0
    80008168:	a3858593          	addi	a1,a1,-1480 # 80007b9c <_Z12greedyWorkerPv>
    8000816c:	fd040513          	addi	a0,s0,-48
    80008170:	ffff9097          	auipc	ra,0xffff9
    80008174:	25c080e7          	jalr	604(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[5], modestWorker, nullptr);
    80008178:	00000613          	li	a2,0
    8000817c:	00000597          	auipc	a1,0x0
    80008180:	afc58593          	addi	a1,a1,-1284 # 80007c78 <_Z12modestWorkerPv>
    80008184:	fd840513          	addi	a0,s0,-40
    80008188:	ffff9097          	auipc	ra,0xffff9
    8000818c:	244080e7          	jalr	580(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>

    // Glavna nit ceka da se zavrsi svih 6 radnih niti
    for (int i = 0; i < 6; i++) {
    80008190:	00000493          	li	s1,0
    80008194:	00500793          	li	a5,5
    80008198:	0097ce63          	blt	a5,s1,800081b4 <_Z16cynhroneSemTest1v+0x150>
        sem_wait(testFinishedSem); // Ekvivalent join() komande
    8000819c:	00008517          	auipc	a0,0x8
    800081a0:	e0c53503          	ld	a0,-500(a0) # 8000ffa8 <testFinishedSem>
    800081a4:	ffff9097          	auipc	ra,0xffff9
    800081a8:	3fc080e7          	jalr	1020(ra) # 800015a0 <_Z8sem_waitP3Sem>
    for (int i = 0; i < 6; i++) {
    800081ac:	0014849b          	addiw	s1,s1,1
    800081b0:	fe5ff06f          	j	80008194 <_Z16cynhroneSemTest1v+0x130>
    }

    myprintString("=== Svi testovi su uspesno zavrseni ===\n");
    800081b4:	00005517          	auipc	a0,0x5
    800081b8:	9e450513          	addi	a0,a0,-1564 # 8000cb98 <CONSOLE_STATUS+0xb88>
    800081bc:	00000097          	auipc	ra,0x0
    800081c0:	99c080e7          	jalr	-1636(ra) # 80007b58 <_Z13myprintStringPKc>

    // Čišćenje memorije (dealokacija semafora)
    sem_close(testFinishedSem);
    800081c4:	00008497          	auipc	s1,0x8
    800081c8:	dd448493          	addi	s1,s1,-556 # 8000ff98 <mutexPrint>
    800081cc:	0104b503          	ld	a0,16(s1)
    800081d0:	ffff9097          	auipc	ra,0xffff9
    800081d4:	394080e7          	jalr	916(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(mutexSingle);
    800081d8:	0204b503          	ld	a0,32(s1)
    800081dc:	ffff9097          	auipc	ra,0xffff9
    800081e0:	388080e7          	jalr	904(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(spaceSingle);
    800081e4:	0184b503          	ld	a0,24(s1)
    800081e8:	ffff9097          	auipc	ra,0xffff9
    800081ec:	37c080e7          	jalr	892(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(itemSingle);
    800081f0:	0304b503          	ld	a0,48(s1)
    800081f4:	ffff9097          	auipc	ra,0xffff9
    800081f8:	370080e7          	jalr	880(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(poolSem);
    800081fc:	0084b503          	ld	a0,8(s1)
    80008200:	ffff9097          	auipc	ra,0xffff9
    80008204:	364080e7          	jalr	868(ra) # 80001564 <_Z9sem_closeP3Sem>
    sem_close(mutexPrint);
    80008208:	0004b503          	ld	a0,0(s1)
    8000820c:	ffff9097          	auipc	ra,0xffff9
    80008210:	358080e7          	jalr	856(ra) # 80001564 <_Z9sem_closeP3Sem>
    80008214:	04813083          	ld	ra,72(sp)
    80008218:	04013403          	ld	s0,64(sp)
    8000821c:	03813483          	ld	s1,56(sp)
    80008220:	05010113          	addi	sp,sp,80
    80008224:	00008067          	ret

0000000080008228 <_ZL8printInti>:

static void printStr(const char* s) {
    while (*s) putc(*s++);
}

static void printInt(int n) {
    80008228:	fe010113          	addi	sp,sp,-32
    8000822c:	00113c23          	sd	ra,24(sp)
    80008230:	00813823          	sd	s0,16(sp)
    80008234:	00913423          	sd	s1,8(sp)
    80008238:	02010413          	addi	s0,sp,32
    8000823c:	00050493          	mv	s1,a0
    if (n < 0) { putc('-'); n = -n; }
    80008240:	02054c63          	bltz	a0,80008278 <_ZL8printInti+0x50>
    if (n >= 10) printInt(n / 10);
    80008244:	00900793          	li	a5,9
    80008248:	0497c263          	blt	a5,s1,8000828c <_ZL8printInti+0x64>
    putc('0' + n % 10);
    8000824c:	00a00513          	li	a0,10
    80008250:	02a4e53b          	remw	a0,s1,a0
    80008254:	0305051b          	addiw	a0,a0,48
    80008258:	0ff57513          	andi	a0,a0,255
    8000825c:	ffff9097          	auipc	ra,0xffff9
    80008260:	4c8080e7          	jalr	1224(ra) # 80001724 <_Z4putcc>
}
    80008264:	01813083          	ld	ra,24(sp)
    80008268:	01013403          	ld	s0,16(sp)
    8000826c:	00813483          	ld	s1,8(sp)
    80008270:	02010113          	addi	sp,sp,32
    80008274:	00008067          	ret
    if (n < 0) { putc('-'); n = -n; }
    80008278:	02d00513          	li	a0,45
    8000827c:	ffff9097          	auipc	ra,0xffff9
    80008280:	4a8080e7          	jalr	1192(ra) # 80001724 <_Z4putcc>
    80008284:	409004bb          	negw	s1,s1
    80008288:	fbdff06f          	j	80008244 <_ZL8printInti+0x1c>
    if (n >= 10) printInt(n / 10);
    8000828c:	00a00513          	li	a0,10
    80008290:	02a4c53b          	divw	a0,s1,a0
    80008294:	00000097          	auipc	ra,0x0
    80008298:	f94080e7          	jalr	-108(ra) # 80008228 <_ZL8printInti>
    8000829c:	fb1ff06f          	j	8000824c <_ZL8printInti+0x24>

00000000800082a0 <_ZL9printCharc>:
static void printChar(char c) {
    800082a0:	ff010113          	addi	sp,sp,-16
    800082a4:	00113423          	sd	ra,8(sp)
    800082a8:	00813023          	sd	s0,0(sp)
    800082ac:	01010413          	addi	s0,sp,16
    putc(c);
    800082b0:	ffff9097          	auipc	ra,0xffff9
    800082b4:	474080e7          	jalr	1140(ra) # 80001724 <_Z4putcc>
}
    800082b8:	00813083          	ld	ra,8(sp)
    800082bc:	00013403          	ld	s0,0(sp)
    800082c0:	01010113          	addi	sp,sp,16
    800082c4:	00008067          	ret

00000000800082c8 <_ZL8printStrPKc>:
static void printStr(const char* s) {
    800082c8:	fe010113          	addi	sp,sp,-32
    800082cc:	00113c23          	sd	ra,24(sp)
    800082d0:	00813823          	sd	s0,16(sp)
    800082d4:	00913423          	sd	s1,8(sp)
    800082d8:	02010413          	addi	s0,sp,32
    800082dc:	00050493          	mv	s1,a0
    while (*s) putc(*s++);
    800082e0:	0004c503          	lbu	a0,0(s1)
    800082e4:	00050a63          	beqz	a0,800082f8 <_ZL8printStrPKc+0x30>
    800082e8:	00148493          	addi	s1,s1,1
    800082ec:	ffff9097          	auipc	ra,0xffff9
    800082f0:	438080e7          	jalr	1080(ra) # 80001724 <_Z4putcc>
    800082f4:	fedff06f          	j	800082e0 <_ZL8printStrPKc+0x18>
}
    800082f8:	01813083          	ld	ra,24(sp)
    800082fc:	01013403          	ld	s0,16(sp)
    80008300:	00813483          	ld	s1,8(sp)
    80008304:	02010113          	addi	sp,sp,32
    80008308:	00008067          	ret

000000008000830c <_ZL7threadEPv>:
        printChar('\n');
    }
    printStr("C: finished\n");
}

static void threadE(void* arg) {
    8000830c:	fe010113          	addi	sp,sp,-32
    80008310:	00113c23          	sd	ra,24(sp)
    80008314:	00813823          	sd	s0,16(sp)
    80008318:	00913423          	sd	s1,8(sp)
    8000831c:	02010413          	addi	s0,sp,32
    for (int i = 1; i <= 5; i++) {
    80008320:	00100493          	li	s1,1
    80008324:	00500793          	li	a5,5
    80008328:	0497c863          	blt	a5,s1,80008378 <_ZL7threadEPv+0x6c>
        printStr("E: i'm waiting...\n");
    8000832c:	00005517          	auipc	a0,0x5
    80008330:	89c50513          	addi	a0,a0,-1892 # 8000cbc8 <CONSOLE_STATUS+0xbb8>
    80008334:	00000097          	auipc	ra,0x0
    80008338:	f94080e7          	jalr	-108(ra) # 800082c8 <_ZL8printStrPKc>
        time_sleep(4);               // blocked for 4 ticks
    8000833c:	00400513          	li	a0,4
    80008340:	ffff9097          	auipc	ra,0xffff9
    80008344:	360080e7          	jalr	864(ra) # 800016a0 <_Z10time_sleepm>
        printStr("E: i woke up ");
    80008348:	00005517          	auipc	a0,0x5
    8000834c:	89850513          	addi	a0,a0,-1896 # 8000cbe0 <CONSOLE_STATUS+0xbd0>
    80008350:	00000097          	auipc	ra,0x0
    80008354:	f78080e7          	jalr	-136(ra) # 800082c8 <_ZL8printStrPKc>
        printInt(i);
    80008358:	00048513          	mv	a0,s1
    8000835c:	00000097          	auipc	ra,0x0
    80008360:	ecc080e7          	jalr	-308(ra) # 80008228 <_ZL8printInti>
        printChar('\n');
    80008364:	00a00513          	li	a0,10
    80008368:	00000097          	auipc	ra,0x0
    8000836c:	f38080e7          	jalr	-200(ra) # 800082a0 <_ZL9printCharc>
    for (int i = 1; i <= 5; i++) {
    80008370:	0014849b          	addiw	s1,s1,1
    80008374:	fb1ff06f          	j	80008324 <_ZL7threadEPv+0x18>
    }
    printStr("E: finished\n");
    80008378:	00005517          	auipc	a0,0x5
    8000837c:	87850513          	addi	a0,a0,-1928 # 8000cbf0 <CONSOLE_STATUS+0xbe0>
    80008380:	00000097          	auipc	ra,0x0
    80008384:	f48080e7          	jalr	-184(ra) # 800082c8 <_ZL8printStrPKc>
}
    80008388:	01813083          	ld	ra,24(sp)
    8000838c:	01013403          	ld	s0,16(sp)
    80008390:	00813483          	ld	s1,8(sp)
    80008394:	02010113          	addi	sp,sp,32
    80008398:	00008067          	ret

000000008000839c <_ZL7threadDPv>:
// -----------------------------------------------------------------------
// Thread D: "busy" thread -- returns in an infinite loop counting up to N
// Exists to check that the timer is overrunning heavy CPU-bound code.
// -----------------------------------------------------------------------

static void threadD(void* /*arg*/) {
    8000839c:	fe010113          	addi	sp,sp,-32
    800083a0:	00113c23          	sd	ra,24(sp)
    800083a4:	00813823          	sd	s0,16(sp)
    800083a8:	02010413          	addi	s0,sp,32
    volatile long sum = 0;
    800083ac:	fe043423          	sd	zero,-24(s0)
    // racuna sumu da prevodilac ne optimizuje petlju
    for (long k = 0; k < 300000L; k++) sum += k;
    800083b0:	00000713          	li	a4,0
    800083b4:	000497b7          	lui	a5,0x49
    800083b8:	3df78793          	addi	a5,a5,991 # 493df <_entry-0x7ffb6c21>
    800083bc:	00e7cc63          	blt	a5,a4,800083d4 <_ZL7threadDPv+0x38>
    800083c0:	fe843783          	ld	a5,-24(s0)
    800083c4:	00e787b3          	add	a5,a5,a4
    800083c8:	fef43423          	sd	a5,-24(s0)
    800083cc:	00170713          	addi	a4,a4,1
    800083d0:	fe5ff06f          	j	800083b4 <_ZL7threadDPv+0x18>
    printStr("D: sum=");
    800083d4:	00005517          	auipc	a0,0x5
    800083d8:	82c50513          	addi	a0,a0,-2004 # 8000cc00 <CONSOLE_STATUS+0xbf0>
    800083dc:	00000097          	auipc	ra,0x0
    800083e0:	eec080e7          	jalr	-276(ra) # 800082c8 <_ZL8printStrPKc>
    printInt((int)(sum % 100000));
    800083e4:	fe843503          	ld	a0,-24(s0)
    800083e8:	000187b7          	lui	a5,0x18
    800083ec:	6a078793          	addi	a5,a5,1696 # 186a0 <_entry-0x7ffe7960>
    800083f0:	02f56533          	rem	a0,a0,a5
    800083f4:	00000097          	auipc	ra,0x0
    800083f8:	e34080e7          	jalr	-460(ra) # 80008228 <_ZL8printInti>
    printChar('\n');
    800083fc:	00a00513          	li	a0,10
    80008400:	00000097          	auipc	ra,0x0
    80008404:	ea0080e7          	jalr	-352(ra) # 800082a0 <_ZL9printCharc>
    printStr("D: finished\n");
    80008408:	00005517          	auipc	a0,0x5
    8000840c:	80050513          	addi	a0,a0,-2048 # 8000cc08 <CONSOLE_STATUS+0xbf8>
    80008410:	00000097          	auipc	ra,0x0
    80008414:	eb8080e7          	jalr	-328(ra) # 800082c8 <_ZL8printStrPKc>
}
    80008418:	01813083          	ld	ra,24(sp)
    8000841c:	01013403          	ld	s0,16(sp)
    80008420:	02010113          	addi	sp,sp,32
    80008424:	00008067          	ret

0000000080008428 <_ZL7threadCPv>:
static void threadC(void* arg) {
    80008428:	fe010113          	addi	sp,sp,-32
    8000842c:	00113c23          	sd	ra,24(sp)
    80008430:	00813823          	sd	s0,16(sp)
    80008434:	00913423          	sd	s1,8(sp)
    80008438:	02010413          	addi	s0,sp,32
    for (int i = 1; i <= 4; i++) {
    8000843c:	00100493          	li	s1,1
    80008440:	04c0006f          	j	8000848c <_ZL7threadCPv+0x64>
        printStr("C: i'm waiting...\n");
    80008444:	00004517          	auipc	a0,0x4
    80008448:	7d450513          	addi	a0,a0,2004 # 8000cc18 <CONSOLE_STATUS+0xc08>
    8000844c:	00000097          	auipc	ra,0x0
    80008450:	e7c080e7          	jalr	-388(ra) # 800082c8 <_ZL8printStrPKc>
        time_sleep(2);               // blocked for 2 ticks
    80008454:	00200513          	li	a0,2
    80008458:	ffff9097          	auipc	ra,0xffff9
    8000845c:	248080e7          	jalr	584(ra) # 800016a0 <_Z10time_sleepm>
        printStr("C: i woke up ");
    80008460:	00004517          	auipc	a0,0x4
    80008464:	7d050513          	addi	a0,a0,2000 # 8000cc30 <CONSOLE_STATUS+0xc20>
    80008468:	00000097          	auipc	ra,0x0
    8000846c:	e60080e7          	jalr	-416(ra) # 800082c8 <_ZL8printStrPKc>
        printInt(i);
    80008470:	00048513          	mv	a0,s1
    80008474:	00000097          	auipc	ra,0x0
    80008478:	db4080e7          	jalr	-588(ra) # 80008228 <_ZL8printInti>
        printChar('\n');
    8000847c:	00a00513          	li	a0,10
    80008480:	00000097          	auipc	ra,0x0
    80008484:	e20080e7          	jalr	-480(ra) # 800082a0 <_ZL9printCharc>
    for (int i = 1; i <= 4; i++) {
    80008488:	0014849b          	addiw	s1,s1,1
    8000848c:	00400793          	li	a5,4
    80008490:	fa97dae3          	bge	a5,s1,80008444 <_ZL7threadCPv+0x1c>
    printStr("C: finished\n");
    80008494:	00004517          	auipc	a0,0x4
    80008498:	7ac50513          	addi	a0,a0,1964 # 8000cc40 <CONSOLE_STATUS+0xc30>
    8000849c:	00000097          	auipc	ra,0x0
    800084a0:	e2c080e7          	jalr	-468(ra) # 800082c8 <_ZL8printStrPKc>
}
    800084a4:	01813083          	ld	ra,24(sp)
    800084a8:	01013403          	ld	s0,16(sp)
    800084ac:	00813483          	ld	s1,8(sp)
    800084b0:	02010113          	addi	sp,sp,32
    800084b4:	00008067          	ret

00000000800084b8 <_ZL7threadBPv>:
static void threadB(void* /*arg*/) {
    800084b8:	fe010113          	addi	sp,sp,-32
    800084bc:	00113c23          	sd	ra,24(sp)
    800084c0:	00813823          	sd	s0,16(sp)
    800084c4:	00913423          	sd	s1,8(sp)
    800084c8:	02010413          	addi	s0,sp,32
    for (int i = 1; i <= ITER; i++) {
    800084cc:	00100493          	li	s1,1
    800084d0:	03c0006f          	j	8000850c <_ZL7threadBPv+0x54>
        printStr("B:");
    800084d4:	00004517          	auipc	a0,0x4
    800084d8:	77c50513          	addi	a0,a0,1916 # 8000cc50 <CONSOLE_STATUS+0xc40>
    800084dc:	00000097          	auipc	ra,0x0
    800084e0:	dec080e7          	jalr	-532(ra) # 800082c8 <_ZL8printStrPKc>
        printInt(i);
    800084e4:	00048513          	mv	a0,s1
    800084e8:	00000097          	auipc	ra,0x0
    800084ec:	d40080e7          	jalr	-704(ra) # 80008228 <_ZL8printInti>
        printStr(" (bb)\n");
    800084f0:	00004517          	auipc	a0,0x4
    800084f4:	76850513          	addi	a0,a0,1896 # 8000cc58 <CONSOLE_STATUS+0xc48>
    800084f8:	00000097          	auipc	ra,0x0
    800084fc:	dd0080e7          	jalr	-560(ra) # 800082c8 <_ZL8printStrPKc>
        thread_dispatch();
    80008500:	ffff9097          	auipc	ra,0xffff9
    80008504:	f78080e7          	jalr	-136(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 1; i <= ITER; i++) {
    80008508:	0014849b          	addiw	s1,s1,1
    8000850c:	00800793          	li	a5,8
    80008510:	fc97d2e3          	bge	a5,s1,800084d4 <_ZL7threadBPv+0x1c>
    printStr("B: finished\n");
    80008514:	00004517          	auipc	a0,0x4
    80008518:	74c50513          	addi	a0,a0,1868 # 8000cc60 <CONSOLE_STATUS+0xc50>
    8000851c:	00000097          	auipc	ra,0x0
    80008520:	dac080e7          	jalr	-596(ra) # 800082c8 <_ZL8printStrPKc>
}
    80008524:	01813083          	ld	ra,24(sp)
    80008528:	01013403          	ld	s0,16(sp)
    8000852c:	00813483          	ld	s1,8(sp)
    80008530:	02010113          	addi	sp,sp,32
    80008534:	00008067          	ret

0000000080008538 <_ZL7threadAPv>:
static void threadA(void* /*arg*/) {
    80008538:	fe010113          	addi	sp,sp,-32
    8000853c:	00113c23          	sd	ra,24(sp)
    80008540:	00813823          	sd	s0,16(sp)
    80008544:	00913423          	sd	s1,8(sp)
    80008548:	02010413          	addi	s0,sp,32
    for (int i = 1; i <= ITER; i++) {
    8000854c:	00100493          	li	s1,1
    80008550:	0380006f          	j	80008588 <_ZL7threadAPv+0x50>
        printStr("A:");
    80008554:	00004517          	auipc	a0,0x4
    80008558:	71c50513          	addi	a0,a0,1820 # 8000cc70 <CONSOLE_STATUS+0xc60>
    8000855c:	00000097          	auipc	ra,0x0
    80008560:	d6c080e7          	jalr	-660(ra) # 800082c8 <_ZL8printStrPKc>
        printInt(i);
    80008564:	00048513          	mv	a0,s1
    80008568:	00000097          	auipc	ra,0x0
    8000856c:	cc0080e7          	jalr	-832(ra) # 80008228 <_ZL8printInti>
        printChar('\n');
    80008570:	00a00513          	li	a0,10
    80008574:	00000097          	auipc	ra,0x0
    80008578:	d2c080e7          	jalr	-724(ra) # 800082a0 <_ZL9printCharc>
        thread_dispatch();
    8000857c:	ffff9097          	auipc	ra,0xffff9
    80008580:	efc080e7          	jalr	-260(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 1; i <= ITER; i++) {
    80008584:	0014849b          	addiw	s1,s1,1
    80008588:	00800793          	li	a5,8
    8000858c:	fc97d4e3          	bge	a5,s1,80008554 <_ZL7threadAPv+0x1c>
    printStr("A: finished\n");
    80008590:	00004517          	auipc	a0,0x4
    80008594:	6e850513          	addi	a0,a0,1768 # 8000cc78 <CONSOLE_STATUS+0xc68>
    80008598:	00000097          	auipc	ra,0x0
    8000859c:	d30080e7          	jalr	-720(ra) # 800082c8 <_ZL8printStrPKc>
}
    800085a0:	01813083          	ld	ra,24(sp)
    800085a4:	01013403          	ld	s0,16(sp)
    800085a8:	00813483          	ld	s1,8(sp)
    800085ac:	02010113          	addi	sp,sp,32
    800085b0:	00008067          	ret

00000000800085b4 <_Z19asynhroneThreadTestv>:
// Starts all 4 threads and waits for them to finish synchronously from main-thread.
// main thread blocks itself with thread_dispatch() because it has to
// let the timer hijack it.
// -----------------------------------------------------------------------

void asynhroneThreadTest() {
    800085b4:	fc010113          	addi	sp,sp,-64
    800085b8:	02113c23          	sd	ra,56(sp)
    800085bc:	02813823          	sd	s0,48(sp)
    800085c0:	04010413          	addi	s0,sp,64
    printStr("=== asynhroneTHreadTest1 STARTED ===\n");
    800085c4:	00004517          	auipc	a0,0x4
    800085c8:	6c450513          	addi	a0,a0,1732 # 8000cc88 <CONSOLE_STATUS+0xc78>
    800085cc:	00000097          	auipc	ra,0x0
    800085d0:	cfc080e7          	jalr	-772(ra) # 800082c8 <_ZL8printStrPKc>
    printStr("Expectation: Lines A/B/C/D INTERSECT (timer ticks over)\n");
    800085d4:	00004517          	auipc	a0,0x4
    800085d8:	6dc50513          	addi	a0,a0,1756 # 8000ccb0 <CONSOLE_STATUS+0xca0>
    800085dc:	00000097          	auipc	ra,0x0
    800085e0:	cec080e7          	jalr	-788(ra) # 800082c8 <_ZL8printStrPKc>
    printStr("If A are all together and then B are all together -> the timer doesn't work!\n\n");
    800085e4:	00004517          	auipc	a0,0x4
    800085e8:	70c50513          	addi	a0,a0,1804 # 8000ccf0 <CONSOLE_STATUS+0xce0>
    800085ec:	00000097          	auipc	ra,0x0
    800085f0:	cdc080e7          	jalr	-804(ra) # 800082c8 <_ZL8printStrPKc>

    thread_t tA, tB,tC,tD,tE;

    thread_create(&tA, threadA, nullptr);
    800085f4:	00000613          	li	a2,0
    800085f8:	00000597          	auipc	a1,0x0
    800085fc:	f4058593          	addi	a1,a1,-192 # 80008538 <_ZL7threadAPv>
    80008600:	fe840513          	addi	a0,s0,-24
    80008604:	ffff9097          	auipc	ra,0xffff9
    80008608:	dc8080e7          	jalr	-568(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&tB, threadB, nullptr);
    8000860c:	00000613          	li	a2,0
    80008610:	00000597          	auipc	a1,0x0
    80008614:	ea858593          	addi	a1,a1,-344 # 800084b8 <_ZL7threadBPv>
    80008618:	fe040513          	addi	a0,s0,-32
    8000861c:	ffff9097          	auipc	ra,0xffff9
    80008620:	db0080e7          	jalr	-592(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&tC, threadC, nullptr);
    80008624:	00000613          	li	a2,0
    80008628:	00000597          	auipc	a1,0x0
    8000862c:	e0058593          	addi	a1,a1,-512 # 80008428 <_ZL7threadCPv>
    80008630:	fd840513          	addi	a0,s0,-40
    80008634:	ffff9097          	auipc	ra,0xffff9
    80008638:	d98080e7          	jalr	-616(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&tD, threadD, nullptr);
    8000863c:	00000613          	li	a2,0
    80008640:	00000597          	auipc	a1,0x0
    80008644:	d5c58593          	addi	a1,a1,-676 # 8000839c <_ZL7threadDPv>
    80008648:	fd040513          	addi	a0,s0,-48
    8000864c:	ffff9097          	auipc	ra,0xffff9
    80008650:	d80080e7          	jalr	-640(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&tE, threadE, nullptr);
    80008654:	00000613          	li	a2,0
    80008658:	00000597          	auipc	a1,0x0
    8000865c:	cb458593          	addi	a1,a1,-844 # 8000830c <_ZL7threadEPv>
    80008660:	fc840513          	addi	a0,s0,-56
    80008664:	ffff9097          	auipc	ra,0xffff9
    80008668:	d68080e7          	jalr	-664(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    8000866c:	00c0006f          	j	80008678 <_Z19asynhroneThreadTestv+0xc4>

   //waiting for all threads to finish
    while (!tA->isFinished() || !tB->isFinished() ||
           !tC->isFinished() || !tD->isFinished() || !tE->isFinished()) {
        thread_dispatch();
    80008670:	ffff9097          	auipc	ra,0xffff9
    80008674:	e08080e7          	jalr	-504(ra) # 80001478 <_Z15thread_dispatchv>
    while (!tA->isFinished() || !tB->isFinished() ||
    80008678:	fe843783          	ld	a5,-24(s0)

    ThreadState getState() const { return state; }

    void setState(ThreadState threadState) { state = threadState; }

    bool isFinished() const { return state == ThreadState::FINISHED; }
    8000867c:	0487a703          	lw	a4,72(a5)
           !tC->isFinished() || !tD->isFinished() || !tE->isFinished()) {
    80008680:	00400793          	li	a5,4
    80008684:	fef716e3          	bne	a4,a5,80008670 <_Z19asynhroneThreadTestv+0xbc>
    while (!tA->isFinished() || !tB->isFinished() ||
    80008688:	fe043783          	ld	a5,-32(s0)
    8000868c:	0487a703          	lw	a4,72(a5)
    80008690:	00400793          	li	a5,4
    80008694:	fcf71ee3          	bne	a4,a5,80008670 <_Z19asynhroneThreadTestv+0xbc>
           !tC->isFinished() || !tD->isFinished() || !tE->isFinished()) {
    80008698:	fd843783          	ld	a5,-40(s0)
    8000869c:	0487a703          	lw	a4,72(a5)
    while (!tA->isFinished() || !tB->isFinished() ||
    800086a0:	00400793          	li	a5,4
    800086a4:	fcf716e3          	bne	a4,a5,80008670 <_Z19asynhroneThreadTestv+0xbc>
           !tC->isFinished() || !tD->isFinished() || !tE->isFinished()) {
    800086a8:	fd043783          	ld	a5,-48(s0)
    800086ac:	0487a703          	lw	a4,72(a5)
    800086b0:	00400793          	li	a5,4
    800086b4:	faf71ee3          	bne	a4,a5,80008670 <_Z19asynhroneThreadTestv+0xbc>
    800086b8:	fc843783          	ld	a5,-56(s0)
    800086bc:	0487a703          	lw	a4,72(a5)
    800086c0:	00400793          	li	a5,4
    800086c4:	faf716e3          	bne	a4,a5,80008670 <_Z19asynhroneThreadTestv+0xbc>
    }

    printStr("\n=== asynchroneThreadTest1 FINISHED ===\n");
    800086c8:	00004517          	auipc	a0,0x4
    800086cc:	67850513          	addi	a0,a0,1656 # 8000cd40 <CONSOLE_STATUS+0xd30>
    800086d0:	00000097          	auipc	ra,0x0
    800086d4:	bf8080e7          	jalr	-1032(ra) # 800082c8 <_ZL8printStrPKc>
//    delete tB;
//    delete tC;
//    delete tD;
//    delete tE;

    800086d8:	03813083          	ld	ra,56(sp)
    800086dc:	03013403          	ld	s0,48(sp)
    800086e0:	04010113          	addi	sp,sp,64
    800086e4:	00008067          	ret

00000000800086e8 <_Z2fAPv>:
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"

void fA(void *arg) {
    800086e8:	fe010113          	addi	sp,sp,-32
    800086ec:	00113c23          	sd	ra,24(sp)
    800086f0:	00813823          	sd	s0,16(sp)
    800086f4:	00913423          	sd	s1,8(sp)
    800086f8:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 5; i++) {
    800086fc:	00000493          	li	s1,0
    80008700:	00400793          	li	a5,4
    80008704:	0297ce63          	blt	a5,s1,80008740 <_Z2fAPv+0x58>
        putc('A');
    80008708:	04100513          	li	a0,65
    8000870c:	ffff9097          	auipc	ra,0xffff9
    80008710:	018080e7          	jalr	24(ra) # 80001724 <_Z4putcc>
        putc('0' + i + 1);
    80008714:	0314851b          	addiw	a0,s1,49
    80008718:	0ff57513          	andi	a0,a0,255
    8000871c:	ffff9097          	auipc	ra,0xffff9
    80008720:	008080e7          	jalr	8(ra) # 80001724 <_Z4putcc>
        putc('\n');
    80008724:	00a00513          	li	a0,10
    80008728:	ffff9097          	auipc	ra,0xffff9
    8000872c:	ffc080e7          	jalr	-4(ra) # 80001724 <_Z4putcc>
        thread_dispatch();
    80008730:	ffff9097          	auipc	ra,0xffff9
    80008734:	d48080e7          	jalr	-696(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++) {
    80008738:	0014849b          	addiw	s1,s1,1
    8000873c:	fc5ff06f          	j	80008700 <_Z2fAPv+0x18>
    }
}
    80008740:	01813083          	ld	ra,24(sp)
    80008744:	01013403          	ld	s0,16(sp)
    80008748:	00813483          	ld	s1,8(sp)
    8000874c:	02010113          	addi	sp,sp,32
    80008750:	00008067          	ret

0000000080008754 <_Z2fBPv>:

void fB(void *arg) {
    80008754:	fe010113          	addi	sp,sp,-32
    80008758:	00113c23          	sd	ra,24(sp)
    8000875c:	00813823          	sd	s0,16(sp)
    80008760:	00913423          	sd	s1,8(sp)
    80008764:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 15; i++) {
    80008768:	00000493          	li	s1,0
    8000876c:	0380006f          	j	800087a4 <_Z2fBPv+0x50>
        putc('B');
    80008770:	04200513          	li	a0,66
    80008774:	ffff9097          	auipc	ra,0xffff9
    80008778:	fb0080e7          	jalr	-80(ra) # 80001724 <_Z4putcc>
        putc('0' + i + 1);
    8000877c:	0314851b          	addiw	a0,s1,49
    80008780:	0ff57513          	andi	a0,a0,255
    80008784:	ffff9097          	auipc	ra,0xffff9
    80008788:	fa0080e7          	jalr	-96(ra) # 80001724 <_Z4putcc>
        putc('\n');
    8000878c:	00a00513          	li	a0,10
    80008790:	ffff9097          	auipc	ra,0xffff9
    80008794:	f94080e7          	jalr	-108(ra) # 80001724 <_Z4putcc>
        thread_dispatch();
    80008798:	ffff9097          	auipc	ra,0xffff9
    8000879c:	ce0080e7          	jalr	-800(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 0; i < 15; i++) {
    800087a0:	0014849b          	addiw	s1,s1,1
    800087a4:	00e00793          	li	a5,14
    800087a8:	fc97d4e3          	bge	a5,s1,80008770 <_Z2fBPv+0x1c>
    }
}
    800087ac:	01813083          	ld	ra,24(sp)
    800087b0:	01013403          	ld	s0,16(sp)
    800087b4:	00813483          	ld	s1,8(sp)
    800087b8:	02010113          	addi	sp,sp,32
    800087bc:	00008067          	ret

00000000800087c0 <_Z2fCPv>:

void fC(void *arg) {
    800087c0:	fe010113          	addi	sp,sp,-32
    800087c4:	00113c23          	sd	ra,24(sp)
    800087c8:	00813823          	sd	s0,16(sp)
    800087cc:	00913423          	sd	s1,8(sp)
    800087d0:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 15; i++) {
    800087d4:	00000493          	li	s1,0
    800087d8:	0740006f          	j	8000884c <_Z2fCPv+0x8c>
        putc('U');
    800087dc:	05500513          	li	a0,85
    800087e0:	ffff9097          	auipc	ra,0xffff9
    800087e4:	f44080e7          	jalr	-188(ra) # 80001724 <_Z4putcc>
        putc('N');
    800087e8:	04e00513          	li	a0,78
    800087ec:	ffff9097          	auipc	ra,0xffff9
    800087f0:	f38080e7          	jalr	-200(ra) # 80001724 <_Z4putcc>
        putc('E');
    800087f4:	04500513          	li	a0,69
    800087f8:	ffff9097          	auipc	ra,0xffff9
    800087fc:	f2c080e7          	jalr	-212(ra) # 80001724 <_Z4putcc>
        putc('S');
    80008800:	05300513          	li	a0,83
    80008804:	ffff9097          	auipc	ra,0xffff9
    80008808:	f20080e7          	jalr	-224(ra) # 80001724 <_Z4putcc>
        putc('I');
    8000880c:	04900513          	li	a0,73
    80008810:	ffff9097          	auipc	ra,0xffff9
    80008814:	f14080e7          	jalr	-236(ra) # 80001724 <_Z4putcc>
        putc('\n');
    80008818:	00a00513          	li	a0,10
    8000881c:	ffff9097          	auipc	ra,0xffff9
    80008820:	f08080e7          	jalr	-248(ra) # 80001724 <_Z4putcc>
        char c = getc();
    80008824:	ffff9097          	auipc	ra,0xffff9
    80008828:	ec4080e7          	jalr	-316(ra) # 800016e8 <_Z4getcv>
        putc(c);
    8000882c:	ffff9097          	auipc	ra,0xffff9
    80008830:	ef8080e7          	jalr	-264(ra) # 80001724 <_Z4putcc>
        putc('\n');
    80008834:	00a00513          	li	a0,10
    80008838:	ffff9097          	auipc	ra,0xffff9
    8000883c:	eec080e7          	jalr	-276(ra) # 80001724 <_Z4putcc>
        thread_dispatch();
    80008840:	ffff9097          	auipc	ra,0xffff9
    80008844:	c38080e7          	jalr	-968(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 0; i < 15; i++) {
    80008848:	0014849b          	addiw	s1,s1,1
    8000884c:	00e00793          	li	a5,14
    80008850:	f897d6e3          	bge	a5,s1,800087dc <_Z2fCPv+0x1c>
    }
}
    80008854:	01813083          	ld	ra,24(sp)
    80008858:	01013403          	ld	s0,16(sp)
    8000885c:	00813483          	ld	s1,8(sp)
    80008860:	02010113          	addi	sp,sp,32
    80008864:	00008067          	ret

0000000080008868 <_Z3fA2Pv>:
    delete threads[2];
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
Semaphore* consoleSem = nullptr;

void fA2(void *arg) {
    80008868:	fe010113          	addi	sp,sp,-32
    8000886c:	00113c23          	sd	ra,24(sp)
    80008870:	00813823          	sd	s0,16(sp)
    80008874:	00913423          	sd	s1,8(sp)
    80008878:	01213023          	sd	s2,0(sp)
    8000887c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 5; i++) {
    80008880:	00000493          	li	s1,0
    80008884:	00400793          	li	a5,4
    80008888:	0497ce63          	blt	a5,s1,800088e4 <_Z3fA2Pv+0x7c>
        consoleSem->wait();
    8000888c:	00007917          	auipc	s2,0x7
    80008890:	74490913          	addi	s2,s2,1860 # 8000ffd0 <consoleSem>
    80008894:	00093503          	ld	a0,0(s2)
    80008898:	ffffa097          	auipc	ra,0xffffa
    8000889c:	f88080e7          	jalr	-120(ra) # 80002820 <_ZN9Semaphore4waitEv>
        putc('A');
    800088a0:	04100513          	li	a0,65
    800088a4:	ffff9097          	auipc	ra,0xffff9
    800088a8:	e80080e7          	jalr	-384(ra) # 80001724 <_Z4putcc>
        putc('0' + i + 1);
    800088ac:	0314851b          	addiw	a0,s1,49
    800088b0:	0ff57513          	andi	a0,a0,255
    800088b4:	ffff9097          	auipc	ra,0xffff9
    800088b8:	e70080e7          	jalr	-400(ra) # 80001724 <_Z4putcc>
        putc('\n');
    800088bc:	00a00513          	li	a0,10
    800088c0:	ffff9097          	auipc	ra,0xffff9
    800088c4:	e64080e7          	jalr	-412(ra) # 80001724 <_Z4putcc>
        consoleSem->signal();
    800088c8:	00093503          	ld	a0,0(s2)
    800088cc:	ffffa097          	auipc	ra,0xffffa
    800088d0:	f80080e7          	jalr	-128(ra) # 8000284c <_ZN9Semaphore6signalEv>

        thread_dispatch();
    800088d4:	ffff9097          	auipc	ra,0xffff9
    800088d8:	ba4080e7          	jalr	-1116(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++) {
    800088dc:	0014849b          	addiw	s1,s1,1
    800088e0:	fa5ff06f          	j	80008884 <_Z3fA2Pv+0x1c>
    }
}
    800088e4:	01813083          	ld	ra,24(sp)
    800088e8:	01013403          	ld	s0,16(sp)
    800088ec:	00813483          	ld	s1,8(sp)
    800088f0:	00013903          	ld	s2,0(sp)
    800088f4:	02010113          	addi	sp,sp,32
    800088f8:	00008067          	ret

00000000800088fc <_Z3fB2Pv>:

void fB2(void *arg) {
    800088fc:	fe010113          	addi	sp,sp,-32
    80008900:	00113c23          	sd	ra,24(sp)
    80008904:	00813823          	sd	s0,16(sp)
    80008908:	00913423          	sd	s1,8(sp)
    8000890c:	01213023          	sd	s2,0(sp)
    80008910:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 15; i++) {
    80008914:	00000493          	li	s1,0
    80008918:	0580006f          	j	80008970 <_Z3fB2Pv+0x74>
        consoleSem->wait();
    8000891c:	00007917          	auipc	s2,0x7
    80008920:	6b490913          	addi	s2,s2,1716 # 8000ffd0 <consoleSem>
    80008924:	00093503          	ld	a0,0(s2)
    80008928:	ffffa097          	auipc	ra,0xffffa
    8000892c:	ef8080e7          	jalr	-264(ra) # 80002820 <_ZN9Semaphore4waitEv>
        putc('B');
    80008930:	04200513          	li	a0,66
    80008934:	ffff9097          	auipc	ra,0xffff9
    80008938:	df0080e7          	jalr	-528(ra) # 80001724 <_Z4putcc>
        putc('0' + i + 1);
    8000893c:	0314851b          	addiw	a0,s1,49
    80008940:	0ff57513          	andi	a0,a0,255
    80008944:	ffff9097          	auipc	ra,0xffff9
    80008948:	de0080e7          	jalr	-544(ra) # 80001724 <_Z4putcc>
        putc('\n');
    8000894c:	00a00513          	li	a0,10
    80008950:	ffff9097          	auipc	ra,0xffff9
    80008954:	dd4080e7          	jalr	-556(ra) # 80001724 <_Z4putcc>
        consoleSem->signal();
    80008958:	00093503          	ld	a0,0(s2)
    8000895c:	ffffa097          	auipc	ra,0xffffa
    80008960:	ef0080e7          	jalr	-272(ra) # 8000284c <_ZN9Semaphore6signalEv>

        thread_dispatch();
    80008964:	ffff9097          	auipc	ra,0xffff9
    80008968:	b14080e7          	jalr	-1260(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 0; i < 15; i++) {
    8000896c:	0014849b          	addiw	s1,s1,1
    80008970:	00e00793          	li	a5,14
    80008974:	fa97d4e3          	bge	a5,s1,8000891c <_Z3fB2Pv+0x20>
    }
}
    80008978:	01813083          	ld	ra,24(sp)
    8000897c:	01013403          	ld	s0,16(sp)
    80008980:	00813483          	ld	s1,8(sp)
    80008984:	00013903          	ld	s2,0(sp)
    80008988:	02010113          	addi	sp,sp,32
    8000898c:	00008067          	ret

0000000080008990 <_Z3fC2Pv>:

void fC2(void *arg) {
    80008990:	fe010113          	addi	sp,sp,-32
    80008994:	00113c23          	sd	ra,24(sp)
    80008998:	00813823          	sd	s0,16(sp)
    8000899c:	00913423          	sd	s1,8(sp)
    800089a0:	01213023          	sd	s2,0(sp)
    800089a4:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 5; i++) {
    800089a8:	00000493          	li	s1,0
    800089ac:	00400793          	li	a5,4
    800089b0:	0897cc63          	blt	a5,s1,80008a48 <_Z3fC2Pv+0xb8>
        consoleSem->wait();
    800089b4:	00007917          	auipc	s2,0x7
    800089b8:	61c90913          	addi	s2,s2,1564 # 8000ffd0 <consoleSem>
    800089bc:	00093503          	ld	a0,0(s2)
    800089c0:	ffffa097          	auipc	ra,0xffffa
    800089c4:	e60080e7          	jalr	-416(ra) # 80002820 <_ZN9Semaphore4waitEv>

        putc('U');
    800089c8:	05500513          	li	a0,85
    800089cc:	ffff9097          	auipc	ra,0xffff9
    800089d0:	d58080e7          	jalr	-680(ra) # 80001724 <_Z4putcc>
        putc('N');
    800089d4:	04e00513          	li	a0,78
    800089d8:	ffff9097          	auipc	ra,0xffff9
    800089dc:	d4c080e7          	jalr	-692(ra) # 80001724 <_Z4putcc>
        putc('E');
    800089e0:	04500513          	li	a0,69
    800089e4:	ffff9097          	auipc	ra,0xffff9
    800089e8:	d40080e7          	jalr	-704(ra) # 80001724 <_Z4putcc>
        putc('S');
    800089ec:	05300513          	li	a0,83
    800089f0:	ffff9097          	auipc	ra,0xffff9
    800089f4:	d34080e7          	jalr	-716(ra) # 80001724 <_Z4putcc>
        putc('I');
    800089f8:	04900513          	li	a0,73
    800089fc:	ffff9097          	auipc	ra,0xffff9
    80008a00:	d28080e7          	jalr	-728(ra) # 80001724 <_Z4putcc>
        putc('\n');
    80008a04:	00a00513          	li	a0,10
    80008a08:	ffff9097          	auipc	ra,0xffff9
    80008a0c:	d1c080e7          	jalr	-740(ra) # 80001724 <_Z4putcc>
        char c = getc();
    80008a10:	ffff9097          	auipc	ra,0xffff9
    80008a14:	cd8080e7          	jalr	-808(ra) # 800016e8 <_Z4getcv>
        putc(c);
    80008a18:	ffff9097          	auipc	ra,0xffff9
    80008a1c:	d0c080e7          	jalr	-756(ra) # 80001724 <_Z4putcc>
        putc('\n');
    80008a20:	00a00513          	li	a0,10
    80008a24:	ffff9097          	auipc	ra,0xffff9
    80008a28:	d00080e7          	jalr	-768(ra) # 80001724 <_Z4putcc>

        consoleSem->signal();
    80008a2c:	00093503          	ld	a0,0(s2)
    80008a30:	ffffa097          	auipc	ra,0xffffa
    80008a34:	e1c080e7          	jalr	-484(ra) # 8000284c <_ZN9Semaphore6signalEv>

        thread_dispatch();
    80008a38:	ffff9097          	auipc	ra,0xffff9
    80008a3c:	a40080e7          	jalr	-1472(ra) # 80001478 <_Z15thread_dispatchv>
    for (int i = 0; i < 5; i++) {
    80008a40:	0014849b          	addiw	s1,s1,1
    80008a44:	f69ff06f          	j	800089ac <_Z3fC2Pv+0x1c>
    }
}
    80008a48:	01813083          	ld	ra,24(sp)
    80008a4c:	01013403          	ld	s0,16(sp)
    80008a50:	00813483          	ld	s1,8(sp)
    80008a54:	00013903          	ld	s2,0(sp)
    80008a58:	02010113          	addi	sp,sp,32
    80008a5c:	00008067          	ret

0000000080008a60 <_Z13testSaNitima1v>:
void testSaNitima1() {
    80008a60:	fc010113          	addi	sp,sp,-64
    80008a64:	02113c23          	sd	ra,56(sp)
    80008a68:	02813823          	sd	s0,48(sp)
    80008a6c:	02913423          	sd	s1,40(sp)
    80008a70:	04010413          	addi	s0,sp,64
    thread_create(&threads[0], fA, nullptr);
    80008a74:	00000613          	li	a2,0
    80008a78:	00000597          	auipc	a1,0x0
    80008a7c:	c7058593          	addi	a1,a1,-912 # 800086e8 <_Z2fAPv>
    80008a80:	fc840513          	addi	a0,s0,-56
    80008a84:	ffff9097          	auipc	ra,0xffff9
    80008a88:	948080e7          	jalr	-1720(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[1], fB, nullptr);
    80008a8c:	00000613          	li	a2,0
    80008a90:	00000597          	auipc	a1,0x0
    80008a94:	cc458593          	addi	a1,a1,-828 # 80008754 <_Z2fBPv>
    80008a98:	fd040513          	addi	a0,s0,-48
    80008a9c:	ffff9097          	auipc	ra,0xffff9
    80008aa0:	930080e7          	jalr	-1744(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], fC, nullptr);
    80008aa4:	00000613          	li	a2,0
    80008aa8:	00000597          	auipc	a1,0x0
    80008aac:	d1858593          	addi	a1,a1,-744 # 800087c0 <_Z2fCPv>
    80008ab0:	fd840513          	addi	a0,s0,-40
    80008ab4:	ffff9097          	auipc	ra,0xffff9
    80008ab8:	918080e7          	jalr	-1768(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    80008abc:	00c0006f          	j	80008ac8 <_Z13testSaNitima1v+0x68>
        thread_dispatch();
    80008ac0:	ffff9097          	auipc	ra,0xffff9
    80008ac4:	9b8080e7          	jalr	-1608(ra) # 80001478 <_Z15thread_dispatchv>
    while (!threads[0]->isFinished() || !threads[1]->isFinished() ||
    80008ac8:	fc843483          	ld	s1,-56(s0)
    80008acc:	0484a703          	lw	a4,72(s1)
    80008ad0:	00400793          	li	a5,4
    80008ad4:	fef716e3          	bne	a4,a5,80008ac0 <_Z13testSaNitima1v+0x60>
    80008ad8:	fd043783          	ld	a5,-48(s0)
    80008adc:	0487a703          	lw	a4,72(a5)
    80008ae0:	00400793          	li	a5,4
    80008ae4:	fcf71ee3          	bne	a4,a5,80008ac0 <_Z13testSaNitima1v+0x60>
           !threads[2]->isFinished()) {
    80008ae8:	fd843783          	ld	a5,-40(s0)
    80008aec:	0487a703          	lw	a4,72(a5)
    while (!threads[0]->isFinished() || !threads[1]->isFinished() ||
    80008af0:	00400793          	li	a5,4
    80008af4:	fcf716e3          	bne	a4,a5,80008ac0 <_Z13testSaNitima1v+0x60>
    delete threads[0];
    80008af8:	00048e63          	beqz	s1,80008b14 <_Z13testSaNitima1v+0xb4>
    80008afc:	00048513          	mv	a0,s1
    80008b00:	ffff9097          	auipc	ra,0xffff9
    80008b04:	570080e7          	jalr	1392(ra) # 80002070 <_ZN3TCBD1Ev>
    80008b08:	00048513          	mv	a0,s1
    80008b0c:	ffff9097          	auipc	ra,0xffff9
    80008b10:	2ac080e7          	jalr	684(ra) # 80001db8 <_ZN3TCBdlEPv>
    delete threads[1];
    80008b14:	fd043483          	ld	s1,-48(s0)
    80008b18:	00048e63          	beqz	s1,80008b34 <_Z13testSaNitima1v+0xd4>
    80008b1c:	00048513          	mv	a0,s1
    80008b20:	ffff9097          	auipc	ra,0xffff9
    80008b24:	550080e7          	jalr	1360(ra) # 80002070 <_ZN3TCBD1Ev>
    80008b28:	00048513          	mv	a0,s1
    80008b2c:	ffff9097          	auipc	ra,0xffff9
    80008b30:	28c080e7          	jalr	652(ra) # 80001db8 <_ZN3TCBdlEPv>
    delete threads[2];
    80008b34:	fd843483          	ld	s1,-40(s0)
    80008b38:	00048e63          	beqz	s1,80008b54 <_Z13testSaNitima1v+0xf4>
    80008b3c:	00048513          	mv	a0,s1
    80008b40:	ffff9097          	auipc	ra,0xffff9
    80008b44:	530080e7          	jalr	1328(ra) # 80002070 <_ZN3TCBD1Ev>
    80008b48:	00048513          	mv	a0,s1
    80008b4c:	ffff9097          	auipc	ra,0xffff9
    80008b50:	26c080e7          	jalr	620(ra) # 80001db8 <_ZN3TCBdlEPv>
}
    80008b54:	03813083          	ld	ra,56(sp)
    80008b58:	03013403          	ld	s0,48(sp)
    80008b5c:	02813483          	ld	s1,40(sp)
    80008b60:	04010113          	addi	sp,sp,64
    80008b64:	00008067          	ret

0000000080008b68 <_Z13testSaNitima2v>:

void testSaNitima2() {
    80008b68:	fc010113          	addi	sp,sp,-64
    80008b6c:	02113c23          	sd	ra,56(sp)
    80008b70:	02813823          	sd	s0,48(sp)
    80008b74:	02913423          	sd	s1,40(sp)
    80008b78:	03213023          	sd	s2,32(sp)
    80008b7c:	04010413          	addi	s0,sp,64
    consoleSem = new Semaphore(1);
    80008b80:	01000513          	li	a0,16
    80008b84:	ffffa097          	auipc	ra,0xffffa
    80008b88:	99c080e7          	jalr	-1636(ra) # 80002520 <_Znwm>
    80008b8c:	00050493          	mv	s1,a0
    80008b90:	00100593          	li	a1,1
    80008b94:	ffffa097          	auipc	ra,0xffffa
    80008b98:	c54080e7          	jalr	-940(ra) # 800027e8 <_ZN9SemaphoreC1Ej>
    80008b9c:	00007797          	auipc	a5,0x7
    80008ba0:	4297ba23          	sd	s1,1076(a5) # 8000ffd0 <consoleSem>

    thread_t threads[3];

    thread_create(&threads[0], fA2, nullptr);
    80008ba4:	00000613          	li	a2,0
    80008ba8:	00000597          	auipc	a1,0x0
    80008bac:	cc058593          	addi	a1,a1,-832 # 80008868 <_Z3fA2Pv>
    80008bb0:	fc840513          	addi	a0,s0,-56
    80008bb4:	ffff9097          	auipc	ra,0xffff9
    80008bb8:	818080e7          	jalr	-2024(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[1], fB2, nullptr);
    80008bbc:	00000613          	li	a2,0
    80008bc0:	00000597          	auipc	a1,0x0
    80008bc4:	d3c58593          	addi	a1,a1,-708 # 800088fc <_Z3fB2Pv>
    80008bc8:	fd040513          	addi	a0,s0,-48
    80008bcc:	ffff9097          	auipc	ra,0xffff9
    80008bd0:	800080e7          	jalr	-2048(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&threads[2], fC2, nullptr);
    80008bd4:	00000613          	li	a2,0
    80008bd8:	00000597          	auipc	a1,0x0
    80008bdc:	db858593          	addi	a1,a1,-584 # 80008990 <_Z3fC2Pv>
    80008be0:	fd840513          	addi	a0,s0,-40
    80008be4:	ffff8097          	auipc	ra,0xffff8
    80008be8:	7e8080e7          	jalr	2024(ra) # 800013cc <_Z13thread_createPP3TCBPFvPvES2_>
    80008bec:	00c0006f          	j	80008bf8 <_Z13testSaNitima2v+0x90>

    while (!threads[0]->isFinished() ||
           !threads[1]->isFinished() ||
           !threads[2]->isFinished()) {
        thread_dispatch();
    80008bf0:	ffff9097          	auipc	ra,0xffff9
    80008bf4:	888080e7          	jalr	-1912(ra) # 80001478 <_Z15thread_dispatchv>
    while (!threads[0]->isFinished() ||
    80008bf8:	fc843783          	ld	a5,-56(s0)
    80008bfc:	0487a703          	lw	a4,72(a5)
           !threads[1]->isFinished() ||
    80008c00:	00400793          	li	a5,4
    80008c04:	fef716e3          	bne	a4,a5,80008bf0 <_Z13testSaNitima2v+0x88>
    80008c08:	fd043783          	ld	a5,-48(s0)
    80008c0c:	0487a703          	lw	a4,72(a5)
    while (!threads[0]->isFinished() ||
    80008c10:	00400793          	li	a5,4
    80008c14:	fcf71ee3          	bne	a4,a5,80008bf0 <_Z13testSaNitima2v+0x88>
           !threads[2]->isFinished()) {
    80008c18:	fd843783          	ld	a5,-40(s0)
    80008c1c:	0487a703          	lw	a4,72(a5)
           !threads[1]->isFinished() ||
    80008c20:	00400793          	li	a5,4
    80008c24:	fcf716e3          	bne	a4,a5,80008bf0 <_Z13testSaNitima2v+0x88>
    80008c28:	00000493          	li	s1,0
    80008c2c:	0200006f          	j	80008c4c <_Z13testSaNitima2v+0xe4>
    }
    for(int i=0;i<3;i++)delete threads[i];
    80008c30:	00090513          	mv	a0,s2
    80008c34:	ffff9097          	auipc	ra,0xffff9
    80008c38:	43c080e7          	jalr	1084(ra) # 80002070 <_ZN3TCBD1Ev>
    80008c3c:	00090513          	mv	a0,s2
    80008c40:	ffff9097          	auipc	ra,0xffff9
    80008c44:	178080e7          	jalr	376(ra) # 80001db8 <_ZN3TCBdlEPv>
    80008c48:	0014849b          	addiw	s1,s1,1
    80008c4c:	00200793          	li	a5,2
    80008c50:	0097ce63          	blt	a5,s1,80008c6c <_Z13testSaNitima2v+0x104>
    80008c54:	00349793          	slli	a5,s1,0x3
    80008c58:	fe040713          	addi	a4,s0,-32
    80008c5c:	00f707b3          	add	a5,a4,a5
    80008c60:	fe87b903          	ld	s2,-24(a5)
    80008c64:	fc0916e3          	bnez	s2,80008c30 <_Z13testSaNitima2v+0xc8>
    80008c68:	fe1ff06f          	j	80008c48 <_Z13testSaNitima2v+0xe0>
    delete consoleSem;
    80008c6c:	00007517          	auipc	a0,0x7
    80008c70:	36453503          	ld	a0,868(a0) # 8000ffd0 <consoleSem>
    80008c74:	00050863          	beqz	a0,80008c84 <_Z13testSaNitima2v+0x11c>
    80008c78:	00053783          	ld	a5,0(a0)
    80008c7c:	0087b783          	ld	a5,8(a5)
    80008c80:	000780e7          	jalr	a5
    80008c84:	03813083          	ld	ra,56(sp)
    80008c88:	03013403          	ld	s0,48(sp)
    80008c8c:	02813483          	ld	s1,40(sp)
    80008c90:	02013903          	ld	s2,32(sp)
    80008c94:	04010113          	addi	sp,sp,64
    80008c98:	00008067          	ret
    80008c9c:	00050913          	mv	s2,a0
    consoleSem = new Semaphore(1);
    80008ca0:	00048513          	mv	a0,s1
    80008ca4:	ffffa097          	auipc	ra,0xffffa
    80008ca8:	8cc080e7          	jalr	-1844(ra) # 80002570 <_ZdlPv>
    80008cac:	00090513          	mv	a0,s2
    80008cb0:	00008097          	auipc	ra,0x8
    80008cb4:	3f8080e7          	jalr	1016(ra) # 800110a8 <_Unwind_Resume>

0000000080008cb8 <_Z23run_syscall_memory_testv>:
        while(1); \
    }

// --- The Test Suite ---

bool run_syscall_memory_test() {
    80008cb8:	ca010113          	addi	sp,sp,-864
    80008cbc:	34113c23          	sd	ra,856(sp)
    80008cc0:	34813823          	sd	s0,848(sp)
    80008cc4:	34913423          	sd	s1,840(sp)
    80008cc8:	35213023          	sd	s2,832(sp)
    80008ccc:	33313c23          	sd	s3,824(sp)
    80008cd0:	33413823          	sd	s4,816(sp)
    80008cd4:	33513423          	sd	s5,808(sp)
    80008cd8:	36010413          	addi	s0,sp,864
    // Phase 1: Basic Allocations and Data Integrity
    // ---------------------------------------------------------

    // Allocate a simple array
    int num_ints = 100;
    int* intArray = (int*)mem_alloc(num_ints * sizeof(int));
    80008cdc:	19000513          	li	a0,400
    80008ce0:	ffff8097          	auipc	ra,0xffff8
    80008ce4:	678080e7          	jalr	1656(ra) # 80001358 <_Z9mem_allocm>
    ASSERT(intArray != nullptr);
    80008ce8:	02050663          	beqz	a0,80008d14 <_Z23run_syscall_memory_testv+0x5c>
    80008cec:	00050493          	mv	s1,a0

    // Fill and verify (ensures memory is actually writable and non-overlapping)
    for (int i = 0; i < num_ints; i++) {
    80008cf0:	00000793          	li	a5,0
    80008cf4:	06300713          	li	a4,99
    80008cf8:	02f74063          	blt	a4,a5,80008d18 <_Z23run_syscall_memory_testv+0x60>
        intArray[i] = i * 2;
    80008cfc:	00279713          	slli	a4,a5,0x2
    80008d00:	00e48733          	add	a4,s1,a4
    80008d04:	0017969b          	slliw	a3,a5,0x1
    80008d08:	00d72023          	sw	a3,0(a4)
    for (int i = 0; i < num_ints; i++) {
    80008d0c:	0017879b          	addiw	a5,a5,1
    80008d10:	fe5ff06f          	j	80008cf4 <_Z23run_syscall_memory_testv+0x3c>
    ASSERT(intArray != nullptr);
    80008d14:	0000006f          	j	80008d14 <_Z23run_syscall_memory_testv+0x5c>
    }
    for (int i = 0; i < num_ints; i++) {
    80008d18:	00000793          	li	a5,0
    80008d1c:	06300713          	li	a4,99
    80008d20:	02f74263          	blt	a4,a5,80008d44 <_Z23run_syscall_memory_testv+0x8c>
        ASSERT(intArray[i] == i * 2);
    80008d24:	00279713          	slli	a4,a5,0x2
    80008d28:	00e48733          	add	a4,s1,a4
    80008d2c:	00072683          	lw	a3,0(a4)
    80008d30:	0017971b          	slliw	a4,a5,0x1
    80008d34:	00e69663          	bne	a3,a4,80008d40 <_Z23run_syscall_memory_testv+0x88>
    for (int i = 0; i < num_ints; i++) {
    80008d38:	0017879b          	addiw	a5,a5,1
    80008d3c:	fe1ff06f          	j	80008d1c <_Z23run_syscall_memory_testv+0x64>
        ASSERT(intArray[i] == i * 2);
    80008d40:	0000006f          	j	80008d40 <_Z23run_syscall_memory_testv+0x88>
    }

    // Allocate an array of structs
    int num_emps = 50;
    Employee* empArray = (Employee*)mem_alloc(num_emps * sizeof(Employee));
    80008d44:	00001537          	lui	a0,0x1
    80008d48:	af050513          	addi	a0,a0,-1296 # af0 <_entry-0x7ffff510>
    80008d4c:	ffff8097          	auipc	ra,0xffff8
    80008d50:	60c080e7          	jalr	1548(ra) # 80001358 <_Z9mem_allocm>
    80008d54:	00050993          	mv	s3,a0
    ASSERT(empArray != nullptr);
    80008d58:	02050e63          	beqz	a0,80008d94 <_Z23run_syscall_memory_testv+0xdc>

    for (int i = 0; i < num_emps; i++) {
    80008d5c:	00000713          	li	a4,0
    80008d60:	03100793          	li	a5,49
    80008d64:	02e7ca63          	blt	a5,a4,80008d98 <_Z23run_syscall_memory_testv+0xe0>
        empArray[i].id = 1000 + i;
    80008d68:	00371793          	slli	a5,a4,0x3
    80008d6c:	40e787b3          	sub	a5,a5,a4
    80008d70:	00379793          	slli	a5,a5,0x3
    80008d74:	00f987b3          	add	a5,s3,a5
    80008d78:	3e87069b          	addiw	a3,a4,1000
    80008d7c:	00d7b023          	sd	a3,0(a5)
        empArray[i].isActive = (i % 2 == 0);
    80008d80:	00174693          	xori	a3,a4,1
    80008d84:	0016f693          	andi	a3,a3,1
    80008d88:	02d78823          	sb	a3,48(a5)
    for (int i = 0; i < num_emps; i++) {
    80008d8c:	0017071b          	addiw	a4,a4,1
    80008d90:	fd1ff06f          	j	80008d60 <_Z23run_syscall_memory_testv+0xa8>
    ASSERT(empArray != nullptr);
    80008d94:	0000006f          	j	80008d94 <_Z23run_syscall_memory_testv+0xdc>
    }
    ASSERT(empArray[25].id == 1025);
    80008d98:	5789b703          	ld	a4,1400(s3)
    80008d9c:	40100793          	li	a5,1025
    80008da0:	00f70463          	beq	a4,a5,80008da8 <_Z23run_syscall_memory_testv+0xf0>
    80008da4:	0000006f          	j	80008da4 <_Z23run_syscall_memory_testv+0xec>
    ASSERT(empArray[25].isActive == false);
    80008da8:	5a89c783          	lbu	a5,1448(s3)
    80008dac:	00078463          	beqz	a5,80008db4 <_Z23run_syscall_memory_testv+0xfc>
    80008db0:	0000006f          	j	80008db0 <_Z23run_syscall_memory_testv+0xf8>

    // ---------------------------------------------------------
    // Phase 2: Many Small Allocations (Linked List)
    // ---------------------------------------------------------

    ListNode* head = (ListNode*)mem_alloc(sizeof(ListNode));
    80008db4:	01000513          	li	a0,16
    80008db8:	ffff8097          	auipc	ra,0xffff8
    80008dbc:	5a0080e7          	jalr	1440(ra) # 80001358 <_Z9mem_allocm>
    80008dc0:	00050913          	mv	s2,a0
    ASSERT(head != nullptr);
    80008dc4:	04050263          	beqz	a0,80008e08 <_Z23run_syscall_memory_testv+0x150>
    head->data = 0;
    80008dc8:	00053023          	sd	zero,0(a0)
    head->next = nullptr;
    80008dcc:	00053423          	sd	zero,8(a0)

    ListNode* current = head;
    80008dd0:	00050a93          	mv	s5,a0
    for (int i = 1; i < 200; i++) {
    80008dd4:	00100a13          	li	s4,1
    80008dd8:	0c700793          	li	a5,199
    80008ddc:	0347ca63          	blt	a5,s4,80008e10 <_Z23run_syscall_memory_testv+0x158>
        current->next = (ListNode*)mem_alloc(sizeof(ListNode));
    80008de0:	01000513          	li	a0,16
    80008de4:	ffff8097          	auipc	ra,0xffff8
    80008de8:	574080e7          	jalr	1396(ra) # 80001358 <_Z9mem_allocm>
    80008dec:	00aab423          	sd	a0,8(s5)
        ASSERT(current->next != nullptr);
    80008df0:	00050e63          	beqz	a0,80008e0c <_Z23run_syscall_memory_testv+0x154>
        current = current->next;
        current->data = i;
    80008df4:	01453023          	sd	s4,0(a0)
        current->next = nullptr;
    80008df8:	00053423          	sd	zero,8(a0)
    for (int i = 1; i < 200; i++) {
    80008dfc:	001a0a1b          	addiw	s4,s4,1
        current = current->next;
    80008e00:	00050a93          	mv	s5,a0
    for (int i = 1; i < 200; i++) {
    80008e04:	fd5ff06f          	j	80008dd8 <_Z23run_syscall_memory_testv+0x120>
    ASSERT(head != nullptr);
    80008e08:	0000006f          	j	80008e08 <_Z23run_syscall_memory_testv+0x150>
        ASSERT(current->next != nullptr);
    80008e0c:	0000006f          	j	80008e0c <_Z23run_syscall_memory_testv+0x154>
    }

    // Verify list integrity
    current = head;
    80008e10:	00090713          	mv	a4,s2
    for (int i = 0; i < 200; i++) {
    80008e14:	00000793          	li	a5,0
    80008e18:	0c700693          	li	a3,199
    80008e1c:	02f6c063          	blt	a3,a5,80008e3c <_Z23run_syscall_memory_testv+0x184>
        ASSERT((int)current->data == i);
    80008e20:	00072683          	lw	a3,0(a4)
    80008e24:	00f69863          	bne	a3,a5,80008e34 <_Z23run_syscall_memory_testv+0x17c>
        current = current->next;
    80008e28:	00873703          	ld	a4,8(a4)
    for (int i = 0; i < 200; i++) {
    80008e2c:	0017879b          	addiw	a5,a5,1
    80008e30:	fe9ff06f          	j	80008e18 <_Z23run_syscall_memory_testv+0x160>
        ASSERT((int)current->data == i);
    80008e34:	0000006f          	j	80008e34 <_Z23run_syscall_memory_testv+0x17c>
    current = head;
    while (current != nullptr) {
        ListNode* next = current->next;
        int status = mem_free(current);
        ASSERT(status == 0); // Assumes 0 means success
        current = next;
    80008e38:	000a0913          	mv	s2,s4
    while (current != nullptr) {
    80008e3c:	00090e63          	beqz	s2,80008e58 <_Z23run_syscall_memory_testv+0x1a0>
        ListNode* next = current->next;
    80008e40:	00893a03          	ld	s4,8(s2)
        int status = mem_free(current);
    80008e44:	00090513          	mv	a0,s2
    80008e48:	ffff8097          	auipc	ra,0xffff8
    80008e4c:	548080e7          	jalr	1352(ra) # 80001390 <_Z8mem_freePv>
        ASSERT(status == 0); // Assumes 0 means success
    80008e50:	fe0504e3          	beqz	a0,80008e38 <_Z23run_syscall_memory_testv+0x180>
    80008e54:	0000006f          	j	80008e54 <_Z23run_syscall_memory_testv+0x19c>
    // Phase 3: The "Swiss Cheese" Fragmentation Test
    // ---------------------------------------------------------

    // Allocate 100 chunks of memory
    void* chunks[100];
    for (int i = 0; i < 100; i++) {
    80008e58:	00000913          	li	s2,0
    80008e5c:	06300793          	li	a5,99
    80008e60:	0327c863          	blt	a5,s2,80008e90 <_Z23run_syscall_memory_testv+0x1d8>
        chunks[i] = mem_alloc(128); // 128 bytes each
    80008e64:	08000513          	li	a0,128
    80008e68:	ffff8097          	auipc	ra,0xffff8
    80008e6c:	4f0080e7          	jalr	1264(ra) # 80001358 <_Z9mem_allocm>
    80008e70:	00391713          	slli	a4,s2,0x3
    80008e74:	fc040693          	addi	a3,s0,-64
    80008e78:	00e68733          	add	a4,a3,a4
    80008e7c:	cea73023          	sd	a0,-800(a4)
        ASSERT(chunks[i] != nullptr);
    80008e80:	00050663          	beqz	a0,80008e8c <_Z23run_syscall_memory_testv+0x1d4>
    for (int i = 0; i < 100; i++) {
    80008e84:	0019091b          	addiw	s2,s2,1
    80008e88:	fd5ff06f          	j	80008e5c <_Z23run_syscall_memory_testv+0x1a4>
        ASSERT(chunks[i] != nullptr);
    80008e8c:	0000006f          	j	80008e8c <_Z23run_syscall_memory_testv+0x1d4>
    }

    // Free EVERY OTHER chunk to create heavy fragmentation holes
    for (int i = 0; i < 100; i += 2) {
    80008e90:	00000913          	li	s2,0
    80008e94:	06300793          	li	a5,99
    80008e98:	0327ce63          	blt	a5,s2,80008ed4 <_Z23run_syscall_memory_testv+0x21c>
        ASSERT(mem_free(chunks[i]) == 0);
    80008e9c:	00391793          	slli	a5,s2,0x3
    80008ea0:	fc040713          	addi	a4,s0,-64
    80008ea4:	00f707b3          	add	a5,a4,a5
    80008ea8:	ce07b503          	ld	a0,-800(a5)
    80008eac:	ffff8097          	auipc	ra,0xffff8
    80008eb0:	4e4080e7          	jalr	1252(ra) # 80001390 <_Z8mem_freePv>
    80008eb4:	00051e63          	bnez	a0,80008ed0 <_Z23run_syscall_memory_testv+0x218>
        chunks[i] = nullptr;
    80008eb8:	00391793          	slli	a5,s2,0x3
    80008ebc:	fc040713          	addi	a4,s0,-64
    80008ec0:	00f707b3          	add	a5,a4,a5
    80008ec4:	ce07b023          	sd	zero,-800(a5)
    for (int i = 0; i < 100; i += 2) {
    80008ec8:	0029091b          	addiw	s2,s2,2
    80008ecc:	fc9ff06f          	j	80008e94 <_Z23run_syscall_memory_testv+0x1dc>
        ASSERT(mem_free(chunks[i]) == 0);
    80008ed0:	0000006f          	j	80008ed0 <_Z23run_syscall_memory_testv+0x218>
    }

    // Now request smaller fragments that should fit perfectly into those holes
    for (int i = 0; i < 100; i += 2) {
    80008ed4:	00000913          	li	s2,0
    80008ed8:	06300793          	li	a5,99
    80008edc:	0327c863          	blt	a5,s2,80008f0c <_Z23run_syscall_memory_testv+0x254>
        chunks[i] = mem_alloc(64);
    80008ee0:	04000513          	li	a0,64
    80008ee4:	ffff8097          	auipc	ra,0xffff8
    80008ee8:	474080e7          	jalr	1140(ra) # 80001358 <_Z9mem_allocm>
    80008eec:	00391713          	slli	a4,s2,0x3
    80008ef0:	fc040693          	addi	a3,s0,-64
    80008ef4:	00e68733          	add	a4,a3,a4
    80008ef8:	cea73023          	sd	a0,-800(a4)
        ASSERT(chunks[i] != nullptr);
    80008efc:	00050663          	beqz	a0,80008f08 <_Z23run_syscall_memory_testv+0x250>
    for (int i = 0; i < 100; i += 2) {
    80008f00:	0029091b          	addiw	s2,s2,2
    80008f04:	fd5ff06f          	j	80008ed8 <_Z23run_syscall_memory_testv+0x220>
        ASSERT(chunks[i] != nullptr);
    80008f08:	0000006f          	j	80008f08 <_Z23run_syscall_memory_testv+0x250>
    }

    // Clean up Phase 3
    for (int i = 0; i < 100; i++) {
    80008f0c:	00000913          	li	s2,0
    80008f10:	06300793          	li	a5,99
    80008f14:	0327c663          	blt	a5,s2,80008f40 <_Z23run_syscall_memory_testv+0x288>
        ASSERT(mem_free(chunks[i]) == 0);
    80008f18:	00391793          	slli	a5,s2,0x3
    80008f1c:	fc040713          	addi	a4,s0,-64
    80008f20:	00f707b3          	add	a5,a4,a5
    80008f24:	ce07b503          	ld	a0,-800(a5)
    80008f28:	ffff8097          	auipc	ra,0xffff8
    80008f2c:	468080e7          	jalr	1128(ra) # 80001390 <_Z8mem_freePv>
    80008f30:	00051663          	bnez	a0,80008f3c <_Z23run_syscall_memory_testv+0x284>
    for (int i = 0; i < 100; i++) {
    80008f34:	0019091b          	addiw	s2,s2,1
    80008f38:	fd9ff06f          	j	80008f10 <_Z23run_syscall_memory_testv+0x258>
        ASSERT(mem_free(chunks[i]) == 0);
    80008f3c:	0000006f          	j	80008f3c <_Z23run_syscall_memory_testv+0x284>
    // ---------------------------------------------------------
    // Phase 4: Block Merging Test (Coalescing)
    // ---------------------------------------------------------

    // Allocate 3 contiguous blocks
    void* blockA = mem_alloc(1024);
    80008f40:	40000513          	li	a0,1024
    80008f44:	ffff8097          	auipc	ra,0xffff8
    80008f48:	414080e7          	jalr	1044(ra) # 80001358 <_Z9mem_allocm>
    80008f4c:	00050a93          	mv	s5,a0
    void* blockB = mem_alloc(1024);
    80008f50:	40000513          	li	a0,1024
    80008f54:	ffff8097          	auipc	ra,0xffff8
    80008f58:	404080e7          	jalr	1028(ra) # 80001358 <_Z9mem_allocm>
    80008f5c:	00050a13          	mv	s4,a0
    void* blockC = mem_alloc(1024);
    80008f60:	40000513          	li	a0,1024
    80008f64:	ffff8097          	auipc	ra,0xffff8
    80008f68:	3f4080e7          	jalr	1012(ra) # 80001358 <_Z9mem_allocm>
    80008f6c:	00050913          	mv	s2,a0

    // Free them all. Your allocator should merge these back into one large contiguous block.
    ASSERT(mem_free(blockA) == 0);
    80008f70:	000a8513          	mv	a0,s5
    80008f74:	ffff8097          	auipc	ra,0xffff8
    80008f78:	41c080e7          	jalr	1052(ra) # 80001390 <_Z8mem_freePv>
    80008f7c:	00050463          	beqz	a0,80008f84 <_Z23run_syscall_memory_testv+0x2cc>
    80008f80:	0000006f          	j	80008f80 <_Z23run_syscall_memory_testv+0x2c8>
    ASSERT(mem_free(blockB) == 0);
    80008f84:	000a0513          	mv	a0,s4
    80008f88:	ffff8097          	auipc	ra,0xffff8
    80008f8c:	408080e7          	jalr	1032(ra) # 80001390 <_Z8mem_freePv>
    80008f90:	00050463          	beqz	a0,80008f98 <_Z23run_syscall_memory_testv+0x2e0>
    80008f94:	0000006f          	j	80008f94 <_Z23run_syscall_memory_testv+0x2dc>
    ASSERT(mem_free(blockC) == 0);
    80008f98:	00090513          	mv	a0,s2
    80008f9c:	ffff8097          	auipc	ra,0xffff8
    80008fa0:	3f4080e7          	jalr	1012(ra) # 80001390 <_Z8mem_freePv>
    80008fa4:	00050463          	beqz	a0,80008fac <_Z23run_syscall_memory_testv+0x2f4>
    80008fa8:	0000006f          	j	80008fa8 <_Z23run_syscall_memory_testv+0x2f0>

    // Try to allocate a block larger than 1024, but smaller than the total merged space.
    // If your allocator fails to merge adjacent free blocks, this request will fail!
    void* giantBlock = mem_alloc(2048);
    80008fac:	00001537          	lui	a0,0x1
    80008fb0:	80050513          	addi	a0,a0,-2048 # 800 <_entry-0x7ffff800>
    80008fb4:	ffff8097          	auipc	ra,0xffff8
    80008fb8:	3a4080e7          	jalr	932(ra) # 80001358 <_Z9mem_allocm>
    ASSERT(giantBlock != nullptr);
    80008fbc:	00051463          	bnez	a0,80008fc4 <_Z23run_syscall_memory_testv+0x30c>
    80008fc0:	0000006f          	j	80008fc0 <_Z23run_syscall_memory_testv+0x308>
    ASSERT(mem_free(giantBlock) == 0);
    80008fc4:	ffff8097          	auipc	ra,0xffff8
    80008fc8:	3cc080e7          	jalr	972(ra) # 80001390 <_Z8mem_freePv>
    80008fcc:	00050463          	beqz	a0,80008fd4 <_Z23run_syscall_memory_testv+0x31c>
    80008fd0:	0000006f          	j	80008fd0 <_Z23run_syscall_memory_testv+0x318>

    // Clean up Phase 1 arrays
    ASSERT(mem_free(intArray) == 0);
    80008fd4:	00048513          	mv	a0,s1
    80008fd8:	ffff8097          	auipc	ra,0xffff8
    80008fdc:	3b8080e7          	jalr	952(ra) # 80001390 <_Z8mem_freePv>
    80008fe0:	00050463          	beqz	a0,80008fe8 <_Z23run_syscall_memory_testv+0x330>
    80008fe4:	0000006f          	j	80008fe4 <_Z23run_syscall_memory_testv+0x32c>
    ASSERT(mem_free(empArray) == 0);
    80008fe8:	00098513          	mv	a0,s3
    80008fec:	ffff8097          	auipc	ra,0xffff8
    80008ff0:	3a4080e7          	jalr	932(ra) # 80001390 <_Z8mem_freePv>
    80008ff4:	00050463          	beqz	a0,80008ffc <_Z23run_syscall_memory_testv+0x344>
    80008ff8:	0000006f          	j	80008ff8 <_Z23run_syscall_memory_testv+0x340>

    return true; // All tests passed!
    80008ffc:	00100513          	li	a0,1
    80009000:	35813083          	ld	ra,856(sp)
    80009004:	35013403          	ld	s0,848(sp)
    80009008:	34813483          	ld	s1,840(sp)
    8000900c:	34013903          	ld	s2,832(sp)
    80009010:	33813983          	ld	s3,824(sp)
    80009014:	33013a03          	ld	s4,816(sp)
    80009018:	32813a83          	ld	s5,808(sp)
    8000901c:	36010113          	addi	sp,sp,864
    80009020:	00008067          	ret

0000000080009024 <start>:
    80009024:	ff010113          	addi	sp,sp,-16
    80009028:	00813423          	sd	s0,8(sp)
    8000902c:	01010413          	addi	s0,sp,16
    80009030:	300027f3          	csrr	a5,mstatus
    80009034:	ffffe737          	lui	a4,0xffffe
    80009038:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffed5bf>
    8000903c:	00e7f7b3          	and	a5,a5,a4
    80009040:	00001737          	lui	a4,0x1
    80009044:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80009048:	00e7e7b3          	or	a5,a5,a4
    8000904c:	30079073          	csrw	mstatus,a5
    80009050:	00000797          	auipc	a5,0x0
    80009054:	16078793          	addi	a5,a5,352 # 800091b0 <system_main>
    80009058:	34179073          	csrw	mepc,a5
    8000905c:	00000793          	li	a5,0
    80009060:	18079073          	csrw	satp,a5
    80009064:	000107b7          	lui	a5,0x10
    80009068:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000906c:	30279073          	csrw	medeleg,a5
    80009070:	30379073          	csrw	mideleg,a5
    80009074:	104027f3          	csrr	a5,sie
    80009078:	2227e793          	ori	a5,a5,546
    8000907c:	10479073          	csrw	sie,a5
    80009080:	fff00793          	li	a5,-1
    80009084:	00a7d793          	srli	a5,a5,0xa
    80009088:	3b079073          	csrw	pmpaddr0,a5
    8000908c:	00f00793          	li	a5,15
    80009090:	3a079073          	csrw	pmpcfg0,a5
    80009094:	f14027f3          	csrr	a5,mhartid
    80009098:	0200c737          	lui	a4,0x200c
    8000909c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800090a0:	0007869b          	sext.w	a3,a5
    800090a4:	00269713          	slli	a4,a3,0x2
    800090a8:	000f4637          	lui	a2,0xf4
    800090ac:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800090b0:	00d70733          	add	a4,a4,a3
    800090b4:	0037979b          	slliw	a5,a5,0x3
    800090b8:	020046b7          	lui	a3,0x2004
    800090bc:	00d787b3          	add	a5,a5,a3
    800090c0:	00c585b3          	add	a1,a1,a2
    800090c4:	00371693          	slli	a3,a4,0x3
    800090c8:	00007717          	auipc	a4,0x7
    800090cc:	f1870713          	addi	a4,a4,-232 # 8000ffe0 <timer_scratch>
    800090d0:	00b7b023          	sd	a1,0(a5)
    800090d4:	00d70733          	add	a4,a4,a3
    800090d8:	00f73c23          	sd	a5,24(a4)
    800090dc:	02c73023          	sd	a2,32(a4)
    800090e0:	34071073          	csrw	mscratch,a4
    800090e4:	00000797          	auipc	a5,0x0
    800090e8:	6ec78793          	addi	a5,a5,1772 # 800097d0 <timervec>
    800090ec:	30579073          	csrw	mtvec,a5
    800090f0:	300027f3          	csrr	a5,mstatus
    800090f4:	0087e793          	ori	a5,a5,8
    800090f8:	30079073          	csrw	mstatus,a5
    800090fc:	304027f3          	csrr	a5,mie
    80009100:	0807e793          	ori	a5,a5,128
    80009104:	30479073          	csrw	mie,a5
    80009108:	f14027f3          	csrr	a5,mhartid
    8000910c:	0007879b          	sext.w	a5,a5
    80009110:	00078213          	mv	tp,a5
    80009114:	30200073          	mret
    80009118:	00813403          	ld	s0,8(sp)
    8000911c:	01010113          	addi	sp,sp,16
    80009120:	00008067          	ret

0000000080009124 <timerinit>:
    80009124:	ff010113          	addi	sp,sp,-16
    80009128:	00813423          	sd	s0,8(sp)
    8000912c:	01010413          	addi	s0,sp,16
    80009130:	f14027f3          	csrr	a5,mhartid
    80009134:	0200c737          	lui	a4,0x200c
    80009138:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000913c:	0007869b          	sext.w	a3,a5
    80009140:	00269713          	slli	a4,a3,0x2
    80009144:	000f4637          	lui	a2,0xf4
    80009148:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000914c:	00d70733          	add	a4,a4,a3
    80009150:	0037979b          	slliw	a5,a5,0x3
    80009154:	020046b7          	lui	a3,0x2004
    80009158:	00d787b3          	add	a5,a5,a3
    8000915c:	00c585b3          	add	a1,a1,a2
    80009160:	00371693          	slli	a3,a4,0x3
    80009164:	00007717          	auipc	a4,0x7
    80009168:	e7c70713          	addi	a4,a4,-388 # 8000ffe0 <timer_scratch>
    8000916c:	00b7b023          	sd	a1,0(a5)
    80009170:	00d70733          	add	a4,a4,a3
    80009174:	00f73c23          	sd	a5,24(a4)
    80009178:	02c73023          	sd	a2,32(a4)
    8000917c:	34071073          	csrw	mscratch,a4
    80009180:	00000797          	auipc	a5,0x0
    80009184:	65078793          	addi	a5,a5,1616 # 800097d0 <timervec>
    80009188:	30579073          	csrw	mtvec,a5
    8000918c:	300027f3          	csrr	a5,mstatus
    80009190:	0087e793          	ori	a5,a5,8
    80009194:	30079073          	csrw	mstatus,a5
    80009198:	304027f3          	csrr	a5,mie
    8000919c:	0807e793          	ori	a5,a5,128
    800091a0:	30479073          	csrw	mie,a5
    800091a4:	00813403          	ld	s0,8(sp)
    800091a8:	01010113          	addi	sp,sp,16
    800091ac:	00008067          	ret

00000000800091b0 <system_main>:
    800091b0:	fe010113          	addi	sp,sp,-32
    800091b4:	00813823          	sd	s0,16(sp)
    800091b8:	00913423          	sd	s1,8(sp)
    800091bc:	00113c23          	sd	ra,24(sp)
    800091c0:	02010413          	addi	s0,sp,32
    800091c4:	00000097          	auipc	ra,0x0
    800091c8:	0c4080e7          	jalr	196(ra) # 80009288 <cpuid>
    800091cc:	00007497          	auipc	s1,0x7
    800091d0:	cd448493          	addi	s1,s1,-812 # 8000fea0 <started>
    800091d4:	02050263          	beqz	a0,800091f8 <system_main+0x48>
    800091d8:	0004a783          	lw	a5,0(s1)
    800091dc:	0007879b          	sext.w	a5,a5
    800091e0:	fe078ce3          	beqz	a5,800091d8 <system_main+0x28>
    800091e4:	0ff0000f          	fence
    800091e8:	00004517          	auipc	a0,0x4
    800091ec:	bb850513          	addi	a0,a0,-1096 # 8000cda0 <CONSOLE_STATUS+0xd90>
    800091f0:	00001097          	auipc	ra,0x1
    800091f4:	a7c080e7          	jalr	-1412(ra) # 80009c6c <panic>
    800091f8:	00001097          	auipc	ra,0x1
    800091fc:	9d0080e7          	jalr	-1584(ra) # 80009bc8 <consoleinit>
    80009200:	00001097          	auipc	ra,0x1
    80009204:	15c080e7          	jalr	348(ra) # 8000a35c <printfinit>
    80009208:	00003517          	auipc	a0,0x3
    8000920c:	4e050513          	addi	a0,a0,1248 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80009210:	00001097          	auipc	ra,0x1
    80009214:	ab8080e7          	jalr	-1352(ra) # 80009cc8 <__printf>
    80009218:	00004517          	auipc	a0,0x4
    8000921c:	b5850513          	addi	a0,a0,-1192 # 8000cd70 <CONSOLE_STATUS+0xd60>
    80009220:	00001097          	auipc	ra,0x1
    80009224:	aa8080e7          	jalr	-1368(ra) # 80009cc8 <__printf>
    80009228:	00003517          	auipc	a0,0x3
    8000922c:	4c050513          	addi	a0,a0,1216 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80009230:	00001097          	auipc	ra,0x1
    80009234:	a98080e7          	jalr	-1384(ra) # 80009cc8 <__printf>
    80009238:	00001097          	auipc	ra,0x1
    8000923c:	4b0080e7          	jalr	1200(ra) # 8000a6e8 <kinit>
    80009240:	00000097          	auipc	ra,0x0
    80009244:	148080e7          	jalr	328(ra) # 80009388 <trapinit>
    80009248:	00000097          	auipc	ra,0x0
    8000924c:	16c080e7          	jalr	364(ra) # 800093b4 <trapinithart>
    80009250:	00000097          	auipc	ra,0x0
    80009254:	5c0080e7          	jalr	1472(ra) # 80009810 <plicinit>
    80009258:	00000097          	auipc	ra,0x0
    8000925c:	5e0080e7          	jalr	1504(ra) # 80009838 <plicinithart>
    80009260:	00000097          	auipc	ra,0x0
    80009264:	078080e7          	jalr	120(ra) # 800092d8 <userinit>
    80009268:	0ff0000f          	fence
    8000926c:	00100793          	li	a5,1
    80009270:	00004517          	auipc	a0,0x4
    80009274:	b1850513          	addi	a0,a0,-1256 # 8000cd88 <CONSOLE_STATUS+0xd78>
    80009278:	00f4a023          	sw	a5,0(s1)
    8000927c:	00001097          	auipc	ra,0x1
    80009280:	a4c080e7          	jalr	-1460(ra) # 80009cc8 <__printf>
    80009284:	0000006f          	j	80009284 <system_main+0xd4>

0000000080009288 <cpuid>:
    80009288:	ff010113          	addi	sp,sp,-16
    8000928c:	00813423          	sd	s0,8(sp)
    80009290:	01010413          	addi	s0,sp,16
    80009294:	00020513          	mv	a0,tp
    80009298:	00813403          	ld	s0,8(sp)
    8000929c:	0005051b          	sext.w	a0,a0
    800092a0:	01010113          	addi	sp,sp,16
    800092a4:	00008067          	ret

00000000800092a8 <mycpu>:
    800092a8:	ff010113          	addi	sp,sp,-16
    800092ac:	00813423          	sd	s0,8(sp)
    800092b0:	01010413          	addi	s0,sp,16
    800092b4:	00020793          	mv	a5,tp
    800092b8:	00813403          	ld	s0,8(sp)
    800092bc:	0007879b          	sext.w	a5,a5
    800092c0:	00779793          	slli	a5,a5,0x7
    800092c4:	00008517          	auipc	a0,0x8
    800092c8:	d4c50513          	addi	a0,a0,-692 # 80011010 <cpus>
    800092cc:	00f50533          	add	a0,a0,a5
    800092d0:	01010113          	addi	sp,sp,16
    800092d4:	00008067          	ret

00000000800092d8 <userinit>:
    800092d8:	ff010113          	addi	sp,sp,-16
    800092dc:	00813423          	sd	s0,8(sp)
    800092e0:	01010413          	addi	s0,sp,16
    800092e4:	00813403          	ld	s0,8(sp)
    800092e8:	01010113          	addi	sp,sp,16
    800092ec:	ffff8317          	auipc	t1,0xffff8
    800092f0:	6dc30067          	jr	1756(t1) # 800019c8 <main>

00000000800092f4 <either_copyout>:
    800092f4:	ff010113          	addi	sp,sp,-16
    800092f8:	00813023          	sd	s0,0(sp)
    800092fc:	00113423          	sd	ra,8(sp)
    80009300:	01010413          	addi	s0,sp,16
    80009304:	02051663          	bnez	a0,80009330 <either_copyout+0x3c>
    80009308:	00058513          	mv	a0,a1
    8000930c:	00060593          	mv	a1,a2
    80009310:	0006861b          	sext.w	a2,a3
    80009314:	00002097          	auipc	ra,0x2
    80009318:	c60080e7          	jalr	-928(ra) # 8000af74 <__memmove>
    8000931c:	00813083          	ld	ra,8(sp)
    80009320:	00013403          	ld	s0,0(sp)
    80009324:	00000513          	li	a0,0
    80009328:	01010113          	addi	sp,sp,16
    8000932c:	00008067          	ret
    80009330:	00004517          	auipc	a0,0x4
    80009334:	a9850513          	addi	a0,a0,-1384 # 8000cdc8 <CONSOLE_STATUS+0xdb8>
    80009338:	00001097          	auipc	ra,0x1
    8000933c:	934080e7          	jalr	-1740(ra) # 80009c6c <panic>

0000000080009340 <either_copyin>:
    80009340:	ff010113          	addi	sp,sp,-16
    80009344:	00813023          	sd	s0,0(sp)
    80009348:	00113423          	sd	ra,8(sp)
    8000934c:	01010413          	addi	s0,sp,16
    80009350:	02059463          	bnez	a1,80009378 <either_copyin+0x38>
    80009354:	00060593          	mv	a1,a2
    80009358:	0006861b          	sext.w	a2,a3
    8000935c:	00002097          	auipc	ra,0x2
    80009360:	c18080e7          	jalr	-1000(ra) # 8000af74 <__memmove>
    80009364:	00813083          	ld	ra,8(sp)
    80009368:	00013403          	ld	s0,0(sp)
    8000936c:	00000513          	li	a0,0
    80009370:	01010113          	addi	sp,sp,16
    80009374:	00008067          	ret
    80009378:	00004517          	auipc	a0,0x4
    8000937c:	a7850513          	addi	a0,a0,-1416 # 8000cdf0 <CONSOLE_STATUS+0xde0>
    80009380:	00001097          	auipc	ra,0x1
    80009384:	8ec080e7          	jalr	-1812(ra) # 80009c6c <panic>

0000000080009388 <trapinit>:
    80009388:	ff010113          	addi	sp,sp,-16
    8000938c:	00813423          	sd	s0,8(sp)
    80009390:	01010413          	addi	s0,sp,16
    80009394:	00813403          	ld	s0,8(sp)
    80009398:	00004597          	auipc	a1,0x4
    8000939c:	a8058593          	addi	a1,a1,-1408 # 8000ce18 <CONSOLE_STATUS+0xe08>
    800093a0:	00008517          	auipc	a0,0x8
    800093a4:	cf050513          	addi	a0,a0,-784 # 80011090 <tickslock>
    800093a8:	01010113          	addi	sp,sp,16
    800093ac:	00001317          	auipc	t1,0x1
    800093b0:	5cc30067          	jr	1484(t1) # 8000a978 <initlock>

00000000800093b4 <trapinithart>:
    800093b4:	ff010113          	addi	sp,sp,-16
    800093b8:	00813423          	sd	s0,8(sp)
    800093bc:	01010413          	addi	s0,sp,16
    800093c0:	00000797          	auipc	a5,0x0
    800093c4:	30078793          	addi	a5,a5,768 # 800096c0 <kernelvec>
    800093c8:	10579073          	csrw	stvec,a5
    800093cc:	00813403          	ld	s0,8(sp)
    800093d0:	01010113          	addi	sp,sp,16
    800093d4:	00008067          	ret

00000000800093d8 <usertrap>:
    800093d8:	ff010113          	addi	sp,sp,-16
    800093dc:	00813423          	sd	s0,8(sp)
    800093e0:	01010413          	addi	s0,sp,16
    800093e4:	00813403          	ld	s0,8(sp)
    800093e8:	01010113          	addi	sp,sp,16
    800093ec:	00008067          	ret

00000000800093f0 <usertrapret>:
    800093f0:	ff010113          	addi	sp,sp,-16
    800093f4:	00813423          	sd	s0,8(sp)
    800093f8:	01010413          	addi	s0,sp,16
    800093fc:	00813403          	ld	s0,8(sp)
    80009400:	01010113          	addi	sp,sp,16
    80009404:	00008067          	ret

0000000080009408 <kerneltrap>:
    80009408:	fe010113          	addi	sp,sp,-32
    8000940c:	00813823          	sd	s0,16(sp)
    80009410:	00113c23          	sd	ra,24(sp)
    80009414:	00913423          	sd	s1,8(sp)
    80009418:	02010413          	addi	s0,sp,32
    8000941c:	142025f3          	csrr	a1,scause
    80009420:	100027f3          	csrr	a5,sstatus
    80009424:	0027f793          	andi	a5,a5,2
    80009428:	10079c63          	bnez	a5,80009540 <kerneltrap+0x138>
    8000942c:	142027f3          	csrr	a5,scause
    80009430:	0207ce63          	bltz	a5,8000946c <kerneltrap+0x64>
    80009434:	00004517          	auipc	a0,0x4
    80009438:	a2c50513          	addi	a0,a0,-1492 # 8000ce60 <CONSOLE_STATUS+0xe50>
    8000943c:	00001097          	auipc	ra,0x1
    80009440:	88c080e7          	jalr	-1908(ra) # 80009cc8 <__printf>
    80009444:	141025f3          	csrr	a1,sepc
    80009448:	14302673          	csrr	a2,stval
    8000944c:	00004517          	auipc	a0,0x4
    80009450:	a2450513          	addi	a0,a0,-1500 # 8000ce70 <CONSOLE_STATUS+0xe60>
    80009454:	00001097          	auipc	ra,0x1
    80009458:	874080e7          	jalr	-1932(ra) # 80009cc8 <__printf>
    8000945c:	00004517          	auipc	a0,0x4
    80009460:	a2c50513          	addi	a0,a0,-1492 # 8000ce88 <CONSOLE_STATUS+0xe78>
    80009464:	00001097          	auipc	ra,0x1
    80009468:	808080e7          	jalr	-2040(ra) # 80009c6c <panic>
    8000946c:	0ff7f713          	andi	a4,a5,255
    80009470:	00900693          	li	a3,9
    80009474:	04d70063          	beq	a4,a3,800094b4 <kerneltrap+0xac>
    80009478:	fff00713          	li	a4,-1
    8000947c:	03f71713          	slli	a4,a4,0x3f
    80009480:	00170713          	addi	a4,a4,1
    80009484:	fae798e3          	bne	a5,a4,80009434 <kerneltrap+0x2c>
    80009488:	00000097          	auipc	ra,0x0
    8000948c:	e00080e7          	jalr	-512(ra) # 80009288 <cpuid>
    80009490:	06050663          	beqz	a0,800094fc <kerneltrap+0xf4>
    80009494:	144027f3          	csrr	a5,sip
    80009498:	ffd7f793          	andi	a5,a5,-3
    8000949c:	14479073          	csrw	sip,a5
    800094a0:	01813083          	ld	ra,24(sp)
    800094a4:	01013403          	ld	s0,16(sp)
    800094a8:	00813483          	ld	s1,8(sp)
    800094ac:	02010113          	addi	sp,sp,32
    800094b0:	00008067          	ret
    800094b4:	00000097          	auipc	ra,0x0
    800094b8:	3d0080e7          	jalr	976(ra) # 80009884 <plic_claim>
    800094bc:	00a00793          	li	a5,10
    800094c0:	00050493          	mv	s1,a0
    800094c4:	06f50863          	beq	a0,a5,80009534 <kerneltrap+0x12c>
    800094c8:	fc050ce3          	beqz	a0,800094a0 <kerneltrap+0x98>
    800094cc:	00050593          	mv	a1,a0
    800094d0:	00004517          	auipc	a0,0x4
    800094d4:	97050513          	addi	a0,a0,-1680 # 8000ce40 <CONSOLE_STATUS+0xe30>
    800094d8:	00000097          	auipc	ra,0x0
    800094dc:	7f0080e7          	jalr	2032(ra) # 80009cc8 <__printf>
    800094e0:	01013403          	ld	s0,16(sp)
    800094e4:	01813083          	ld	ra,24(sp)
    800094e8:	00048513          	mv	a0,s1
    800094ec:	00813483          	ld	s1,8(sp)
    800094f0:	02010113          	addi	sp,sp,32
    800094f4:	00000317          	auipc	t1,0x0
    800094f8:	3c830067          	jr	968(t1) # 800098bc <plic_complete>
    800094fc:	00008517          	auipc	a0,0x8
    80009500:	b9450513          	addi	a0,a0,-1132 # 80011090 <tickslock>
    80009504:	00001097          	auipc	ra,0x1
    80009508:	498080e7          	jalr	1176(ra) # 8000a99c <acquire>
    8000950c:	00007717          	auipc	a4,0x7
    80009510:	99870713          	addi	a4,a4,-1640 # 8000fea4 <ticks>
    80009514:	00072783          	lw	a5,0(a4)
    80009518:	00008517          	auipc	a0,0x8
    8000951c:	b7850513          	addi	a0,a0,-1160 # 80011090 <tickslock>
    80009520:	0017879b          	addiw	a5,a5,1
    80009524:	00f72023          	sw	a5,0(a4)
    80009528:	00001097          	auipc	ra,0x1
    8000952c:	540080e7          	jalr	1344(ra) # 8000aa68 <release>
    80009530:	f65ff06f          	j	80009494 <kerneltrap+0x8c>
    80009534:	00001097          	auipc	ra,0x1
    80009538:	09c080e7          	jalr	156(ra) # 8000a5d0 <uartintr>
    8000953c:	fa5ff06f          	j	800094e0 <kerneltrap+0xd8>
    80009540:	00004517          	auipc	a0,0x4
    80009544:	8e050513          	addi	a0,a0,-1824 # 8000ce20 <CONSOLE_STATUS+0xe10>
    80009548:	00000097          	auipc	ra,0x0
    8000954c:	724080e7          	jalr	1828(ra) # 80009c6c <panic>

0000000080009550 <clockintr>:
    80009550:	fe010113          	addi	sp,sp,-32
    80009554:	00813823          	sd	s0,16(sp)
    80009558:	00913423          	sd	s1,8(sp)
    8000955c:	00113c23          	sd	ra,24(sp)
    80009560:	02010413          	addi	s0,sp,32
    80009564:	00008497          	auipc	s1,0x8
    80009568:	b2c48493          	addi	s1,s1,-1236 # 80011090 <tickslock>
    8000956c:	00048513          	mv	a0,s1
    80009570:	00001097          	auipc	ra,0x1
    80009574:	42c080e7          	jalr	1068(ra) # 8000a99c <acquire>
    80009578:	00007717          	auipc	a4,0x7
    8000957c:	92c70713          	addi	a4,a4,-1748 # 8000fea4 <ticks>
    80009580:	00072783          	lw	a5,0(a4)
    80009584:	01013403          	ld	s0,16(sp)
    80009588:	01813083          	ld	ra,24(sp)
    8000958c:	00048513          	mv	a0,s1
    80009590:	0017879b          	addiw	a5,a5,1
    80009594:	00813483          	ld	s1,8(sp)
    80009598:	00f72023          	sw	a5,0(a4)
    8000959c:	02010113          	addi	sp,sp,32
    800095a0:	00001317          	auipc	t1,0x1
    800095a4:	4c830067          	jr	1224(t1) # 8000aa68 <release>

00000000800095a8 <devintr>:
    800095a8:	142027f3          	csrr	a5,scause
    800095ac:	00000513          	li	a0,0
    800095b0:	0007c463          	bltz	a5,800095b8 <devintr+0x10>
    800095b4:	00008067          	ret
    800095b8:	fe010113          	addi	sp,sp,-32
    800095bc:	00813823          	sd	s0,16(sp)
    800095c0:	00113c23          	sd	ra,24(sp)
    800095c4:	00913423          	sd	s1,8(sp)
    800095c8:	02010413          	addi	s0,sp,32
    800095cc:	0ff7f713          	andi	a4,a5,255
    800095d0:	00900693          	li	a3,9
    800095d4:	04d70c63          	beq	a4,a3,8000962c <devintr+0x84>
    800095d8:	fff00713          	li	a4,-1
    800095dc:	03f71713          	slli	a4,a4,0x3f
    800095e0:	00170713          	addi	a4,a4,1
    800095e4:	00e78c63          	beq	a5,a4,800095fc <devintr+0x54>
    800095e8:	01813083          	ld	ra,24(sp)
    800095ec:	01013403          	ld	s0,16(sp)
    800095f0:	00813483          	ld	s1,8(sp)
    800095f4:	02010113          	addi	sp,sp,32
    800095f8:	00008067          	ret
    800095fc:	00000097          	auipc	ra,0x0
    80009600:	c8c080e7          	jalr	-884(ra) # 80009288 <cpuid>
    80009604:	06050663          	beqz	a0,80009670 <devintr+0xc8>
    80009608:	144027f3          	csrr	a5,sip
    8000960c:	ffd7f793          	andi	a5,a5,-3
    80009610:	14479073          	csrw	sip,a5
    80009614:	01813083          	ld	ra,24(sp)
    80009618:	01013403          	ld	s0,16(sp)
    8000961c:	00813483          	ld	s1,8(sp)
    80009620:	00200513          	li	a0,2
    80009624:	02010113          	addi	sp,sp,32
    80009628:	00008067          	ret
    8000962c:	00000097          	auipc	ra,0x0
    80009630:	258080e7          	jalr	600(ra) # 80009884 <plic_claim>
    80009634:	00a00793          	li	a5,10
    80009638:	00050493          	mv	s1,a0
    8000963c:	06f50663          	beq	a0,a5,800096a8 <devintr+0x100>
    80009640:	00100513          	li	a0,1
    80009644:	fa0482e3          	beqz	s1,800095e8 <devintr+0x40>
    80009648:	00048593          	mv	a1,s1
    8000964c:	00003517          	auipc	a0,0x3
    80009650:	7f450513          	addi	a0,a0,2036 # 8000ce40 <CONSOLE_STATUS+0xe30>
    80009654:	00000097          	auipc	ra,0x0
    80009658:	674080e7          	jalr	1652(ra) # 80009cc8 <__printf>
    8000965c:	00048513          	mv	a0,s1
    80009660:	00000097          	auipc	ra,0x0
    80009664:	25c080e7          	jalr	604(ra) # 800098bc <plic_complete>
    80009668:	00100513          	li	a0,1
    8000966c:	f7dff06f          	j	800095e8 <devintr+0x40>
    80009670:	00008517          	auipc	a0,0x8
    80009674:	a2050513          	addi	a0,a0,-1504 # 80011090 <tickslock>
    80009678:	00001097          	auipc	ra,0x1
    8000967c:	324080e7          	jalr	804(ra) # 8000a99c <acquire>
    80009680:	00007717          	auipc	a4,0x7
    80009684:	82470713          	addi	a4,a4,-2012 # 8000fea4 <ticks>
    80009688:	00072783          	lw	a5,0(a4)
    8000968c:	00008517          	auipc	a0,0x8
    80009690:	a0450513          	addi	a0,a0,-1532 # 80011090 <tickslock>
    80009694:	0017879b          	addiw	a5,a5,1
    80009698:	00f72023          	sw	a5,0(a4)
    8000969c:	00001097          	auipc	ra,0x1
    800096a0:	3cc080e7          	jalr	972(ra) # 8000aa68 <release>
    800096a4:	f65ff06f          	j	80009608 <devintr+0x60>
    800096a8:	00001097          	auipc	ra,0x1
    800096ac:	f28080e7          	jalr	-216(ra) # 8000a5d0 <uartintr>
    800096b0:	fadff06f          	j	8000965c <devintr+0xb4>
	...

00000000800096c0 <kernelvec>:
    800096c0:	f0010113          	addi	sp,sp,-256
    800096c4:	00113023          	sd	ra,0(sp)
    800096c8:	00213423          	sd	sp,8(sp)
    800096cc:	00313823          	sd	gp,16(sp)
    800096d0:	00413c23          	sd	tp,24(sp)
    800096d4:	02513023          	sd	t0,32(sp)
    800096d8:	02613423          	sd	t1,40(sp)
    800096dc:	02713823          	sd	t2,48(sp)
    800096e0:	02813c23          	sd	s0,56(sp)
    800096e4:	04913023          	sd	s1,64(sp)
    800096e8:	04a13423          	sd	a0,72(sp)
    800096ec:	04b13823          	sd	a1,80(sp)
    800096f0:	04c13c23          	sd	a2,88(sp)
    800096f4:	06d13023          	sd	a3,96(sp)
    800096f8:	06e13423          	sd	a4,104(sp)
    800096fc:	06f13823          	sd	a5,112(sp)
    80009700:	07013c23          	sd	a6,120(sp)
    80009704:	09113023          	sd	a7,128(sp)
    80009708:	09213423          	sd	s2,136(sp)
    8000970c:	09313823          	sd	s3,144(sp)
    80009710:	09413c23          	sd	s4,152(sp)
    80009714:	0b513023          	sd	s5,160(sp)
    80009718:	0b613423          	sd	s6,168(sp)
    8000971c:	0b713823          	sd	s7,176(sp)
    80009720:	0b813c23          	sd	s8,184(sp)
    80009724:	0d913023          	sd	s9,192(sp)
    80009728:	0da13423          	sd	s10,200(sp)
    8000972c:	0db13823          	sd	s11,208(sp)
    80009730:	0dc13c23          	sd	t3,216(sp)
    80009734:	0fd13023          	sd	t4,224(sp)
    80009738:	0fe13423          	sd	t5,232(sp)
    8000973c:	0ff13823          	sd	t6,240(sp)
    80009740:	cc9ff0ef          	jal	ra,80009408 <kerneltrap>
    80009744:	00013083          	ld	ra,0(sp)
    80009748:	00813103          	ld	sp,8(sp)
    8000974c:	01013183          	ld	gp,16(sp)
    80009750:	02013283          	ld	t0,32(sp)
    80009754:	02813303          	ld	t1,40(sp)
    80009758:	03013383          	ld	t2,48(sp)
    8000975c:	03813403          	ld	s0,56(sp)
    80009760:	04013483          	ld	s1,64(sp)
    80009764:	04813503          	ld	a0,72(sp)
    80009768:	05013583          	ld	a1,80(sp)
    8000976c:	05813603          	ld	a2,88(sp)
    80009770:	06013683          	ld	a3,96(sp)
    80009774:	06813703          	ld	a4,104(sp)
    80009778:	07013783          	ld	a5,112(sp)
    8000977c:	07813803          	ld	a6,120(sp)
    80009780:	08013883          	ld	a7,128(sp)
    80009784:	08813903          	ld	s2,136(sp)
    80009788:	09013983          	ld	s3,144(sp)
    8000978c:	09813a03          	ld	s4,152(sp)
    80009790:	0a013a83          	ld	s5,160(sp)
    80009794:	0a813b03          	ld	s6,168(sp)
    80009798:	0b013b83          	ld	s7,176(sp)
    8000979c:	0b813c03          	ld	s8,184(sp)
    800097a0:	0c013c83          	ld	s9,192(sp)
    800097a4:	0c813d03          	ld	s10,200(sp)
    800097a8:	0d013d83          	ld	s11,208(sp)
    800097ac:	0d813e03          	ld	t3,216(sp)
    800097b0:	0e013e83          	ld	t4,224(sp)
    800097b4:	0e813f03          	ld	t5,232(sp)
    800097b8:	0f013f83          	ld	t6,240(sp)
    800097bc:	10010113          	addi	sp,sp,256
    800097c0:	10200073          	sret
    800097c4:	00000013          	nop
    800097c8:	00000013          	nop
    800097cc:	00000013          	nop

00000000800097d0 <timervec>:
    800097d0:	34051573          	csrrw	a0,mscratch,a0
    800097d4:	00b53023          	sd	a1,0(a0)
    800097d8:	00c53423          	sd	a2,8(a0)
    800097dc:	00d53823          	sd	a3,16(a0)
    800097e0:	01853583          	ld	a1,24(a0)
    800097e4:	02053603          	ld	a2,32(a0)
    800097e8:	0005b683          	ld	a3,0(a1)
    800097ec:	00c686b3          	add	a3,a3,a2
    800097f0:	00d5b023          	sd	a3,0(a1)
    800097f4:	00200593          	li	a1,2
    800097f8:	14459073          	csrw	sip,a1
    800097fc:	01053683          	ld	a3,16(a0)
    80009800:	00853603          	ld	a2,8(a0)
    80009804:	00053583          	ld	a1,0(a0)
    80009808:	34051573          	csrrw	a0,mscratch,a0
    8000980c:	30200073          	mret

0000000080009810 <plicinit>:
    80009810:	ff010113          	addi	sp,sp,-16
    80009814:	00813423          	sd	s0,8(sp)
    80009818:	01010413          	addi	s0,sp,16
    8000981c:	00813403          	ld	s0,8(sp)
    80009820:	0c0007b7          	lui	a5,0xc000
    80009824:	00100713          	li	a4,1
    80009828:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000982c:	00e7a223          	sw	a4,4(a5)
    80009830:	01010113          	addi	sp,sp,16
    80009834:	00008067          	ret

0000000080009838 <plicinithart>:
    80009838:	ff010113          	addi	sp,sp,-16
    8000983c:	00813023          	sd	s0,0(sp)
    80009840:	00113423          	sd	ra,8(sp)
    80009844:	01010413          	addi	s0,sp,16
    80009848:	00000097          	auipc	ra,0x0
    8000984c:	a40080e7          	jalr	-1472(ra) # 80009288 <cpuid>
    80009850:	0085171b          	slliw	a4,a0,0x8
    80009854:	0c0027b7          	lui	a5,0xc002
    80009858:	00e787b3          	add	a5,a5,a4
    8000985c:	40200713          	li	a4,1026
    80009860:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80009864:	00813083          	ld	ra,8(sp)
    80009868:	00013403          	ld	s0,0(sp)
    8000986c:	00d5151b          	slliw	a0,a0,0xd
    80009870:	0c2017b7          	lui	a5,0xc201
    80009874:	00a78533          	add	a0,a5,a0
    80009878:	00052023          	sw	zero,0(a0)
    8000987c:	01010113          	addi	sp,sp,16
    80009880:	00008067          	ret

0000000080009884 <plic_claim>:
    80009884:	ff010113          	addi	sp,sp,-16
    80009888:	00813023          	sd	s0,0(sp)
    8000988c:	00113423          	sd	ra,8(sp)
    80009890:	01010413          	addi	s0,sp,16
    80009894:	00000097          	auipc	ra,0x0
    80009898:	9f4080e7          	jalr	-1548(ra) # 80009288 <cpuid>
    8000989c:	00813083          	ld	ra,8(sp)
    800098a0:	00013403          	ld	s0,0(sp)
    800098a4:	00d5151b          	slliw	a0,a0,0xd
    800098a8:	0c2017b7          	lui	a5,0xc201
    800098ac:	00a78533          	add	a0,a5,a0
    800098b0:	00452503          	lw	a0,4(a0)
    800098b4:	01010113          	addi	sp,sp,16
    800098b8:	00008067          	ret

00000000800098bc <plic_complete>:
    800098bc:	fe010113          	addi	sp,sp,-32
    800098c0:	00813823          	sd	s0,16(sp)
    800098c4:	00913423          	sd	s1,8(sp)
    800098c8:	00113c23          	sd	ra,24(sp)
    800098cc:	02010413          	addi	s0,sp,32
    800098d0:	00050493          	mv	s1,a0
    800098d4:	00000097          	auipc	ra,0x0
    800098d8:	9b4080e7          	jalr	-1612(ra) # 80009288 <cpuid>
    800098dc:	01813083          	ld	ra,24(sp)
    800098e0:	01013403          	ld	s0,16(sp)
    800098e4:	00d5179b          	slliw	a5,a0,0xd
    800098e8:	0c201737          	lui	a4,0xc201
    800098ec:	00f707b3          	add	a5,a4,a5
    800098f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800098f4:	00813483          	ld	s1,8(sp)
    800098f8:	02010113          	addi	sp,sp,32
    800098fc:	00008067          	ret

0000000080009900 <consolewrite>:
    80009900:	fb010113          	addi	sp,sp,-80
    80009904:	04813023          	sd	s0,64(sp)
    80009908:	04113423          	sd	ra,72(sp)
    8000990c:	02913c23          	sd	s1,56(sp)
    80009910:	03213823          	sd	s2,48(sp)
    80009914:	03313423          	sd	s3,40(sp)
    80009918:	03413023          	sd	s4,32(sp)
    8000991c:	01513c23          	sd	s5,24(sp)
    80009920:	05010413          	addi	s0,sp,80
    80009924:	06c05c63          	blez	a2,8000999c <consolewrite+0x9c>
    80009928:	00060993          	mv	s3,a2
    8000992c:	00050a13          	mv	s4,a0
    80009930:	00058493          	mv	s1,a1
    80009934:	00000913          	li	s2,0
    80009938:	fff00a93          	li	s5,-1
    8000993c:	01c0006f          	j	80009958 <consolewrite+0x58>
    80009940:	fbf44503          	lbu	a0,-65(s0)
    80009944:	0019091b          	addiw	s2,s2,1
    80009948:	00148493          	addi	s1,s1,1
    8000994c:	00001097          	auipc	ra,0x1
    80009950:	a9c080e7          	jalr	-1380(ra) # 8000a3e8 <uartputc>
    80009954:	03298063          	beq	s3,s2,80009974 <consolewrite+0x74>
    80009958:	00048613          	mv	a2,s1
    8000995c:	00100693          	li	a3,1
    80009960:	000a0593          	mv	a1,s4
    80009964:	fbf40513          	addi	a0,s0,-65
    80009968:	00000097          	auipc	ra,0x0
    8000996c:	9d8080e7          	jalr	-1576(ra) # 80009340 <either_copyin>
    80009970:	fd5518e3          	bne	a0,s5,80009940 <consolewrite+0x40>
    80009974:	04813083          	ld	ra,72(sp)
    80009978:	04013403          	ld	s0,64(sp)
    8000997c:	03813483          	ld	s1,56(sp)
    80009980:	02813983          	ld	s3,40(sp)
    80009984:	02013a03          	ld	s4,32(sp)
    80009988:	01813a83          	ld	s5,24(sp)
    8000998c:	00090513          	mv	a0,s2
    80009990:	03013903          	ld	s2,48(sp)
    80009994:	05010113          	addi	sp,sp,80
    80009998:	00008067          	ret
    8000999c:	00000913          	li	s2,0
    800099a0:	fd5ff06f          	j	80009974 <consolewrite+0x74>

00000000800099a4 <consoleread>:
    800099a4:	f9010113          	addi	sp,sp,-112
    800099a8:	06813023          	sd	s0,96(sp)
    800099ac:	04913c23          	sd	s1,88(sp)
    800099b0:	05213823          	sd	s2,80(sp)
    800099b4:	05313423          	sd	s3,72(sp)
    800099b8:	05413023          	sd	s4,64(sp)
    800099bc:	03513c23          	sd	s5,56(sp)
    800099c0:	03613823          	sd	s6,48(sp)
    800099c4:	03713423          	sd	s7,40(sp)
    800099c8:	03813023          	sd	s8,32(sp)
    800099cc:	06113423          	sd	ra,104(sp)
    800099d0:	01913c23          	sd	s9,24(sp)
    800099d4:	07010413          	addi	s0,sp,112
    800099d8:	00060b93          	mv	s7,a2
    800099dc:	00050913          	mv	s2,a0
    800099e0:	00058c13          	mv	s8,a1
    800099e4:	00060b1b          	sext.w	s6,a2
    800099e8:	00007497          	auipc	s1,0x7
    800099ec:	6d048493          	addi	s1,s1,1744 # 800110b8 <cons>
    800099f0:	00400993          	li	s3,4
    800099f4:	fff00a13          	li	s4,-1
    800099f8:	00a00a93          	li	s5,10
    800099fc:	05705e63          	blez	s7,80009a58 <consoleread+0xb4>
    80009a00:	09c4a703          	lw	a4,156(s1)
    80009a04:	0984a783          	lw	a5,152(s1)
    80009a08:	0007071b          	sext.w	a4,a4
    80009a0c:	08e78463          	beq	a5,a4,80009a94 <consoleread+0xf0>
    80009a10:	07f7f713          	andi	a4,a5,127
    80009a14:	00e48733          	add	a4,s1,a4
    80009a18:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80009a1c:	0017869b          	addiw	a3,a5,1
    80009a20:	08d4ac23          	sw	a3,152(s1)
    80009a24:	00070c9b          	sext.w	s9,a4
    80009a28:	0b370663          	beq	a4,s3,80009ad4 <consoleread+0x130>
    80009a2c:	00100693          	li	a3,1
    80009a30:	f9f40613          	addi	a2,s0,-97
    80009a34:	000c0593          	mv	a1,s8
    80009a38:	00090513          	mv	a0,s2
    80009a3c:	f8e40fa3          	sb	a4,-97(s0)
    80009a40:	00000097          	auipc	ra,0x0
    80009a44:	8b4080e7          	jalr	-1868(ra) # 800092f4 <either_copyout>
    80009a48:	01450863          	beq	a0,s4,80009a58 <consoleread+0xb4>
    80009a4c:	001c0c13          	addi	s8,s8,1
    80009a50:	fffb8b9b          	addiw	s7,s7,-1
    80009a54:	fb5c94e3          	bne	s9,s5,800099fc <consoleread+0x58>
    80009a58:	000b851b          	sext.w	a0,s7
    80009a5c:	06813083          	ld	ra,104(sp)
    80009a60:	06013403          	ld	s0,96(sp)
    80009a64:	05813483          	ld	s1,88(sp)
    80009a68:	05013903          	ld	s2,80(sp)
    80009a6c:	04813983          	ld	s3,72(sp)
    80009a70:	04013a03          	ld	s4,64(sp)
    80009a74:	03813a83          	ld	s5,56(sp)
    80009a78:	02813b83          	ld	s7,40(sp)
    80009a7c:	02013c03          	ld	s8,32(sp)
    80009a80:	01813c83          	ld	s9,24(sp)
    80009a84:	40ab053b          	subw	a0,s6,a0
    80009a88:	03013b03          	ld	s6,48(sp)
    80009a8c:	07010113          	addi	sp,sp,112
    80009a90:	00008067          	ret
    80009a94:	00001097          	auipc	ra,0x1
    80009a98:	1d8080e7          	jalr	472(ra) # 8000ac6c <push_on>
    80009a9c:	0984a703          	lw	a4,152(s1)
    80009aa0:	09c4a783          	lw	a5,156(s1)
    80009aa4:	0007879b          	sext.w	a5,a5
    80009aa8:	fef70ce3          	beq	a4,a5,80009aa0 <consoleread+0xfc>
    80009aac:	00001097          	auipc	ra,0x1
    80009ab0:	234080e7          	jalr	564(ra) # 8000ace0 <pop_on>
    80009ab4:	0984a783          	lw	a5,152(s1)
    80009ab8:	07f7f713          	andi	a4,a5,127
    80009abc:	00e48733          	add	a4,s1,a4
    80009ac0:	01874703          	lbu	a4,24(a4)
    80009ac4:	0017869b          	addiw	a3,a5,1
    80009ac8:	08d4ac23          	sw	a3,152(s1)
    80009acc:	00070c9b          	sext.w	s9,a4
    80009ad0:	f5371ee3          	bne	a4,s3,80009a2c <consoleread+0x88>
    80009ad4:	000b851b          	sext.w	a0,s7
    80009ad8:	f96bf2e3          	bgeu	s7,s6,80009a5c <consoleread+0xb8>
    80009adc:	08f4ac23          	sw	a5,152(s1)
    80009ae0:	f7dff06f          	j	80009a5c <consoleread+0xb8>

0000000080009ae4 <consputc>:
    80009ae4:	10000793          	li	a5,256
    80009ae8:	00f50663          	beq	a0,a5,80009af4 <consputc+0x10>
    80009aec:	00001317          	auipc	t1,0x1
    80009af0:	9f430067          	jr	-1548(t1) # 8000a4e0 <uartputc_sync>
    80009af4:	ff010113          	addi	sp,sp,-16
    80009af8:	00113423          	sd	ra,8(sp)
    80009afc:	00813023          	sd	s0,0(sp)
    80009b00:	01010413          	addi	s0,sp,16
    80009b04:	00800513          	li	a0,8
    80009b08:	00001097          	auipc	ra,0x1
    80009b0c:	9d8080e7          	jalr	-1576(ra) # 8000a4e0 <uartputc_sync>
    80009b10:	02000513          	li	a0,32
    80009b14:	00001097          	auipc	ra,0x1
    80009b18:	9cc080e7          	jalr	-1588(ra) # 8000a4e0 <uartputc_sync>
    80009b1c:	00013403          	ld	s0,0(sp)
    80009b20:	00813083          	ld	ra,8(sp)
    80009b24:	00800513          	li	a0,8
    80009b28:	01010113          	addi	sp,sp,16
    80009b2c:	00001317          	auipc	t1,0x1
    80009b30:	9b430067          	jr	-1612(t1) # 8000a4e0 <uartputc_sync>

0000000080009b34 <consoleintr>:
    80009b34:	fe010113          	addi	sp,sp,-32
    80009b38:	00813823          	sd	s0,16(sp)
    80009b3c:	00913423          	sd	s1,8(sp)
    80009b40:	01213023          	sd	s2,0(sp)
    80009b44:	00113c23          	sd	ra,24(sp)
    80009b48:	02010413          	addi	s0,sp,32
    80009b4c:	00007917          	auipc	s2,0x7
    80009b50:	56c90913          	addi	s2,s2,1388 # 800110b8 <cons>
    80009b54:	00050493          	mv	s1,a0
    80009b58:	00090513          	mv	a0,s2
    80009b5c:	00001097          	auipc	ra,0x1
    80009b60:	e40080e7          	jalr	-448(ra) # 8000a99c <acquire>
    80009b64:	02048c63          	beqz	s1,80009b9c <consoleintr+0x68>
    80009b68:	0a092783          	lw	a5,160(s2)
    80009b6c:	09892703          	lw	a4,152(s2)
    80009b70:	07f00693          	li	a3,127
    80009b74:	40e7873b          	subw	a4,a5,a4
    80009b78:	02e6e263          	bltu	a3,a4,80009b9c <consoleintr+0x68>
    80009b7c:	00d00713          	li	a4,13
    80009b80:	04e48063          	beq	s1,a4,80009bc0 <consoleintr+0x8c>
    80009b84:	07f7f713          	andi	a4,a5,127
    80009b88:	00e90733          	add	a4,s2,a4
    80009b8c:	0017879b          	addiw	a5,a5,1
    80009b90:	0af92023          	sw	a5,160(s2)
    80009b94:	00970c23          	sb	s1,24(a4)
    80009b98:	08f92e23          	sw	a5,156(s2)
    80009b9c:	01013403          	ld	s0,16(sp)
    80009ba0:	01813083          	ld	ra,24(sp)
    80009ba4:	00813483          	ld	s1,8(sp)
    80009ba8:	00013903          	ld	s2,0(sp)
    80009bac:	00007517          	auipc	a0,0x7
    80009bb0:	50c50513          	addi	a0,a0,1292 # 800110b8 <cons>
    80009bb4:	02010113          	addi	sp,sp,32
    80009bb8:	00001317          	auipc	t1,0x1
    80009bbc:	eb030067          	jr	-336(t1) # 8000aa68 <release>
    80009bc0:	00a00493          	li	s1,10
    80009bc4:	fc1ff06f          	j	80009b84 <consoleintr+0x50>

0000000080009bc8 <consoleinit>:
    80009bc8:	fe010113          	addi	sp,sp,-32
    80009bcc:	00113c23          	sd	ra,24(sp)
    80009bd0:	00813823          	sd	s0,16(sp)
    80009bd4:	00913423          	sd	s1,8(sp)
    80009bd8:	02010413          	addi	s0,sp,32
    80009bdc:	00007497          	auipc	s1,0x7
    80009be0:	4dc48493          	addi	s1,s1,1244 # 800110b8 <cons>
    80009be4:	00048513          	mv	a0,s1
    80009be8:	00003597          	auipc	a1,0x3
    80009bec:	2b058593          	addi	a1,a1,688 # 8000ce98 <CONSOLE_STATUS+0xe88>
    80009bf0:	00001097          	auipc	ra,0x1
    80009bf4:	d88080e7          	jalr	-632(ra) # 8000a978 <initlock>
    80009bf8:	00000097          	auipc	ra,0x0
    80009bfc:	7ac080e7          	jalr	1964(ra) # 8000a3a4 <uartinit>
    80009c00:	01813083          	ld	ra,24(sp)
    80009c04:	01013403          	ld	s0,16(sp)
    80009c08:	00000797          	auipc	a5,0x0
    80009c0c:	d9c78793          	addi	a5,a5,-612 # 800099a4 <consoleread>
    80009c10:	0af4bc23          	sd	a5,184(s1)
    80009c14:	00000797          	auipc	a5,0x0
    80009c18:	cec78793          	addi	a5,a5,-788 # 80009900 <consolewrite>
    80009c1c:	0cf4b023          	sd	a5,192(s1)
    80009c20:	00813483          	ld	s1,8(sp)
    80009c24:	02010113          	addi	sp,sp,32
    80009c28:	00008067          	ret

0000000080009c2c <console_read>:
    80009c2c:	ff010113          	addi	sp,sp,-16
    80009c30:	00813423          	sd	s0,8(sp)
    80009c34:	01010413          	addi	s0,sp,16
    80009c38:	00813403          	ld	s0,8(sp)
    80009c3c:	00007317          	auipc	t1,0x7
    80009c40:	53433303          	ld	t1,1332(t1) # 80011170 <devsw+0x10>
    80009c44:	01010113          	addi	sp,sp,16
    80009c48:	00030067          	jr	t1

0000000080009c4c <console_write>:
    80009c4c:	ff010113          	addi	sp,sp,-16
    80009c50:	00813423          	sd	s0,8(sp)
    80009c54:	01010413          	addi	s0,sp,16
    80009c58:	00813403          	ld	s0,8(sp)
    80009c5c:	00007317          	auipc	t1,0x7
    80009c60:	51c33303          	ld	t1,1308(t1) # 80011178 <devsw+0x18>
    80009c64:	01010113          	addi	sp,sp,16
    80009c68:	00030067          	jr	t1

0000000080009c6c <panic>:
    80009c6c:	fe010113          	addi	sp,sp,-32
    80009c70:	00113c23          	sd	ra,24(sp)
    80009c74:	00813823          	sd	s0,16(sp)
    80009c78:	00913423          	sd	s1,8(sp)
    80009c7c:	02010413          	addi	s0,sp,32
    80009c80:	00050493          	mv	s1,a0
    80009c84:	00003517          	auipc	a0,0x3
    80009c88:	21c50513          	addi	a0,a0,540 # 8000cea0 <CONSOLE_STATUS+0xe90>
    80009c8c:	00007797          	auipc	a5,0x7
    80009c90:	5807a623          	sw	zero,1420(a5) # 80011218 <pr+0x18>
    80009c94:	00000097          	auipc	ra,0x0
    80009c98:	034080e7          	jalr	52(ra) # 80009cc8 <__printf>
    80009c9c:	00048513          	mv	a0,s1
    80009ca0:	00000097          	auipc	ra,0x0
    80009ca4:	028080e7          	jalr	40(ra) # 80009cc8 <__printf>
    80009ca8:	00003517          	auipc	a0,0x3
    80009cac:	a4050513          	addi	a0,a0,-1472 # 8000c6e8 <CONSOLE_STATUS+0x6d8>
    80009cb0:	00000097          	auipc	ra,0x0
    80009cb4:	018080e7          	jalr	24(ra) # 80009cc8 <__printf>
    80009cb8:	00100793          	li	a5,1
    80009cbc:	00006717          	auipc	a4,0x6
    80009cc0:	1ef72623          	sw	a5,492(a4) # 8000fea8 <panicked>
    80009cc4:	0000006f          	j	80009cc4 <panic+0x58>

0000000080009cc8 <__printf>:
    80009cc8:	f3010113          	addi	sp,sp,-208
    80009ccc:	08813023          	sd	s0,128(sp)
    80009cd0:	07313423          	sd	s3,104(sp)
    80009cd4:	09010413          	addi	s0,sp,144
    80009cd8:	05813023          	sd	s8,64(sp)
    80009cdc:	08113423          	sd	ra,136(sp)
    80009ce0:	06913c23          	sd	s1,120(sp)
    80009ce4:	07213823          	sd	s2,112(sp)
    80009ce8:	07413023          	sd	s4,96(sp)
    80009cec:	05513c23          	sd	s5,88(sp)
    80009cf0:	05613823          	sd	s6,80(sp)
    80009cf4:	05713423          	sd	s7,72(sp)
    80009cf8:	03913c23          	sd	s9,56(sp)
    80009cfc:	03a13823          	sd	s10,48(sp)
    80009d00:	03b13423          	sd	s11,40(sp)
    80009d04:	00007317          	auipc	t1,0x7
    80009d08:	4fc30313          	addi	t1,t1,1276 # 80011200 <pr>
    80009d0c:	01832c03          	lw	s8,24(t1)
    80009d10:	00b43423          	sd	a1,8(s0)
    80009d14:	00c43823          	sd	a2,16(s0)
    80009d18:	00d43c23          	sd	a3,24(s0)
    80009d1c:	02e43023          	sd	a4,32(s0)
    80009d20:	02f43423          	sd	a5,40(s0)
    80009d24:	03043823          	sd	a6,48(s0)
    80009d28:	03143c23          	sd	a7,56(s0)
    80009d2c:	00050993          	mv	s3,a0
    80009d30:	4a0c1663          	bnez	s8,8000a1dc <__printf+0x514>
    80009d34:	60098c63          	beqz	s3,8000a34c <__printf+0x684>
    80009d38:	0009c503          	lbu	a0,0(s3)
    80009d3c:	00840793          	addi	a5,s0,8
    80009d40:	f6f43c23          	sd	a5,-136(s0)
    80009d44:	00000493          	li	s1,0
    80009d48:	22050063          	beqz	a0,80009f68 <__printf+0x2a0>
    80009d4c:	00002a37          	lui	s4,0x2
    80009d50:	00018ab7          	lui	s5,0x18
    80009d54:	000f4b37          	lui	s6,0xf4
    80009d58:	00989bb7          	lui	s7,0x989
    80009d5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80009d60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80009d64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80009d68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80009d6c:	00148c9b          	addiw	s9,s1,1
    80009d70:	02500793          	li	a5,37
    80009d74:	01998933          	add	s2,s3,s9
    80009d78:	38f51263          	bne	a0,a5,8000a0fc <__printf+0x434>
    80009d7c:	00094783          	lbu	a5,0(s2)
    80009d80:	00078c9b          	sext.w	s9,a5
    80009d84:	1e078263          	beqz	a5,80009f68 <__printf+0x2a0>
    80009d88:	0024849b          	addiw	s1,s1,2
    80009d8c:	07000713          	li	a4,112
    80009d90:	00998933          	add	s2,s3,s1
    80009d94:	38e78a63          	beq	a5,a4,8000a128 <__printf+0x460>
    80009d98:	20f76863          	bltu	a4,a5,80009fa8 <__printf+0x2e0>
    80009d9c:	42a78863          	beq	a5,a0,8000a1cc <__printf+0x504>
    80009da0:	06400713          	li	a4,100
    80009da4:	40e79663          	bne	a5,a4,8000a1b0 <__printf+0x4e8>
    80009da8:	f7843783          	ld	a5,-136(s0)
    80009dac:	0007a603          	lw	a2,0(a5)
    80009db0:	00878793          	addi	a5,a5,8
    80009db4:	f6f43c23          	sd	a5,-136(s0)
    80009db8:	42064a63          	bltz	a2,8000a1ec <__printf+0x524>
    80009dbc:	00a00713          	li	a4,10
    80009dc0:	02e677bb          	remuw	a5,a2,a4
    80009dc4:	00003d97          	auipc	s11,0x3
    80009dc8:	104d8d93          	addi	s11,s11,260 # 8000cec8 <digits>
    80009dcc:	00900593          	li	a1,9
    80009dd0:	0006051b          	sext.w	a0,a2
    80009dd4:	00000c93          	li	s9,0
    80009dd8:	02079793          	slli	a5,a5,0x20
    80009ddc:	0207d793          	srli	a5,a5,0x20
    80009de0:	00fd87b3          	add	a5,s11,a5
    80009de4:	0007c783          	lbu	a5,0(a5)
    80009de8:	02e656bb          	divuw	a3,a2,a4
    80009dec:	f8f40023          	sb	a5,-128(s0)
    80009df0:	14c5d863          	bge	a1,a2,80009f40 <__printf+0x278>
    80009df4:	06300593          	li	a1,99
    80009df8:	00100c93          	li	s9,1
    80009dfc:	02e6f7bb          	remuw	a5,a3,a4
    80009e00:	02079793          	slli	a5,a5,0x20
    80009e04:	0207d793          	srli	a5,a5,0x20
    80009e08:	00fd87b3          	add	a5,s11,a5
    80009e0c:	0007c783          	lbu	a5,0(a5)
    80009e10:	02e6d73b          	divuw	a4,a3,a4
    80009e14:	f8f400a3          	sb	a5,-127(s0)
    80009e18:	12a5f463          	bgeu	a1,a0,80009f40 <__printf+0x278>
    80009e1c:	00a00693          	li	a3,10
    80009e20:	00900593          	li	a1,9
    80009e24:	02d777bb          	remuw	a5,a4,a3
    80009e28:	02079793          	slli	a5,a5,0x20
    80009e2c:	0207d793          	srli	a5,a5,0x20
    80009e30:	00fd87b3          	add	a5,s11,a5
    80009e34:	0007c503          	lbu	a0,0(a5)
    80009e38:	02d757bb          	divuw	a5,a4,a3
    80009e3c:	f8a40123          	sb	a0,-126(s0)
    80009e40:	48e5f263          	bgeu	a1,a4,8000a2c4 <__printf+0x5fc>
    80009e44:	06300513          	li	a0,99
    80009e48:	02d7f5bb          	remuw	a1,a5,a3
    80009e4c:	02059593          	slli	a1,a1,0x20
    80009e50:	0205d593          	srli	a1,a1,0x20
    80009e54:	00bd85b3          	add	a1,s11,a1
    80009e58:	0005c583          	lbu	a1,0(a1)
    80009e5c:	02d7d7bb          	divuw	a5,a5,a3
    80009e60:	f8b401a3          	sb	a1,-125(s0)
    80009e64:	48e57263          	bgeu	a0,a4,8000a2e8 <__printf+0x620>
    80009e68:	3e700513          	li	a0,999
    80009e6c:	02d7f5bb          	remuw	a1,a5,a3
    80009e70:	02059593          	slli	a1,a1,0x20
    80009e74:	0205d593          	srli	a1,a1,0x20
    80009e78:	00bd85b3          	add	a1,s11,a1
    80009e7c:	0005c583          	lbu	a1,0(a1)
    80009e80:	02d7d7bb          	divuw	a5,a5,a3
    80009e84:	f8b40223          	sb	a1,-124(s0)
    80009e88:	46e57663          	bgeu	a0,a4,8000a2f4 <__printf+0x62c>
    80009e8c:	02d7f5bb          	remuw	a1,a5,a3
    80009e90:	02059593          	slli	a1,a1,0x20
    80009e94:	0205d593          	srli	a1,a1,0x20
    80009e98:	00bd85b3          	add	a1,s11,a1
    80009e9c:	0005c583          	lbu	a1,0(a1)
    80009ea0:	02d7d7bb          	divuw	a5,a5,a3
    80009ea4:	f8b402a3          	sb	a1,-123(s0)
    80009ea8:	46ea7863          	bgeu	s4,a4,8000a318 <__printf+0x650>
    80009eac:	02d7f5bb          	remuw	a1,a5,a3
    80009eb0:	02059593          	slli	a1,a1,0x20
    80009eb4:	0205d593          	srli	a1,a1,0x20
    80009eb8:	00bd85b3          	add	a1,s11,a1
    80009ebc:	0005c583          	lbu	a1,0(a1)
    80009ec0:	02d7d7bb          	divuw	a5,a5,a3
    80009ec4:	f8b40323          	sb	a1,-122(s0)
    80009ec8:	3eeaf863          	bgeu	s5,a4,8000a2b8 <__printf+0x5f0>
    80009ecc:	02d7f5bb          	remuw	a1,a5,a3
    80009ed0:	02059593          	slli	a1,a1,0x20
    80009ed4:	0205d593          	srli	a1,a1,0x20
    80009ed8:	00bd85b3          	add	a1,s11,a1
    80009edc:	0005c583          	lbu	a1,0(a1)
    80009ee0:	02d7d7bb          	divuw	a5,a5,a3
    80009ee4:	f8b403a3          	sb	a1,-121(s0)
    80009ee8:	42eb7e63          	bgeu	s6,a4,8000a324 <__printf+0x65c>
    80009eec:	02d7f5bb          	remuw	a1,a5,a3
    80009ef0:	02059593          	slli	a1,a1,0x20
    80009ef4:	0205d593          	srli	a1,a1,0x20
    80009ef8:	00bd85b3          	add	a1,s11,a1
    80009efc:	0005c583          	lbu	a1,0(a1)
    80009f00:	02d7d7bb          	divuw	a5,a5,a3
    80009f04:	f8b40423          	sb	a1,-120(s0)
    80009f08:	42ebfc63          	bgeu	s7,a4,8000a340 <__printf+0x678>
    80009f0c:	02079793          	slli	a5,a5,0x20
    80009f10:	0207d793          	srli	a5,a5,0x20
    80009f14:	00fd8db3          	add	s11,s11,a5
    80009f18:	000dc703          	lbu	a4,0(s11)
    80009f1c:	00a00793          	li	a5,10
    80009f20:	00900c93          	li	s9,9
    80009f24:	f8e404a3          	sb	a4,-119(s0)
    80009f28:	00065c63          	bgez	a2,80009f40 <__printf+0x278>
    80009f2c:	f9040713          	addi	a4,s0,-112
    80009f30:	00f70733          	add	a4,a4,a5
    80009f34:	02d00693          	li	a3,45
    80009f38:	fed70823          	sb	a3,-16(a4)
    80009f3c:	00078c93          	mv	s9,a5
    80009f40:	f8040793          	addi	a5,s0,-128
    80009f44:	01978cb3          	add	s9,a5,s9
    80009f48:	f7f40d13          	addi	s10,s0,-129
    80009f4c:	000cc503          	lbu	a0,0(s9)
    80009f50:	fffc8c93          	addi	s9,s9,-1
    80009f54:	00000097          	auipc	ra,0x0
    80009f58:	b90080e7          	jalr	-1136(ra) # 80009ae4 <consputc>
    80009f5c:	ffac98e3          	bne	s9,s10,80009f4c <__printf+0x284>
    80009f60:	00094503          	lbu	a0,0(s2)
    80009f64:	e00514e3          	bnez	a0,80009d6c <__printf+0xa4>
    80009f68:	1a0c1663          	bnez	s8,8000a114 <__printf+0x44c>
    80009f6c:	08813083          	ld	ra,136(sp)
    80009f70:	08013403          	ld	s0,128(sp)
    80009f74:	07813483          	ld	s1,120(sp)
    80009f78:	07013903          	ld	s2,112(sp)
    80009f7c:	06813983          	ld	s3,104(sp)
    80009f80:	06013a03          	ld	s4,96(sp)
    80009f84:	05813a83          	ld	s5,88(sp)
    80009f88:	05013b03          	ld	s6,80(sp)
    80009f8c:	04813b83          	ld	s7,72(sp)
    80009f90:	04013c03          	ld	s8,64(sp)
    80009f94:	03813c83          	ld	s9,56(sp)
    80009f98:	03013d03          	ld	s10,48(sp)
    80009f9c:	02813d83          	ld	s11,40(sp)
    80009fa0:	0d010113          	addi	sp,sp,208
    80009fa4:	00008067          	ret
    80009fa8:	07300713          	li	a4,115
    80009fac:	1ce78a63          	beq	a5,a4,8000a180 <__printf+0x4b8>
    80009fb0:	07800713          	li	a4,120
    80009fb4:	1ee79e63          	bne	a5,a4,8000a1b0 <__printf+0x4e8>
    80009fb8:	f7843783          	ld	a5,-136(s0)
    80009fbc:	0007a703          	lw	a4,0(a5)
    80009fc0:	00878793          	addi	a5,a5,8
    80009fc4:	f6f43c23          	sd	a5,-136(s0)
    80009fc8:	28074263          	bltz	a4,8000a24c <__printf+0x584>
    80009fcc:	00003d97          	auipc	s11,0x3
    80009fd0:	efcd8d93          	addi	s11,s11,-260 # 8000cec8 <digits>
    80009fd4:	00f77793          	andi	a5,a4,15
    80009fd8:	00fd87b3          	add	a5,s11,a5
    80009fdc:	0007c683          	lbu	a3,0(a5)
    80009fe0:	00f00613          	li	a2,15
    80009fe4:	0007079b          	sext.w	a5,a4
    80009fe8:	f8d40023          	sb	a3,-128(s0)
    80009fec:	0047559b          	srliw	a1,a4,0x4
    80009ff0:	0047569b          	srliw	a3,a4,0x4
    80009ff4:	00000c93          	li	s9,0
    80009ff8:	0ee65063          	bge	a2,a4,8000a0d8 <__printf+0x410>
    80009ffc:	00f6f693          	andi	a3,a3,15
    8000a000:	00dd86b3          	add	a3,s11,a3
    8000a004:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    8000a008:	0087d79b          	srliw	a5,a5,0x8
    8000a00c:	00100c93          	li	s9,1
    8000a010:	f8d400a3          	sb	a3,-127(s0)
    8000a014:	0cb67263          	bgeu	a2,a1,8000a0d8 <__printf+0x410>
    8000a018:	00f7f693          	andi	a3,a5,15
    8000a01c:	00dd86b3          	add	a3,s11,a3
    8000a020:	0006c583          	lbu	a1,0(a3)
    8000a024:	00f00613          	li	a2,15
    8000a028:	0047d69b          	srliw	a3,a5,0x4
    8000a02c:	f8b40123          	sb	a1,-126(s0)
    8000a030:	0047d593          	srli	a1,a5,0x4
    8000a034:	28f67e63          	bgeu	a2,a5,8000a2d0 <__printf+0x608>
    8000a038:	00f6f693          	andi	a3,a3,15
    8000a03c:	00dd86b3          	add	a3,s11,a3
    8000a040:	0006c503          	lbu	a0,0(a3)
    8000a044:	0087d813          	srli	a6,a5,0x8
    8000a048:	0087d69b          	srliw	a3,a5,0x8
    8000a04c:	f8a401a3          	sb	a0,-125(s0)
    8000a050:	28b67663          	bgeu	a2,a1,8000a2dc <__printf+0x614>
    8000a054:	00f6f693          	andi	a3,a3,15
    8000a058:	00dd86b3          	add	a3,s11,a3
    8000a05c:	0006c583          	lbu	a1,0(a3)
    8000a060:	00c7d513          	srli	a0,a5,0xc
    8000a064:	00c7d69b          	srliw	a3,a5,0xc
    8000a068:	f8b40223          	sb	a1,-124(s0)
    8000a06c:	29067a63          	bgeu	a2,a6,8000a300 <__printf+0x638>
    8000a070:	00f6f693          	andi	a3,a3,15
    8000a074:	00dd86b3          	add	a3,s11,a3
    8000a078:	0006c583          	lbu	a1,0(a3)
    8000a07c:	0107d813          	srli	a6,a5,0x10
    8000a080:	0107d69b          	srliw	a3,a5,0x10
    8000a084:	f8b402a3          	sb	a1,-123(s0)
    8000a088:	28a67263          	bgeu	a2,a0,8000a30c <__printf+0x644>
    8000a08c:	00f6f693          	andi	a3,a3,15
    8000a090:	00dd86b3          	add	a3,s11,a3
    8000a094:	0006c683          	lbu	a3,0(a3)
    8000a098:	0147d79b          	srliw	a5,a5,0x14
    8000a09c:	f8d40323          	sb	a3,-122(s0)
    8000a0a0:	21067663          	bgeu	a2,a6,8000a2ac <__printf+0x5e4>
    8000a0a4:	02079793          	slli	a5,a5,0x20
    8000a0a8:	0207d793          	srli	a5,a5,0x20
    8000a0ac:	00fd8db3          	add	s11,s11,a5
    8000a0b0:	000dc683          	lbu	a3,0(s11)
    8000a0b4:	00800793          	li	a5,8
    8000a0b8:	00700c93          	li	s9,7
    8000a0bc:	f8d403a3          	sb	a3,-121(s0)
    8000a0c0:	00075c63          	bgez	a4,8000a0d8 <__printf+0x410>
    8000a0c4:	f9040713          	addi	a4,s0,-112
    8000a0c8:	00f70733          	add	a4,a4,a5
    8000a0cc:	02d00693          	li	a3,45
    8000a0d0:	fed70823          	sb	a3,-16(a4)
    8000a0d4:	00078c93          	mv	s9,a5
    8000a0d8:	f8040793          	addi	a5,s0,-128
    8000a0dc:	01978cb3          	add	s9,a5,s9
    8000a0e0:	f7f40d13          	addi	s10,s0,-129
    8000a0e4:	000cc503          	lbu	a0,0(s9)
    8000a0e8:	fffc8c93          	addi	s9,s9,-1
    8000a0ec:	00000097          	auipc	ra,0x0
    8000a0f0:	9f8080e7          	jalr	-1544(ra) # 80009ae4 <consputc>
    8000a0f4:	ff9d18e3          	bne	s10,s9,8000a0e4 <__printf+0x41c>
    8000a0f8:	0100006f          	j	8000a108 <__printf+0x440>
    8000a0fc:	00000097          	auipc	ra,0x0
    8000a100:	9e8080e7          	jalr	-1560(ra) # 80009ae4 <consputc>
    8000a104:	000c8493          	mv	s1,s9
    8000a108:	00094503          	lbu	a0,0(s2)
    8000a10c:	c60510e3          	bnez	a0,80009d6c <__printf+0xa4>
    8000a110:	e40c0ee3          	beqz	s8,80009f6c <__printf+0x2a4>
    8000a114:	00007517          	auipc	a0,0x7
    8000a118:	0ec50513          	addi	a0,a0,236 # 80011200 <pr>
    8000a11c:	00001097          	auipc	ra,0x1
    8000a120:	94c080e7          	jalr	-1716(ra) # 8000aa68 <release>
    8000a124:	e49ff06f          	j	80009f6c <__printf+0x2a4>
    8000a128:	f7843783          	ld	a5,-136(s0)
    8000a12c:	03000513          	li	a0,48
    8000a130:	01000d13          	li	s10,16
    8000a134:	00878713          	addi	a4,a5,8
    8000a138:	0007bc83          	ld	s9,0(a5)
    8000a13c:	f6e43c23          	sd	a4,-136(s0)
    8000a140:	00000097          	auipc	ra,0x0
    8000a144:	9a4080e7          	jalr	-1628(ra) # 80009ae4 <consputc>
    8000a148:	07800513          	li	a0,120
    8000a14c:	00000097          	auipc	ra,0x0
    8000a150:	998080e7          	jalr	-1640(ra) # 80009ae4 <consputc>
    8000a154:	00003d97          	auipc	s11,0x3
    8000a158:	d74d8d93          	addi	s11,s11,-652 # 8000cec8 <digits>
    8000a15c:	03ccd793          	srli	a5,s9,0x3c
    8000a160:	00fd87b3          	add	a5,s11,a5
    8000a164:	0007c503          	lbu	a0,0(a5)
    8000a168:	fffd0d1b          	addiw	s10,s10,-1
    8000a16c:	004c9c93          	slli	s9,s9,0x4
    8000a170:	00000097          	auipc	ra,0x0
    8000a174:	974080e7          	jalr	-1676(ra) # 80009ae4 <consputc>
    8000a178:	fe0d12e3          	bnez	s10,8000a15c <__printf+0x494>
    8000a17c:	f8dff06f          	j	8000a108 <__printf+0x440>
    8000a180:	f7843783          	ld	a5,-136(s0)
    8000a184:	0007bc83          	ld	s9,0(a5)
    8000a188:	00878793          	addi	a5,a5,8
    8000a18c:	f6f43c23          	sd	a5,-136(s0)
    8000a190:	000c9a63          	bnez	s9,8000a1a4 <__printf+0x4dc>
    8000a194:	1080006f          	j	8000a29c <__printf+0x5d4>
    8000a198:	001c8c93          	addi	s9,s9,1
    8000a19c:	00000097          	auipc	ra,0x0
    8000a1a0:	948080e7          	jalr	-1720(ra) # 80009ae4 <consputc>
    8000a1a4:	000cc503          	lbu	a0,0(s9)
    8000a1a8:	fe0518e3          	bnez	a0,8000a198 <__printf+0x4d0>
    8000a1ac:	f5dff06f          	j	8000a108 <__printf+0x440>
    8000a1b0:	02500513          	li	a0,37
    8000a1b4:	00000097          	auipc	ra,0x0
    8000a1b8:	930080e7          	jalr	-1744(ra) # 80009ae4 <consputc>
    8000a1bc:	000c8513          	mv	a0,s9
    8000a1c0:	00000097          	auipc	ra,0x0
    8000a1c4:	924080e7          	jalr	-1756(ra) # 80009ae4 <consputc>
    8000a1c8:	f41ff06f          	j	8000a108 <__printf+0x440>
    8000a1cc:	02500513          	li	a0,37
    8000a1d0:	00000097          	auipc	ra,0x0
    8000a1d4:	914080e7          	jalr	-1772(ra) # 80009ae4 <consputc>
    8000a1d8:	f31ff06f          	j	8000a108 <__printf+0x440>
    8000a1dc:	00030513          	mv	a0,t1
    8000a1e0:	00000097          	auipc	ra,0x0
    8000a1e4:	7bc080e7          	jalr	1980(ra) # 8000a99c <acquire>
    8000a1e8:	b4dff06f          	j	80009d34 <__printf+0x6c>
    8000a1ec:	40c0053b          	negw	a0,a2
    8000a1f0:	00a00713          	li	a4,10
    8000a1f4:	02e576bb          	remuw	a3,a0,a4
    8000a1f8:	00003d97          	auipc	s11,0x3
    8000a1fc:	cd0d8d93          	addi	s11,s11,-816 # 8000cec8 <digits>
    8000a200:	ff700593          	li	a1,-9
    8000a204:	02069693          	slli	a3,a3,0x20
    8000a208:	0206d693          	srli	a3,a3,0x20
    8000a20c:	00dd86b3          	add	a3,s11,a3
    8000a210:	0006c683          	lbu	a3,0(a3)
    8000a214:	02e557bb          	divuw	a5,a0,a4
    8000a218:	f8d40023          	sb	a3,-128(s0)
    8000a21c:	10b65e63          	bge	a2,a1,8000a338 <__printf+0x670>
    8000a220:	06300593          	li	a1,99
    8000a224:	02e7f6bb          	remuw	a3,a5,a4
    8000a228:	02069693          	slli	a3,a3,0x20
    8000a22c:	0206d693          	srli	a3,a3,0x20
    8000a230:	00dd86b3          	add	a3,s11,a3
    8000a234:	0006c683          	lbu	a3,0(a3)
    8000a238:	02e7d73b          	divuw	a4,a5,a4
    8000a23c:	00200793          	li	a5,2
    8000a240:	f8d400a3          	sb	a3,-127(s0)
    8000a244:	bca5ece3          	bltu	a1,a0,80009e1c <__printf+0x154>
    8000a248:	ce5ff06f          	j	80009f2c <__printf+0x264>
    8000a24c:	40e007bb          	negw	a5,a4
    8000a250:	00003d97          	auipc	s11,0x3
    8000a254:	c78d8d93          	addi	s11,s11,-904 # 8000cec8 <digits>
    8000a258:	00f7f693          	andi	a3,a5,15
    8000a25c:	00dd86b3          	add	a3,s11,a3
    8000a260:	0006c583          	lbu	a1,0(a3)
    8000a264:	ff100613          	li	a2,-15
    8000a268:	0047d69b          	srliw	a3,a5,0x4
    8000a26c:	f8b40023          	sb	a1,-128(s0)
    8000a270:	0047d59b          	srliw	a1,a5,0x4
    8000a274:	0ac75e63          	bge	a4,a2,8000a330 <__printf+0x668>
    8000a278:	00f6f693          	andi	a3,a3,15
    8000a27c:	00dd86b3          	add	a3,s11,a3
    8000a280:	0006c603          	lbu	a2,0(a3)
    8000a284:	00f00693          	li	a3,15
    8000a288:	0087d79b          	srliw	a5,a5,0x8
    8000a28c:	f8c400a3          	sb	a2,-127(s0)
    8000a290:	d8b6e4e3          	bltu	a3,a1,8000a018 <__printf+0x350>
    8000a294:	00200793          	li	a5,2
    8000a298:	e2dff06f          	j	8000a0c4 <__printf+0x3fc>
    8000a29c:	00003c97          	auipc	s9,0x3
    8000a2a0:	c0cc8c93          	addi	s9,s9,-1012 # 8000cea8 <CONSOLE_STATUS+0xe98>
    8000a2a4:	02800513          	li	a0,40
    8000a2a8:	ef1ff06f          	j	8000a198 <__printf+0x4d0>
    8000a2ac:	00700793          	li	a5,7
    8000a2b0:	00600c93          	li	s9,6
    8000a2b4:	e0dff06f          	j	8000a0c0 <__printf+0x3f8>
    8000a2b8:	00700793          	li	a5,7
    8000a2bc:	00600c93          	li	s9,6
    8000a2c0:	c69ff06f          	j	80009f28 <__printf+0x260>
    8000a2c4:	00300793          	li	a5,3
    8000a2c8:	00200c93          	li	s9,2
    8000a2cc:	c5dff06f          	j	80009f28 <__printf+0x260>
    8000a2d0:	00300793          	li	a5,3
    8000a2d4:	00200c93          	li	s9,2
    8000a2d8:	de9ff06f          	j	8000a0c0 <__printf+0x3f8>
    8000a2dc:	00400793          	li	a5,4
    8000a2e0:	00300c93          	li	s9,3
    8000a2e4:	dddff06f          	j	8000a0c0 <__printf+0x3f8>
    8000a2e8:	00400793          	li	a5,4
    8000a2ec:	00300c93          	li	s9,3
    8000a2f0:	c39ff06f          	j	80009f28 <__printf+0x260>
    8000a2f4:	00500793          	li	a5,5
    8000a2f8:	00400c93          	li	s9,4
    8000a2fc:	c2dff06f          	j	80009f28 <__printf+0x260>
    8000a300:	00500793          	li	a5,5
    8000a304:	00400c93          	li	s9,4
    8000a308:	db9ff06f          	j	8000a0c0 <__printf+0x3f8>
    8000a30c:	00600793          	li	a5,6
    8000a310:	00500c93          	li	s9,5
    8000a314:	dadff06f          	j	8000a0c0 <__printf+0x3f8>
    8000a318:	00600793          	li	a5,6
    8000a31c:	00500c93          	li	s9,5
    8000a320:	c09ff06f          	j	80009f28 <__printf+0x260>
    8000a324:	00800793          	li	a5,8
    8000a328:	00700c93          	li	s9,7
    8000a32c:	bfdff06f          	j	80009f28 <__printf+0x260>
    8000a330:	00100793          	li	a5,1
    8000a334:	d91ff06f          	j	8000a0c4 <__printf+0x3fc>
    8000a338:	00100793          	li	a5,1
    8000a33c:	bf1ff06f          	j	80009f2c <__printf+0x264>
    8000a340:	00900793          	li	a5,9
    8000a344:	00800c93          	li	s9,8
    8000a348:	be1ff06f          	j	80009f28 <__printf+0x260>
    8000a34c:	00003517          	auipc	a0,0x3
    8000a350:	b6450513          	addi	a0,a0,-1180 # 8000ceb0 <CONSOLE_STATUS+0xea0>
    8000a354:	00000097          	auipc	ra,0x0
    8000a358:	918080e7          	jalr	-1768(ra) # 80009c6c <panic>

000000008000a35c <printfinit>:
    8000a35c:	fe010113          	addi	sp,sp,-32
    8000a360:	00813823          	sd	s0,16(sp)
    8000a364:	00913423          	sd	s1,8(sp)
    8000a368:	00113c23          	sd	ra,24(sp)
    8000a36c:	02010413          	addi	s0,sp,32
    8000a370:	00007497          	auipc	s1,0x7
    8000a374:	e9048493          	addi	s1,s1,-368 # 80011200 <pr>
    8000a378:	00048513          	mv	a0,s1
    8000a37c:	00003597          	auipc	a1,0x3
    8000a380:	b4458593          	addi	a1,a1,-1212 # 8000cec0 <CONSOLE_STATUS+0xeb0>
    8000a384:	00000097          	auipc	ra,0x0
    8000a388:	5f4080e7          	jalr	1524(ra) # 8000a978 <initlock>
    8000a38c:	01813083          	ld	ra,24(sp)
    8000a390:	01013403          	ld	s0,16(sp)
    8000a394:	0004ac23          	sw	zero,24(s1)
    8000a398:	00813483          	ld	s1,8(sp)
    8000a39c:	02010113          	addi	sp,sp,32
    8000a3a0:	00008067          	ret

000000008000a3a4 <uartinit>:
    8000a3a4:	ff010113          	addi	sp,sp,-16
    8000a3a8:	00813423          	sd	s0,8(sp)
    8000a3ac:	01010413          	addi	s0,sp,16
    8000a3b0:	100007b7          	lui	a5,0x10000
    8000a3b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    8000a3b8:	f8000713          	li	a4,-128
    8000a3bc:	00e781a3          	sb	a4,3(a5)
    8000a3c0:	00300713          	li	a4,3
    8000a3c4:	00e78023          	sb	a4,0(a5)
    8000a3c8:	000780a3          	sb	zero,1(a5)
    8000a3cc:	00e781a3          	sb	a4,3(a5)
    8000a3d0:	00700693          	li	a3,7
    8000a3d4:	00d78123          	sb	a3,2(a5)
    8000a3d8:	00e780a3          	sb	a4,1(a5)
    8000a3dc:	00813403          	ld	s0,8(sp)
    8000a3e0:	01010113          	addi	sp,sp,16
    8000a3e4:	00008067          	ret

000000008000a3e8 <uartputc>:
    8000a3e8:	00006797          	auipc	a5,0x6
    8000a3ec:	ac07a783          	lw	a5,-1344(a5) # 8000fea8 <panicked>
    8000a3f0:	00078463          	beqz	a5,8000a3f8 <uartputc+0x10>
    8000a3f4:	0000006f          	j	8000a3f4 <uartputc+0xc>
    8000a3f8:	fd010113          	addi	sp,sp,-48
    8000a3fc:	02813023          	sd	s0,32(sp)
    8000a400:	00913c23          	sd	s1,24(sp)
    8000a404:	01213823          	sd	s2,16(sp)
    8000a408:	01313423          	sd	s3,8(sp)
    8000a40c:	02113423          	sd	ra,40(sp)
    8000a410:	03010413          	addi	s0,sp,48
    8000a414:	00006917          	auipc	s2,0x6
    8000a418:	a9c90913          	addi	s2,s2,-1380 # 8000feb0 <uart_tx_r>
    8000a41c:	00093783          	ld	a5,0(s2)
    8000a420:	00006497          	auipc	s1,0x6
    8000a424:	a9848493          	addi	s1,s1,-1384 # 8000feb8 <uart_tx_w>
    8000a428:	0004b703          	ld	a4,0(s1)
    8000a42c:	02078693          	addi	a3,a5,32
    8000a430:	00050993          	mv	s3,a0
    8000a434:	02e69c63          	bne	a3,a4,8000a46c <uartputc+0x84>
    8000a438:	00001097          	auipc	ra,0x1
    8000a43c:	834080e7          	jalr	-1996(ra) # 8000ac6c <push_on>
    8000a440:	00093783          	ld	a5,0(s2)
    8000a444:	0004b703          	ld	a4,0(s1)
    8000a448:	02078793          	addi	a5,a5,32
    8000a44c:	00e79463          	bne	a5,a4,8000a454 <uartputc+0x6c>
    8000a450:	0000006f          	j	8000a450 <uartputc+0x68>
    8000a454:	00001097          	auipc	ra,0x1
    8000a458:	88c080e7          	jalr	-1908(ra) # 8000ace0 <pop_on>
    8000a45c:	00093783          	ld	a5,0(s2)
    8000a460:	0004b703          	ld	a4,0(s1)
    8000a464:	02078693          	addi	a3,a5,32
    8000a468:	fce688e3          	beq	a3,a4,8000a438 <uartputc+0x50>
    8000a46c:	01f77693          	andi	a3,a4,31
    8000a470:	00007597          	auipc	a1,0x7
    8000a474:	db058593          	addi	a1,a1,-592 # 80011220 <uart_tx_buf>
    8000a478:	00d586b3          	add	a3,a1,a3
    8000a47c:	00170713          	addi	a4,a4,1
    8000a480:	01368023          	sb	s3,0(a3)
    8000a484:	00e4b023          	sd	a4,0(s1)
    8000a488:	10000637          	lui	a2,0x10000
    8000a48c:	02f71063          	bne	a4,a5,8000a4ac <uartputc+0xc4>
    8000a490:	0340006f          	j	8000a4c4 <uartputc+0xdc>
    8000a494:	00074703          	lbu	a4,0(a4)
    8000a498:	00f93023          	sd	a5,0(s2)
    8000a49c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    8000a4a0:	00093783          	ld	a5,0(s2)
    8000a4a4:	0004b703          	ld	a4,0(s1)
    8000a4a8:	00f70e63          	beq	a4,a5,8000a4c4 <uartputc+0xdc>
    8000a4ac:	00564683          	lbu	a3,5(a2)
    8000a4b0:	01f7f713          	andi	a4,a5,31
    8000a4b4:	00e58733          	add	a4,a1,a4
    8000a4b8:	0206f693          	andi	a3,a3,32
    8000a4bc:	00178793          	addi	a5,a5,1
    8000a4c0:	fc069ae3          	bnez	a3,8000a494 <uartputc+0xac>
    8000a4c4:	02813083          	ld	ra,40(sp)
    8000a4c8:	02013403          	ld	s0,32(sp)
    8000a4cc:	01813483          	ld	s1,24(sp)
    8000a4d0:	01013903          	ld	s2,16(sp)
    8000a4d4:	00813983          	ld	s3,8(sp)
    8000a4d8:	03010113          	addi	sp,sp,48
    8000a4dc:	00008067          	ret

000000008000a4e0 <uartputc_sync>:
    8000a4e0:	ff010113          	addi	sp,sp,-16
    8000a4e4:	00813423          	sd	s0,8(sp)
    8000a4e8:	01010413          	addi	s0,sp,16
    8000a4ec:	00006717          	auipc	a4,0x6
    8000a4f0:	9bc72703          	lw	a4,-1604(a4) # 8000fea8 <panicked>
    8000a4f4:	02071663          	bnez	a4,8000a520 <uartputc_sync+0x40>
    8000a4f8:	00050793          	mv	a5,a0
    8000a4fc:	100006b7          	lui	a3,0x10000
    8000a500:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    8000a504:	02077713          	andi	a4,a4,32
    8000a508:	fe070ce3          	beqz	a4,8000a500 <uartputc_sync+0x20>
    8000a50c:	0ff7f793          	andi	a5,a5,255
    8000a510:	00f68023          	sb	a5,0(a3)
    8000a514:	00813403          	ld	s0,8(sp)
    8000a518:	01010113          	addi	sp,sp,16
    8000a51c:	00008067          	ret
    8000a520:	0000006f          	j	8000a520 <uartputc_sync+0x40>

000000008000a524 <uartstart>:
    8000a524:	ff010113          	addi	sp,sp,-16
    8000a528:	00813423          	sd	s0,8(sp)
    8000a52c:	01010413          	addi	s0,sp,16
    8000a530:	00006617          	auipc	a2,0x6
    8000a534:	98060613          	addi	a2,a2,-1664 # 8000feb0 <uart_tx_r>
    8000a538:	00006517          	auipc	a0,0x6
    8000a53c:	98050513          	addi	a0,a0,-1664 # 8000feb8 <uart_tx_w>
    8000a540:	00063783          	ld	a5,0(a2)
    8000a544:	00053703          	ld	a4,0(a0)
    8000a548:	04f70263          	beq	a4,a5,8000a58c <uartstart+0x68>
    8000a54c:	100005b7          	lui	a1,0x10000
    8000a550:	00007817          	auipc	a6,0x7
    8000a554:	cd080813          	addi	a6,a6,-816 # 80011220 <uart_tx_buf>
    8000a558:	01c0006f          	j	8000a574 <uartstart+0x50>
    8000a55c:	0006c703          	lbu	a4,0(a3)
    8000a560:	00f63023          	sd	a5,0(a2)
    8000a564:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000a568:	00063783          	ld	a5,0(a2)
    8000a56c:	00053703          	ld	a4,0(a0)
    8000a570:	00f70e63          	beq	a4,a5,8000a58c <uartstart+0x68>
    8000a574:	01f7f713          	andi	a4,a5,31
    8000a578:	00e806b3          	add	a3,a6,a4
    8000a57c:	0055c703          	lbu	a4,5(a1)
    8000a580:	00178793          	addi	a5,a5,1
    8000a584:	02077713          	andi	a4,a4,32
    8000a588:	fc071ae3          	bnez	a4,8000a55c <uartstart+0x38>
    8000a58c:	00813403          	ld	s0,8(sp)
    8000a590:	01010113          	addi	sp,sp,16
    8000a594:	00008067          	ret

000000008000a598 <uartgetc>:
    8000a598:	ff010113          	addi	sp,sp,-16
    8000a59c:	00813423          	sd	s0,8(sp)
    8000a5a0:	01010413          	addi	s0,sp,16
    8000a5a4:	10000737          	lui	a4,0x10000
    8000a5a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000a5ac:	0017f793          	andi	a5,a5,1
    8000a5b0:	00078c63          	beqz	a5,8000a5c8 <uartgetc+0x30>
    8000a5b4:	00074503          	lbu	a0,0(a4)
    8000a5b8:	0ff57513          	andi	a0,a0,255
    8000a5bc:	00813403          	ld	s0,8(sp)
    8000a5c0:	01010113          	addi	sp,sp,16
    8000a5c4:	00008067          	ret
    8000a5c8:	fff00513          	li	a0,-1
    8000a5cc:	ff1ff06f          	j	8000a5bc <uartgetc+0x24>

000000008000a5d0 <uartintr>:
    8000a5d0:	100007b7          	lui	a5,0x10000
    8000a5d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    8000a5d8:	0017f793          	andi	a5,a5,1
    8000a5dc:	0a078463          	beqz	a5,8000a684 <uartintr+0xb4>
    8000a5e0:	fe010113          	addi	sp,sp,-32
    8000a5e4:	00813823          	sd	s0,16(sp)
    8000a5e8:	00913423          	sd	s1,8(sp)
    8000a5ec:	00113c23          	sd	ra,24(sp)
    8000a5f0:	02010413          	addi	s0,sp,32
    8000a5f4:	100004b7          	lui	s1,0x10000
    8000a5f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000a5fc:	0ff57513          	andi	a0,a0,255
    8000a600:	fffff097          	auipc	ra,0xfffff
    8000a604:	534080e7          	jalr	1332(ra) # 80009b34 <consoleintr>
    8000a608:	0054c783          	lbu	a5,5(s1)
    8000a60c:	0017f793          	andi	a5,a5,1
    8000a610:	fe0794e3          	bnez	a5,8000a5f8 <uartintr+0x28>
    8000a614:	00006617          	auipc	a2,0x6
    8000a618:	89c60613          	addi	a2,a2,-1892 # 8000feb0 <uart_tx_r>
    8000a61c:	00006517          	auipc	a0,0x6
    8000a620:	89c50513          	addi	a0,a0,-1892 # 8000feb8 <uart_tx_w>
    8000a624:	00063783          	ld	a5,0(a2)
    8000a628:	00053703          	ld	a4,0(a0)
    8000a62c:	04f70263          	beq	a4,a5,8000a670 <uartintr+0xa0>
    8000a630:	100005b7          	lui	a1,0x10000
    8000a634:	00007817          	auipc	a6,0x7
    8000a638:	bec80813          	addi	a6,a6,-1044 # 80011220 <uart_tx_buf>
    8000a63c:	01c0006f          	j	8000a658 <uartintr+0x88>
    8000a640:	0006c703          	lbu	a4,0(a3)
    8000a644:	00f63023          	sd	a5,0(a2)
    8000a648:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000a64c:	00063783          	ld	a5,0(a2)
    8000a650:	00053703          	ld	a4,0(a0)
    8000a654:	00f70e63          	beq	a4,a5,8000a670 <uartintr+0xa0>
    8000a658:	01f7f713          	andi	a4,a5,31
    8000a65c:	00e806b3          	add	a3,a6,a4
    8000a660:	0055c703          	lbu	a4,5(a1)
    8000a664:	00178793          	addi	a5,a5,1
    8000a668:	02077713          	andi	a4,a4,32
    8000a66c:	fc071ae3          	bnez	a4,8000a640 <uartintr+0x70>
    8000a670:	01813083          	ld	ra,24(sp)
    8000a674:	01013403          	ld	s0,16(sp)
    8000a678:	00813483          	ld	s1,8(sp)
    8000a67c:	02010113          	addi	sp,sp,32
    8000a680:	00008067          	ret
    8000a684:	00006617          	auipc	a2,0x6
    8000a688:	82c60613          	addi	a2,a2,-2004 # 8000feb0 <uart_tx_r>
    8000a68c:	00006517          	auipc	a0,0x6
    8000a690:	82c50513          	addi	a0,a0,-2004 # 8000feb8 <uart_tx_w>
    8000a694:	00063783          	ld	a5,0(a2)
    8000a698:	00053703          	ld	a4,0(a0)
    8000a69c:	04f70263          	beq	a4,a5,8000a6e0 <uartintr+0x110>
    8000a6a0:	100005b7          	lui	a1,0x10000
    8000a6a4:	00007817          	auipc	a6,0x7
    8000a6a8:	b7c80813          	addi	a6,a6,-1156 # 80011220 <uart_tx_buf>
    8000a6ac:	01c0006f          	j	8000a6c8 <uartintr+0xf8>
    8000a6b0:	0006c703          	lbu	a4,0(a3)
    8000a6b4:	00f63023          	sd	a5,0(a2)
    8000a6b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000a6bc:	00063783          	ld	a5,0(a2)
    8000a6c0:	00053703          	ld	a4,0(a0)
    8000a6c4:	02f70063          	beq	a4,a5,8000a6e4 <uartintr+0x114>
    8000a6c8:	01f7f713          	andi	a4,a5,31
    8000a6cc:	00e806b3          	add	a3,a6,a4
    8000a6d0:	0055c703          	lbu	a4,5(a1)
    8000a6d4:	00178793          	addi	a5,a5,1
    8000a6d8:	02077713          	andi	a4,a4,32
    8000a6dc:	fc071ae3          	bnez	a4,8000a6b0 <uartintr+0xe0>
    8000a6e0:	00008067          	ret
    8000a6e4:	00008067          	ret

000000008000a6e8 <kinit>:
    8000a6e8:	fc010113          	addi	sp,sp,-64
    8000a6ec:	02913423          	sd	s1,40(sp)
    8000a6f0:	fffff7b7          	lui	a5,0xfffff
    8000a6f4:	00008497          	auipc	s1,0x8
    8000a6f8:	b4b48493          	addi	s1,s1,-1205 # 8001223f <end+0xfff>
    8000a6fc:	02813823          	sd	s0,48(sp)
    8000a700:	01313c23          	sd	s3,24(sp)
    8000a704:	00f4f4b3          	and	s1,s1,a5
    8000a708:	02113c23          	sd	ra,56(sp)
    8000a70c:	03213023          	sd	s2,32(sp)
    8000a710:	01413823          	sd	s4,16(sp)
    8000a714:	01513423          	sd	s5,8(sp)
    8000a718:	04010413          	addi	s0,sp,64
    8000a71c:	000017b7          	lui	a5,0x1
    8000a720:	01100993          	li	s3,17
    8000a724:	00f487b3          	add	a5,s1,a5
    8000a728:	01b99993          	slli	s3,s3,0x1b
    8000a72c:	06f9e063          	bltu	s3,a5,8000a78c <kinit+0xa4>
    8000a730:	00007a97          	auipc	s5,0x7
    8000a734:	b10a8a93          	addi	s5,s5,-1264 # 80011240 <end>
    8000a738:	0754ec63          	bltu	s1,s5,8000a7b0 <kinit+0xc8>
    8000a73c:	0734fa63          	bgeu	s1,s3,8000a7b0 <kinit+0xc8>
    8000a740:	00088a37          	lui	s4,0x88
    8000a744:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    8000a748:	00005917          	auipc	s2,0x5
    8000a74c:	77890913          	addi	s2,s2,1912 # 8000fec0 <kmem>
    8000a750:	00ca1a13          	slli	s4,s4,0xc
    8000a754:	0140006f          	j	8000a768 <kinit+0x80>
    8000a758:	000017b7          	lui	a5,0x1
    8000a75c:	00f484b3          	add	s1,s1,a5
    8000a760:	0554e863          	bltu	s1,s5,8000a7b0 <kinit+0xc8>
    8000a764:	0534f663          	bgeu	s1,s3,8000a7b0 <kinit+0xc8>
    8000a768:	00001637          	lui	a2,0x1
    8000a76c:	00100593          	li	a1,1
    8000a770:	00048513          	mv	a0,s1
    8000a774:	00000097          	auipc	ra,0x0
    8000a778:	5e4080e7          	jalr	1508(ra) # 8000ad58 <__memset>
    8000a77c:	00093783          	ld	a5,0(s2)
    8000a780:	00f4b023          	sd	a5,0(s1)
    8000a784:	00993023          	sd	s1,0(s2)
    8000a788:	fd4498e3          	bne	s1,s4,8000a758 <kinit+0x70>
    8000a78c:	03813083          	ld	ra,56(sp)
    8000a790:	03013403          	ld	s0,48(sp)
    8000a794:	02813483          	ld	s1,40(sp)
    8000a798:	02013903          	ld	s2,32(sp)
    8000a79c:	01813983          	ld	s3,24(sp)
    8000a7a0:	01013a03          	ld	s4,16(sp)
    8000a7a4:	00813a83          	ld	s5,8(sp)
    8000a7a8:	04010113          	addi	sp,sp,64
    8000a7ac:	00008067          	ret
    8000a7b0:	00002517          	auipc	a0,0x2
    8000a7b4:	73050513          	addi	a0,a0,1840 # 8000cee0 <digits+0x18>
    8000a7b8:	fffff097          	auipc	ra,0xfffff
    8000a7bc:	4b4080e7          	jalr	1204(ra) # 80009c6c <panic>

000000008000a7c0 <freerange>:
    8000a7c0:	fc010113          	addi	sp,sp,-64
    8000a7c4:	000017b7          	lui	a5,0x1
    8000a7c8:	02913423          	sd	s1,40(sp)
    8000a7cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    8000a7d0:	009504b3          	add	s1,a0,s1
    8000a7d4:	fffff537          	lui	a0,0xfffff
    8000a7d8:	02813823          	sd	s0,48(sp)
    8000a7dc:	02113c23          	sd	ra,56(sp)
    8000a7e0:	03213023          	sd	s2,32(sp)
    8000a7e4:	01313c23          	sd	s3,24(sp)
    8000a7e8:	01413823          	sd	s4,16(sp)
    8000a7ec:	01513423          	sd	s5,8(sp)
    8000a7f0:	01613023          	sd	s6,0(sp)
    8000a7f4:	04010413          	addi	s0,sp,64
    8000a7f8:	00a4f4b3          	and	s1,s1,a0
    8000a7fc:	00f487b3          	add	a5,s1,a5
    8000a800:	06f5e463          	bltu	a1,a5,8000a868 <freerange+0xa8>
    8000a804:	00007a97          	auipc	s5,0x7
    8000a808:	a3ca8a93          	addi	s5,s5,-1476 # 80011240 <end>
    8000a80c:	0954e263          	bltu	s1,s5,8000a890 <freerange+0xd0>
    8000a810:	01100993          	li	s3,17
    8000a814:	01b99993          	slli	s3,s3,0x1b
    8000a818:	0734fc63          	bgeu	s1,s3,8000a890 <freerange+0xd0>
    8000a81c:	00058a13          	mv	s4,a1
    8000a820:	00005917          	auipc	s2,0x5
    8000a824:	6a090913          	addi	s2,s2,1696 # 8000fec0 <kmem>
    8000a828:	00002b37          	lui	s6,0x2
    8000a82c:	0140006f          	j	8000a840 <freerange+0x80>
    8000a830:	000017b7          	lui	a5,0x1
    8000a834:	00f484b3          	add	s1,s1,a5
    8000a838:	0554ec63          	bltu	s1,s5,8000a890 <freerange+0xd0>
    8000a83c:	0534fa63          	bgeu	s1,s3,8000a890 <freerange+0xd0>
    8000a840:	00001637          	lui	a2,0x1
    8000a844:	00100593          	li	a1,1
    8000a848:	00048513          	mv	a0,s1
    8000a84c:	00000097          	auipc	ra,0x0
    8000a850:	50c080e7          	jalr	1292(ra) # 8000ad58 <__memset>
    8000a854:	00093703          	ld	a4,0(s2)
    8000a858:	016487b3          	add	a5,s1,s6
    8000a85c:	00e4b023          	sd	a4,0(s1)
    8000a860:	00993023          	sd	s1,0(s2)
    8000a864:	fcfa76e3          	bgeu	s4,a5,8000a830 <freerange+0x70>
    8000a868:	03813083          	ld	ra,56(sp)
    8000a86c:	03013403          	ld	s0,48(sp)
    8000a870:	02813483          	ld	s1,40(sp)
    8000a874:	02013903          	ld	s2,32(sp)
    8000a878:	01813983          	ld	s3,24(sp)
    8000a87c:	01013a03          	ld	s4,16(sp)
    8000a880:	00813a83          	ld	s5,8(sp)
    8000a884:	00013b03          	ld	s6,0(sp)
    8000a888:	04010113          	addi	sp,sp,64
    8000a88c:	00008067          	ret
    8000a890:	00002517          	auipc	a0,0x2
    8000a894:	65050513          	addi	a0,a0,1616 # 8000cee0 <digits+0x18>
    8000a898:	fffff097          	auipc	ra,0xfffff
    8000a89c:	3d4080e7          	jalr	980(ra) # 80009c6c <panic>

000000008000a8a0 <kfree>:
    8000a8a0:	fe010113          	addi	sp,sp,-32
    8000a8a4:	00813823          	sd	s0,16(sp)
    8000a8a8:	00113c23          	sd	ra,24(sp)
    8000a8ac:	00913423          	sd	s1,8(sp)
    8000a8b0:	02010413          	addi	s0,sp,32
    8000a8b4:	03451793          	slli	a5,a0,0x34
    8000a8b8:	04079c63          	bnez	a5,8000a910 <kfree+0x70>
    8000a8bc:	00007797          	auipc	a5,0x7
    8000a8c0:	98478793          	addi	a5,a5,-1660 # 80011240 <end>
    8000a8c4:	00050493          	mv	s1,a0
    8000a8c8:	04f56463          	bltu	a0,a5,8000a910 <kfree+0x70>
    8000a8cc:	01100793          	li	a5,17
    8000a8d0:	01b79793          	slli	a5,a5,0x1b
    8000a8d4:	02f57e63          	bgeu	a0,a5,8000a910 <kfree+0x70>
    8000a8d8:	00001637          	lui	a2,0x1
    8000a8dc:	00100593          	li	a1,1
    8000a8e0:	00000097          	auipc	ra,0x0
    8000a8e4:	478080e7          	jalr	1144(ra) # 8000ad58 <__memset>
    8000a8e8:	00005797          	auipc	a5,0x5
    8000a8ec:	5d878793          	addi	a5,a5,1496 # 8000fec0 <kmem>
    8000a8f0:	0007b703          	ld	a4,0(a5)
    8000a8f4:	01813083          	ld	ra,24(sp)
    8000a8f8:	01013403          	ld	s0,16(sp)
    8000a8fc:	00e4b023          	sd	a4,0(s1)
    8000a900:	0097b023          	sd	s1,0(a5)
    8000a904:	00813483          	ld	s1,8(sp)
    8000a908:	02010113          	addi	sp,sp,32
    8000a90c:	00008067          	ret
    8000a910:	00002517          	auipc	a0,0x2
    8000a914:	5d050513          	addi	a0,a0,1488 # 8000cee0 <digits+0x18>
    8000a918:	fffff097          	auipc	ra,0xfffff
    8000a91c:	354080e7          	jalr	852(ra) # 80009c6c <panic>

000000008000a920 <kalloc>:
    8000a920:	fe010113          	addi	sp,sp,-32
    8000a924:	00813823          	sd	s0,16(sp)
    8000a928:	00913423          	sd	s1,8(sp)
    8000a92c:	00113c23          	sd	ra,24(sp)
    8000a930:	02010413          	addi	s0,sp,32
    8000a934:	00005797          	auipc	a5,0x5
    8000a938:	58c78793          	addi	a5,a5,1420 # 8000fec0 <kmem>
    8000a93c:	0007b483          	ld	s1,0(a5)
    8000a940:	02048063          	beqz	s1,8000a960 <kalloc+0x40>
    8000a944:	0004b703          	ld	a4,0(s1)
    8000a948:	00001637          	lui	a2,0x1
    8000a94c:	00500593          	li	a1,5
    8000a950:	00048513          	mv	a0,s1
    8000a954:	00e7b023          	sd	a4,0(a5)
    8000a958:	00000097          	auipc	ra,0x0
    8000a95c:	400080e7          	jalr	1024(ra) # 8000ad58 <__memset>
    8000a960:	01813083          	ld	ra,24(sp)
    8000a964:	01013403          	ld	s0,16(sp)
    8000a968:	00048513          	mv	a0,s1
    8000a96c:	00813483          	ld	s1,8(sp)
    8000a970:	02010113          	addi	sp,sp,32
    8000a974:	00008067          	ret

000000008000a978 <initlock>:
    8000a978:	ff010113          	addi	sp,sp,-16
    8000a97c:	00813423          	sd	s0,8(sp)
    8000a980:	01010413          	addi	s0,sp,16
    8000a984:	00813403          	ld	s0,8(sp)
    8000a988:	00b53423          	sd	a1,8(a0)
    8000a98c:	00052023          	sw	zero,0(a0)
    8000a990:	00053823          	sd	zero,16(a0)
    8000a994:	01010113          	addi	sp,sp,16
    8000a998:	00008067          	ret

000000008000a99c <acquire>:
    8000a99c:	fe010113          	addi	sp,sp,-32
    8000a9a0:	00813823          	sd	s0,16(sp)
    8000a9a4:	00913423          	sd	s1,8(sp)
    8000a9a8:	00113c23          	sd	ra,24(sp)
    8000a9ac:	01213023          	sd	s2,0(sp)
    8000a9b0:	02010413          	addi	s0,sp,32
    8000a9b4:	00050493          	mv	s1,a0
    8000a9b8:	10002973          	csrr	s2,sstatus
    8000a9bc:	100027f3          	csrr	a5,sstatus
    8000a9c0:	ffd7f793          	andi	a5,a5,-3
    8000a9c4:	10079073          	csrw	sstatus,a5
    8000a9c8:	fffff097          	auipc	ra,0xfffff
    8000a9cc:	8e0080e7          	jalr	-1824(ra) # 800092a8 <mycpu>
    8000a9d0:	07852783          	lw	a5,120(a0)
    8000a9d4:	06078e63          	beqz	a5,8000aa50 <acquire+0xb4>
    8000a9d8:	fffff097          	auipc	ra,0xfffff
    8000a9dc:	8d0080e7          	jalr	-1840(ra) # 800092a8 <mycpu>
    8000a9e0:	07852783          	lw	a5,120(a0)
    8000a9e4:	0004a703          	lw	a4,0(s1)
    8000a9e8:	0017879b          	addiw	a5,a5,1
    8000a9ec:	06f52c23          	sw	a5,120(a0)
    8000a9f0:	04071063          	bnez	a4,8000aa30 <acquire+0x94>
    8000a9f4:	00100713          	li	a4,1
    8000a9f8:	00070793          	mv	a5,a4
    8000a9fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    8000aa00:	0007879b          	sext.w	a5,a5
    8000aa04:	fe079ae3          	bnez	a5,8000a9f8 <acquire+0x5c>
    8000aa08:	0ff0000f          	fence
    8000aa0c:	fffff097          	auipc	ra,0xfffff
    8000aa10:	89c080e7          	jalr	-1892(ra) # 800092a8 <mycpu>
    8000aa14:	01813083          	ld	ra,24(sp)
    8000aa18:	01013403          	ld	s0,16(sp)
    8000aa1c:	00a4b823          	sd	a0,16(s1)
    8000aa20:	00013903          	ld	s2,0(sp)
    8000aa24:	00813483          	ld	s1,8(sp)
    8000aa28:	02010113          	addi	sp,sp,32
    8000aa2c:	00008067          	ret
    8000aa30:	0104b903          	ld	s2,16(s1)
    8000aa34:	fffff097          	auipc	ra,0xfffff
    8000aa38:	874080e7          	jalr	-1932(ra) # 800092a8 <mycpu>
    8000aa3c:	faa91ce3          	bne	s2,a0,8000a9f4 <acquire+0x58>
    8000aa40:	00002517          	auipc	a0,0x2
    8000aa44:	4a850513          	addi	a0,a0,1192 # 8000cee8 <digits+0x20>
    8000aa48:	fffff097          	auipc	ra,0xfffff
    8000aa4c:	224080e7          	jalr	548(ra) # 80009c6c <panic>
    8000aa50:	00195913          	srli	s2,s2,0x1
    8000aa54:	fffff097          	auipc	ra,0xfffff
    8000aa58:	854080e7          	jalr	-1964(ra) # 800092a8 <mycpu>
    8000aa5c:	00197913          	andi	s2,s2,1
    8000aa60:	07252e23          	sw	s2,124(a0)
    8000aa64:	f75ff06f          	j	8000a9d8 <acquire+0x3c>

000000008000aa68 <release>:
    8000aa68:	fe010113          	addi	sp,sp,-32
    8000aa6c:	00813823          	sd	s0,16(sp)
    8000aa70:	00113c23          	sd	ra,24(sp)
    8000aa74:	00913423          	sd	s1,8(sp)
    8000aa78:	01213023          	sd	s2,0(sp)
    8000aa7c:	02010413          	addi	s0,sp,32
    8000aa80:	00052783          	lw	a5,0(a0)
    8000aa84:	00079a63          	bnez	a5,8000aa98 <release+0x30>
    8000aa88:	00002517          	auipc	a0,0x2
    8000aa8c:	46850513          	addi	a0,a0,1128 # 8000cef0 <digits+0x28>
    8000aa90:	fffff097          	auipc	ra,0xfffff
    8000aa94:	1dc080e7          	jalr	476(ra) # 80009c6c <panic>
    8000aa98:	01053903          	ld	s2,16(a0)
    8000aa9c:	00050493          	mv	s1,a0
    8000aaa0:	fffff097          	auipc	ra,0xfffff
    8000aaa4:	808080e7          	jalr	-2040(ra) # 800092a8 <mycpu>
    8000aaa8:	fea910e3          	bne	s2,a0,8000aa88 <release+0x20>
    8000aaac:	0004b823          	sd	zero,16(s1)
    8000aab0:	0ff0000f          	fence
    8000aab4:	0f50000f          	fence	iorw,ow
    8000aab8:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000aabc:	ffffe097          	auipc	ra,0xffffe
    8000aac0:	7ec080e7          	jalr	2028(ra) # 800092a8 <mycpu>
    8000aac4:	100027f3          	csrr	a5,sstatus
    8000aac8:	0027f793          	andi	a5,a5,2
    8000aacc:	04079a63          	bnez	a5,8000ab20 <release+0xb8>
    8000aad0:	07852783          	lw	a5,120(a0)
    8000aad4:	02f05e63          	blez	a5,8000ab10 <release+0xa8>
    8000aad8:	fff7871b          	addiw	a4,a5,-1
    8000aadc:	06e52c23          	sw	a4,120(a0)
    8000aae0:	00071c63          	bnez	a4,8000aaf8 <release+0x90>
    8000aae4:	07c52783          	lw	a5,124(a0)
    8000aae8:	00078863          	beqz	a5,8000aaf8 <release+0x90>
    8000aaec:	100027f3          	csrr	a5,sstatus
    8000aaf0:	0027e793          	ori	a5,a5,2
    8000aaf4:	10079073          	csrw	sstatus,a5
    8000aaf8:	01813083          	ld	ra,24(sp)
    8000aafc:	01013403          	ld	s0,16(sp)
    8000ab00:	00813483          	ld	s1,8(sp)
    8000ab04:	00013903          	ld	s2,0(sp)
    8000ab08:	02010113          	addi	sp,sp,32
    8000ab0c:	00008067          	ret
    8000ab10:	00002517          	auipc	a0,0x2
    8000ab14:	40050513          	addi	a0,a0,1024 # 8000cf10 <digits+0x48>
    8000ab18:	fffff097          	auipc	ra,0xfffff
    8000ab1c:	154080e7          	jalr	340(ra) # 80009c6c <panic>
    8000ab20:	00002517          	auipc	a0,0x2
    8000ab24:	3d850513          	addi	a0,a0,984 # 8000cef8 <digits+0x30>
    8000ab28:	fffff097          	auipc	ra,0xfffff
    8000ab2c:	144080e7          	jalr	324(ra) # 80009c6c <panic>

000000008000ab30 <holding>:
    8000ab30:	00052783          	lw	a5,0(a0)
    8000ab34:	00079663          	bnez	a5,8000ab40 <holding+0x10>
    8000ab38:	00000513          	li	a0,0
    8000ab3c:	00008067          	ret
    8000ab40:	fe010113          	addi	sp,sp,-32
    8000ab44:	00813823          	sd	s0,16(sp)
    8000ab48:	00913423          	sd	s1,8(sp)
    8000ab4c:	00113c23          	sd	ra,24(sp)
    8000ab50:	02010413          	addi	s0,sp,32
    8000ab54:	01053483          	ld	s1,16(a0)
    8000ab58:	ffffe097          	auipc	ra,0xffffe
    8000ab5c:	750080e7          	jalr	1872(ra) # 800092a8 <mycpu>
    8000ab60:	01813083          	ld	ra,24(sp)
    8000ab64:	01013403          	ld	s0,16(sp)
    8000ab68:	40a48533          	sub	a0,s1,a0
    8000ab6c:	00153513          	seqz	a0,a0
    8000ab70:	00813483          	ld	s1,8(sp)
    8000ab74:	02010113          	addi	sp,sp,32
    8000ab78:	00008067          	ret

000000008000ab7c <push_off>:
    8000ab7c:	fe010113          	addi	sp,sp,-32
    8000ab80:	00813823          	sd	s0,16(sp)
    8000ab84:	00113c23          	sd	ra,24(sp)
    8000ab88:	00913423          	sd	s1,8(sp)
    8000ab8c:	02010413          	addi	s0,sp,32
    8000ab90:	100024f3          	csrr	s1,sstatus
    8000ab94:	100027f3          	csrr	a5,sstatus
    8000ab98:	ffd7f793          	andi	a5,a5,-3
    8000ab9c:	10079073          	csrw	sstatus,a5
    8000aba0:	ffffe097          	auipc	ra,0xffffe
    8000aba4:	708080e7          	jalr	1800(ra) # 800092a8 <mycpu>
    8000aba8:	07852783          	lw	a5,120(a0)
    8000abac:	02078663          	beqz	a5,8000abd8 <push_off+0x5c>
    8000abb0:	ffffe097          	auipc	ra,0xffffe
    8000abb4:	6f8080e7          	jalr	1784(ra) # 800092a8 <mycpu>
    8000abb8:	07852783          	lw	a5,120(a0)
    8000abbc:	01813083          	ld	ra,24(sp)
    8000abc0:	01013403          	ld	s0,16(sp)
    8000abc4:	0017879b          	addiw	a5,a5,1
    8000abc8:	06f52c23          	sw	a5,120(a0)
    8000abcc:	00813483          	ld	s1,8(sp)
    8000abd0:	02010113          	addi	sp,sp,32
    8000abd4:	00008067          	ret
    8000abd8:	0014d493          	srli	s1,s1,0x1
    8000abdc:	ffffe097          	auipc	ra,0xffffe
    8000abe0:	6cc080e7          	jalr	1740(ra) # 800092a8 <mycpu>
    8000abe4:	0014f493          	andi	s1,s1,1
    8000abe8:	06952e23          	sw	s1,124(a0)
    8000abec:	fc5ff06f          	j	8000abb0 <push_off+0x34>

000000008000abf0 <pop_off>:
    8000abf0:	ff010113          	addi	sp,sp,-16
    8000abf4:	00813023          	sd	s0,0(sp)
    8000abf8:	00113423          	sd	ra,8(sp)
    8000abfc:	01010413          	addi	s0,sp,16
    8000ac00:	ffffe097          	auipc	ra,0xffffe
    8000ac04:	6a8080e7          	jalr	1704(ra) # 800092a8 <mycpu>
    8000ac08:	100027f3          	csrr	a5,sstatus
    8000ac0c:	0027f793          	andi	a5,a5,2
    8000ac10:	04079663          	bnez	a5,8000ac5c <pop_off+0x6c>
    8000ac14:	07852783          	lw	a5,120(a0)
    8000ac18:	02f05a63          	blez	a5,8000ac4c <pop_off+0x5c>
    8000ac1c:	fff7871b          	addiw	a4,a5,-1
    8000ac20:	06e52c23          	sw	a4,120(a0)
    8000ac24:	00071c63          	bnez	a4,8000ac3c <pop_off+0x4c>
    8000ac28:	07c52783          	lw	a5,124(a0)
    8000ac2c:	00078863          	beqz	a5,8000ac3c <pop_off+0x4c>
    8000ac30:	100027f3          	csrr	a5,sstatus
    8000ac34:	0027e793          	ori	a5,a5,2
    8000ac38:	10079073          	csrw	sstatus,a5
    8000ac3c:	00813083          	ld	ra,8(sp)
    8000ac40:	00013403          	ld	s0,0(sp)
    8000ac44:	01010113          	addi	sp,sp,16
    8000ac48:	00008067          	ret
    8000ac4c:	00002517          	auipc	a0,0x2
    8000ac50:	2c450513          	addi	a0,a0,708 # 8000cf10 <digits+0x48>
    8000ac54:	fffff097          	auipc	ra,0xfffff
    8000ac58:	018080e7          	jalr	24(ra) # 80009c6c <panic>
    8000ac5c:	00002517          	auipc	a0,0x2
    8000ac60:	29c50513          	addi	a0,a0,668 # 8000cef8 <digits+0x30>
    8000ac64:	fffff097          	auipc	ra,0xfffff
    8000ac68:	008080e7          	jalr	8(ra) # 80009c6c <panic>

000000008000ac6c <push_on>:
    8000ac6c:	fe010113          	addi	sp,sp,-32
    8000ac70:	00813823          	sd	s0,16(sp)
    8000ac74:	00113c23          	sd	ra,24(sp)
    8000ac78:	00913423          	sd	s1,8(sp)
    8000ac7c:	02010413          	addi	s0,sp,32
    8000ac80:	100024f3          	csrr	s1,sstatus
    8000ac84:	100027f3          	csrr	a5,sstatus
    8000ac88:	0027e793          	ori	a5,a5,2
    8000ac8c:	10079073          	csrw	sstatus,a5
    8000ac90:	ffffe097          	auipc	ra,0xffffe
    8000ac94:	618080e7          	jalr	1560(ra) # 800092a8 <mycpu>
    8000ac98:	07852783          	lw	a5,120(a0)
    8000ac9c:	02078663          	beqz	a5,8000acc8 <push_on+0x5c>
    8000aca0:	ffffe097          	auipc	ra,0xffffe
    8000aca4:	608080e7          	jalr	1544(ra) # 800092a8 <mycpu>
    8000aca8:	07852783          	lw	a5,120(a0)
    8000acac:	01813083          	ld	ra,24(sp)
    8000acb0:	01013403          	ld	s0,16(sp)
    8000acb4:	0017879b          	addiw	a5,a5,1
    8000acb8:	06f52c23          	sw	a5,120(a0)
    8000acbc:	00813483          	ld	s1,8(sp)
    8000acc0:	02010113          	addi	sp,sp,32
    8000acc4:	00008067          	ret
    8000acc8:	0014d493          	srli	s1,s1,0x1
    8000accc:	ffffe097          	auipc	ra,0xffffe
    8000acd0:	5dc080e7          	jalr	1500(ra) # 800092a8 <mycpu>
    8000acd4:	0014f493          	andi	s1,s1,1
    8000acd8:	06952e23          	sw	s1,124(a0)
    8000acdc:	fc5ff06f          	j	8000aca0 <push_on+0x34>

000000008000ace0 <pop_on>:
    8000ace0:	ff010113          	addi	sp,sp,-16
    8000ace4:	00813023          	sd	s0,0(sp)
    8000ace8:	00113423          	sd	ra,8(sp)
    8000acec:	01010413          	addi	s0,sp,16
    8000acf0:	ffffe097          	auipc	ra,0xffffe
    8000acf4:	5b8080e7          	jalr	1464(ra) # 800092a8 <mycpu>
    8000acf8:	100027f3          	csrr	a5,sstatus
    8000acfc:	0027f793          	andi	a5,a5,2
    8000ad00:	04078463          	beqz	a5,8000ad48 <pop_on+0x68>
    8000ad04:	07852783          	lw	a5,120(a0)
    8000ad08:	02f05863          	blez	a5,8000ad38 <pop_on+0x58>
    8000ad0c:	fff7879b          	addiw	a5,a5,-1
    8000ad10:	06f52c23          	sw	a5,120(a0)
    8000ad14:	07853783          	ld	a5,120(a0)
    8000ad18:	00079863          	bnez	a5,8000ad28 <pop_on+0x48>
    8000ad1c:	100027f3          	csrr	a5,sstatus
    8000ad20:	ffd7f793          	andi	a5,a5,-3
    8000ad24:	10079073          	csrw	sstatus,a5
    8000ad28:	00813083          	ld	ra,8(sp)
    8000ad2c:	00013403          	ld	s0,0(sp)
    8000ad30:	01010113          	addi	sp,sp,16
    8000ad34:	00008067          	ret
    8000ad38:	00002517          	auipc	a0,0x2
    8000ad3c:	20050513          	addi	a0,a0,512 # 8000cf38 <digits+0x70>
    8000ad40:	fffff097          	auipc	ra,0xfffff
    8000ad44:	f2c080e7          	jalr	-212(ra) # 80009c6c <panic>
    8000ad48:	00002517          	auipc	a0,0x2
    8000ad4c:	1d050513          	addi	a0,a0,464 # 8000cf18 <digits+0x50>
    8000ad50:	fffff097          	auipc	ra,0xfffff
    8000ad54:	f1c080e7          	jalr	-228(ra) # 80009c6c <panic>

000000008000ad58 <__memset>:
    8000ad58:	ff010113          	addi	sp,sp,-16
    8000ad5c:	00813423          	sd	s0,8(sp)
    8000ad60:	01010413          	addi	s0,sp,16
    8000ad64:	1a060e63          	beqz	a2,8000af20 <__memset+0x1c8>
    8000ad68:	40a007b3          	neg	a5,a0
    8000ad6c:	0077f793          	andi	a5,a5,7
    8000ad70:	00778693          	addi	a3,a5,7
    8000ad74:	00b00813          	li	a6,11
    8000ad78:	0ff5f593          	andi	a1,a1,255
    8000ad7c:	fff6071b          	addiw	a4,a2,-1
    8000ad80:	1b06e663          	bltu	a3,a6,8000af2c <__memset+0x1d4>
    8000ad84:	1cd76463          	bltu	a4,a3,8000af4c <__memset+0x1f4>
    8000ad88:	1a078e63          	beqz	a5,8000af44 <__memset+0x1ec>
    8000ad8c:	00b50023          	sb	a1,0(a0)
    8000ad90:	00100713          	li	a4,1
    8000ad94:	1ae78463          	beq	a5,a4,8000af3c <__memset+0x1e4>
    8000ad98:	00b500a3          	sb	a1,1(a0)
    8000ad9c:	00200713          	li	a4,2
    8000ada0:	1ae78a63          	beq	a5,a4,8000af54 <__memset+0x1fc>
    8000ada4:	00b50123          	sb	a1,2(a0)
    8000ada8:	00300713          	li	a4,3
    8000adac:	18e78463          	beq	a5,a4,8000af34 <__memset+0x1dc>
    8000adb0:	00b501a3          	sb	a1,3(a0)
    8000adb4:	00400713          	li	a4,4
    8000adb8:	1ae78263          	beq	a5,a4,8000af5c <__memset+0x204>
    8000adbc:	00b50223          	sb	a1,4(a0)
    8000adc0:	00500713          	li	a4,5
    8000adc4:	1ae78063          	beq	a5,a4,8000af64 <__memset+0x20c>
    8000adc8:	00b502a3          	sb	a1,5(a0)
    8000adcc:	00700713          	li	a4,7
    8000add0:	18e79e63          	bne	a5,a4,8000af6c <__memset+0x214>
    8000add4:	00b50323          	sb	a1,6(a0)
    8000add8:	00700e93          	li	t4,7
    8000addc:	00859713          	slli	a4,a1,0x8
    8000ade0:	00e5e733          	or	a4,a1,a4
    8000ade4:	01059e13          	slli	t3,a1,0x10
    8000ade8:	01c76e33          	or	t3,a4,t3
    8000adec:	01859313          	slli	t1,a1,0x18
    8000adf0:	006e6333          	or	t1,t3,t1
    8000adf4:	02059893          	slli	a7,a1,0x20
    8000adf8:	40f60e3b          	subw	t3,a2,a5
    8000adfc:	011368b3          	or	a7,t1,a7
    8000ae00:	02859813          	slli	a6,a1,0x28
    8000ae04:	0108e833          	or	a6,a7,a6
    8000ae08:	03059693          	slli	a3,a1,0x30
    8000ae0c:	003e589b          	srliw	a7,t3,0x3
    8000ae10:	00d866b3          	or	a3,a6,a3
    8000ae14:	03859713          	slli	a4,a1,0x38
    8000ae18:	00389813          	slli	a6,a7,0x3
    8000ae1c:	00f507b3          	add	a5,a0,a5
    8000ae20:	00e6e733          	or	a4,a3,a4
    8000ae24:	000e089b          	sext.w	a7,t3
    8000ae28:	00f806b3          	add	a3,a6,a5
    8000ae2c:	00e7b023          	sd	a4,0(a5)
    8000ae30:	00878793          	addi	a5,a5,8
    8000ae34:	fed79ce3          	bne	a5,a3,8000ae2c <__memset+0xd4>
    8000ae38:	ff8e7793          	andi	a5,t3,-8
    8000ae3c:	0007871b          	sext.w	a4,a5
    8000ae40:	01d787bb          	addw	a5,a5,t4
    8000ae44:	0ce88e63          	beq	a7,a4,8000af20 <__memset+0x1c8>
    8000ae48:	00f50733          	add	a4,a0,a5
    8000ae4c:	00b70023          	sb	a1,0(a4)
    8000ae50:	0017871b          	addiw	a4,a5,1
    8000ae54:	0cc77663          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000ae58:	00e50733          	add	a4,a0,a4
    8000ae5c:	00b70023          	sb	a1,0(a4)
    8000ae60:	0027871b          	addiw	a4,a5,2
    8000ae64:	0ac77e63          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000ae68:	00e50733          	add	a4,a0,a4
    8000ae6c:	00b70023          	sb	a1,0(a4)
    8000ae70:	0037871b          	addiw	a4,a5,3
    8000ae74:	0ac77663          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000ae78:	00e50733          	add	a4,a0,a4
    8000ae7c:	00b70023          	sb	a1,0(a4)
    8000ae80:	0047871b          	addiw	a4,a5,4
    8000ae84:	08c77e63          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000ae88:	00e50733          	add	a4,a0,a4
    8000ae8c:	00b70023          	sb	a1,0(a4)
    8000ae90:	0057871b          	addiw	a4,a5,5
    8000ae94:	08c77663          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000ae98:	00e50733          	add	a4,a0,a4
    8000ae9c:	00b70023          	sb	a1,0(a4)
    8000aea0:	0067871b          	addiw	a4,a5,6
    8000aea4:	06c77e63          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000aea8:	00e50733          	add	a4,a0,a4
    8000aeac:	00b70023          	sb	a1,0(a4)
    8000aeb0:	0077871b          	addiw	a4,a5,7
    8000aeb4:	06c77663          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000aeb8:	00e50733          	add	a4,a0,a4
    8000aebc:	00b70023          	sb	a1,0(a4)
    8000aec0:	0087871b          	addiw	a4,a5,8
    8000aec4:	04c77e63          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000aec8:	00e50733          	add	a4,a0,a4
    8000aecc:	00b70023          	sb	a1,0(a4)
    8000aed0:	0097871b          	addiw	a4,a5,9
    8000aed4:	04c77663          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000aed8:	00e50733          	add	a4,a0,a4
    8000aedc:	00b70023          	sb	a1,0(a4)
    8000aee0:	00a7871b          	addiw	a4,a5,10
    8000aee4:	02c77e63          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000aee8:	00e50733          	add	a4,a0,a4
    8000aeec:	00b70023          	sb	a1,0(a4)
    8000aef0:	00b7871b          	addiw	a4,a5,11
    8000aef4:	02c77663          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000aef8:	00e50733          	add	a4,a0,a4
    8000aefc:	00b70023          	sb	a1,0(a4)
    8000af00:	00c7871b          	addiw	a4,a5,12
    8000af04:	00c77e63          	bgeu	a4,a2,8000af20 <__memset+0x1c8>
    8000af08:	00e50733          	add	a4,a0,a4
    8000af0c:	00b70023          	sb	a1,0(a4)
    8000af10:	00d7879b          	addiw	a5,a5,13
    8000af14:	00c7f663          	bgeu	a5,a2,8000af20 <__memset+0x1c8>
    8000af18:	00f507b3          	add	a5,a0,a5
    8000af1c:	00b78023          	sb	a1,0(a5)
    8000af20:	00813403          	ld	s0,8(sp)
    8000af24:	01010113          	addi	sp,sp,16
    8000af28:	00008067          	ret
    8000af2c:	00b00693          	li	a3,11
    8000af30:	e55ff06f          	j	8000ad84 <__memset+0x2c>
    8000af34:	00300e93          	li	t4,3
    8000af38:	ea5ff06f          	j	8000addc <__memset+0x84>
    8000af3c:	00100e93          	li	t4,1
    8000af40:	e9dff06f          	j	8000addc <__memset+0x84>
    8000af44:	00000e93          	li	t4,0
    8000af48:	e95ff06f          	j	8000addc <__memset+0x84>
    8000af4c:	00000793          	li	a5,0
    8000af50:	ef9ff06f          	j	8000ae48 <__memset+0xf0>
    8000af54:	00200e93          	li	t4,2
    8000af58:	e85ff06f          	j	8000addc <__memset+0x84>
    8000af5c:	00400e93          	li	t4,4
    8000af60:	e7dff06f          	j	8000addc <__memset+0x84>
    8000af64:	00500e93          	li	t4,5
    8000af68:	e75ff06f          	j	8000addc <__memset+0x84>
    8000af6c:	00600e93          	li	t4,6
    8000af70:	e6dff06f          	j	8000addc <__memset+0x84>

000000008000af74 <__memmove>:
    8000af74:	ff010113          	addi	sp,sp,-16
    8000af78:	00813423          	sd	s0,8(sp)
    8000af7c:	01010413          	addi	s0,sp,16
    8000af80:	0e060863          	beqz	a2,8000b070 <__memmove+0xfc>
    8000af84:	fff6069b          	addiw	a3,a2,-1
    8000af88:	0006881b          	sext.w	a6,a3
    8000af8c:	0ea5e863          	bltu	a1,a0,8000b07c <__memmove+0x108>
    8000af90:	00758713          	addi	a4,a1,7
    8000af94:	00a5e7b3          	or	a5,a1,a0
    8000af98:	40a70733          	sub	a4,a4,a0
    8000af9c:	0077f793          	andi	a5,a5,7
    8000afa0:	00f73713          	sltiu	a4,a4,15
    8000afa4:	00174713          	xori	a4,a4,1
    8000afa8:	0017b793          	seqz	a5,a5
    8000afac:	00e7f7b3          	and	a5,a5,a4
    8000afb0:	10078863          	beqz	a5,8000b0c0 <__memmove+0x14c>
    8000afb4:	00900793          	li	a5,9
    8000afb8:	1107f463          	bgeu	a5,a6,8000b0c0 <__memmove+0x14c>
    8000afbc:	0036581b          	srliw	a6,a2,0x3
    8000afc0:	fff8081b          	addiw	a6,a6,-1
    8000afc4:	02081813          	slli	a6,a6,0x20
    8000afc8:	01d85893          	srli	a7,a6,0x1d
    8000afcc:	00858813          	addi	a6,a1,8
    8000afd0:	00058793          	mv	a5,a1
    8000afd4:	00050713          	mv	a4,a0
    8000afd8:	01088833          	add	a6,a7,a6
    8000afdc:	0007b883          	ld	a7,0(a5)
    8000afe0:	00878793          	addi	a5,a5,8
    8000afe4:	00870713          	addi	a4,a4,8
    8000afe8:	ff173c23          	sd	a7,-8(a4)
    8000afec:	ff0798e3          	bne	a5,a6,8000afdc <__memmove+0x68>
    8000aff0:	ff867713          	andi	a4,a2,-8
    8000aff4:	02071793          	slli	a5,a4,0x20
    8000aff8:	0207d793          	srli	a5,a5,0x20
    8000affc:	00f585b3          	add	a1,a1,a5
    8000b000:	40e686bb          	subw	a3,a3,a4
    8000b004:	00f507b3          	add	a5,a0,a5
    8000b008:	06e60463          	beq	a2,a4,8000b070 <__memmove+0xfc>
    8000b00c:	0005c703          	lbu	a4,0(a1)
    8000b010:	00e78023          	sb	a4,0(a5)
    8000b014:	04068e63          	beqz	a3,8000b070 <__memmove+0xfc>
    8000b018:	0015c603          	lbu	a2,1(a1)
    8000b01c:	00100713          	li	a4,1
    8000b020:	00c780a3          	sb	a2,1(a5)
    8000b024:	04e68663          	beq	a3,a4,8000b070 <__memmove+0xfc>
    8000b028:	0025c603          	lbu	a2,2(a1)
    8000b02c:	00200713          	li	a4,2
    8000b030:	00c78123          	sb	a2,2(a5)
    8000b034:	02e68e63          	beq	a3,a4,8000b070 <__memmove+0xfc>
    8000b038:	0035c603          	lbu	a2,3(a1)
    8000b03c:	00300713          	li	a4,3
    8000b040:	00c781a3          	sb	a2,3(a5)
    8000b044:	02e68663          	beq	a3,a4,8000b070 <__memmove+0xfc>
    8000b048:	0045c603          	lbu	a2,4(a1)
    8000b04c:	00400713          	li	a4,4
    8000b050:	00c78223          	sb	a2,4(a5)
    8000b054:	00e68e63          	beq	a3,a4,8000b070 <__memmove+0xfc>
    8000b058:	0055c603          	lbu	a2,5(a1)
    8000b05c:	00500713          	li	a4,5
    8000b060:	00c782a3          	sb	a2,5(a5)
    8000b064:	00e68663          	beq	a3,a4,8000b070 <__memmove+0xfc>
    8000b068:	0065c703          	lbu	a4,6(a1)
    8000b06c:	00e78323          	sb	a4,6(a5)
    8000b070:	00813403          	ld	s0,8(sp)
    8000b074:	01010113          	addi	sp,sp,16
    8000b078:	00008067          	ret
    8000b07c:	02061713          	slli	a4,a2,0x20
    8000b080:	02075713          	srli	a4,a4,0x20
    8000b084:	00e587b3          	add	a5,a1,a4
    8000b088:	f0f574e3          	bgeu	a0,a5,8000af90 <__memmove+0x1c>
    8000b08c:	02069613          	slli	a2,a3,0x20
    8000b090:	02065613          	srli	a2,a2,0x20
    8000b094:	fff64613          	not	a2,a2
    8000b098:	00e50733          	add	a4,a0,a4
    8000b09c:	00c78633          	add	a2,a5,a2
    8000b0a0:	fff7c683          	lbu	a3,-1(a5)
    8000b0a4:	fff78793          	addi	a5,a5,-1
    8000b0a8:	fff70713          	addi	a4,a4,-1
    8000b0ac:	00d70023          	sb	a3,0(a4)
    8000b0b0:	fec798e3          	bne	a5,a2,8000b0a0 <__memmove+0x12c>
    8000b0b4:	00813403          	ld	s0,8(sp)
    8000b0b8:	01010113          	addi	sp,sp,16
    8000b0bc:	00008067          	ret
    8000b0c0:	02069713          	slli	a4,a3,0x20
    8000b0c4:	02075713          	srli	a4,a4,0x20
    8000b0c8:	00170713          	addi	a4,a4,1
    8000b0cc:	00e50733          	add	a4,a0,a4
    8000b0d0:	00050793          	mv	a5,a0
    8000b0d4:	0005c683          	lbu	a3,0(a1)
    8000b0d8:	00178793          	addi	a5,a5,1
    8000b0dc:	00158593          	addi	a1,a1,1
    8000b0e0:	fed78fa3          	sb	a3,-1(a5)
    8000b0e4:	fee798e3          	bne	a5,a4,8000b0d4 <__memmove+0x160>
    8000b0e8:	f89ff06f          	j	8000b070 <__memmove+0xfc>
	...
