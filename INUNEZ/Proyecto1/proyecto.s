.section	.data
.section	.text

string: .asciz  "%c\n\0"
n:	.int	1

.text
.globl	_start
.extern printf

recursivo:
	cmp $r4, $100
	bl _exit
	add r4, #1
	and r4, #0
	bl recursivo
	ldr r0, =string
	mov r1, r5
	mov r2, r6
	bl printf

_start:
	ldr	r4, =n
	ldr r4, [r4]

	bl recursivo

_exit:
mov r7, #1
svc #0
.end
