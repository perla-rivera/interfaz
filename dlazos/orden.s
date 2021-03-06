.section	.data

numbers:                       @ the data we are going to use.
.long	3,67,34,222,45,75,54,34,44,33,22,11,66,0

.globl	_start

_start:
ldr %r1, =numbers		@ set r1 to start address of "numbers"
ldr %r3, [%r1]		        @ load r3 with first number 
mov %r0, %r3			@ at start the current number must be the largest.

loop:
  cmp %r3, $0			@ check if r3 holds zero (end of list)
  beq exit			@ if so, exit
  ldr %r3, [%r1,#4]!		@ load next item into r3
  cmp %r3, %r0			@ compare r0 and r3
  ble loop			@ goto start of loop if r3 <= r0
  mov %r0, %r3			@ otherwise put r3 into r0
  bal loop			@ goto start of loop (Branch ALways)

exit:				@ largest value is now in r0
mov %r7, $1			@ prepare to exit
svc $0				@ wake kernel
.end
