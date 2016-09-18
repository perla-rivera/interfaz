@ Espinoza Covarrubias Alejandro 13211465
@ Ejercicio 14 mayor 3^75 y 2^100
@ max.s
@ find the maximun from a list of numbers.
@ nicked & refactores for ARM fromn "Programming from the Ground Up".


@ r1 - used to hold address of data items
@ r0 - used for the largest item
@ r3 - used for current data item

.section	.data

numbers:			@ the data we are poing toi use.
.long	300000000000000000000000000000000000000000000000000000000000000000000000000000,2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,0,56,43

.globl _start

_start:
ldr %r1, =numbers		@ set r1 to start address of "numbers"
ldr %r3, [%r1]			@ load r3 with first number
mov %r0, %r3			@ at start the current number must be the largest.

loop:
	cmp %r3, $0		@ check if r3 holds zero (end of list)
	beq exit		@ if so, exit
	ldr %r3, [%r1,#4]!	@ load next item into r3
	cmp %r3, %r0		@ compare r0 and r3
	ble loop		@ go to start of loop if r3 <= r0
	mov %r0, %r3		@ otherwise put r3 into r0
	bal loop		@ go to start of loop (branch always)

exit:				@ largest value is now in r0
mov %r7, $1			@ prepare to exit
svc $0				@ wake kernel
.end				@ marks the end the codees
