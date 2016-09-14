@ Espinoza Covarrubias Alejandro 13211465
@ Practica 1

@ hello.s - "Hello ARM!" program

.data			@ store string and length in 2 variables
msg:
	.ascii "Moriremos todos XD!!"
len= . - msg

.globl	_start
_start:
	mov r0, $1
	ldr r1, =msg	@ pointer string to be printed in r1
	ldr r2, =len	@ length of string in r2
	mov r7, $4	@ prepre to output to console
	swi $0		@ wke kernel

	mov r0, $0	@ set the return value to 0
	mov r7, $1	@ prepare to exit
	svc $0		@ wake kernel
