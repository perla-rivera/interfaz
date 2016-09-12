.section	.data
.section	.text

numbers:
.long 3,4,9,7,5,7,2,5,4,3,6,4,6,7,8,6,3,1,4,7,8,7,9,6,9,0
numbers2:
.long 0

.globl		_start
_start:
ldr %r1, =numbers
ldr %r3, [%r1]
ldr %r0, =numbers2

loop:
	cmp %r3, $0
	beq exit

	and %r3, $1 @ check even or odd
	mov %r3, $2 @par
	ble next
	mov %r3, $1 @impar

next:
	str %r0, [%r3] @almacenar resultado
	ldr %r3,[%r1,#4]!
	ble loop
exit:

mov %r7, $1	@ exit syscall
svc $0		@ wake kernel
.end
