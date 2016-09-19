@ Espinoza Covarrubias Alejandro 13211465
@ Practica 2

@ add.s - codigo simple de adicion

@ instrucciones para ensamblador.
.section	.data		@ una seccion para datos (sin usar)
.section	.text		@ una seccion para texto (sin usar)
.globl		_start		@ Asigna una etiqueta global "_start"

_start:				@ comienza el codigo
mov %r1, $7			@ coloca el valor 7 en r1
mov %r0, $8			@ coloca el valor 8 en r0
add %r0, %r0, %r1		@ agrega r0 a r1 y almacena el resultado en r0

mov %r7, $1			@ envia una salida a syscall
svc $0				@ la interrupcionpara activar el kernel
