@ Espinoza Covarrubias Alejandro 13211465
@ Practica 1

@ hello.s - "Hello ARM!" program

.data			@ tipo de dato string y longitud en 2 variables
msg:
	.ascii "Moriremos todos XD!!!"
len= . - msg

.globl	_start
_start:
	mov r0, $1
	ldr r1, =msg	@ Punto string para mostrar en r1
	ldr r2, =len	@ Longitud del string en r2
	mov r7, $4	@ Prepara para salida en la consola
	swi $0		@ Activa kernel

	mov r0, $0	@ Retorna el valor en 0
	mov r7, $1	@ Prepara para salir
	svc $0		@ Activa kernel
