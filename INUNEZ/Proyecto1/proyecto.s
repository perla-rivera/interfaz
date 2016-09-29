.section	.data 
.section	.text

.text
.globl	_start

n:	.int	1
num: 	.skip 20 * 4

recursivo:
	cmp r4, #3
	bl _exit

	add r4, r4, #1

	and r4, #0
	bl recursivo

	LDR R9, =num
	mov r1, r5
	mov r2, r6
	STR R4, [R9], #4
	BL recursivo

_start:
	ldr	r4, =n
	ldr r4, [r4]

	bl recursivo

_exit:

	LDR R9, =num
	MOV R0, R9
	MOV R2, #1
	MOV R7, #4
	SWI 0

mov r7, #1
svc #0
.end
