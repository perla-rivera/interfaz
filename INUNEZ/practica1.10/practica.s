.section	.data
.section	.text

numbers:
.long 3,4,9,7,5,75,2,5,4,3,6,4,367,7,87,64,3,1,4,7,8,7,93,64,978

.globl		_start
_start:
ldr %r1 =numbers
ldr %3, [%r1]
mov %r0, %r3

loop:
	cmp %r3, $0
	beq exit
	ldr%r3,[%r1,#4]!

	

exit:

mov r7, $1	@ exit syscall
svc $0		@ wake kernel
.end
