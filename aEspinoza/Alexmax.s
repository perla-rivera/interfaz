@ Espinoza Covarrubias Alejandro 13211465
@ Practica 3

@ max.s
@ Encuntra el maximo de una lista de nuemros.
@ entalle  y refactores para ARM de "Programming from the Ground Up".


@ r1 - usado para matener direccion de datos de items
@ r0 - usado por el item mas largo
@ r3 - usado por el item actual

.section	.data

numbers:			@ El valor que estamos utilizando.
.long	3,67,34,222,45,75,54,34,44,33,22,11,66,0

.globl _start

_start:
ldr %r1, =numbers		@ Indica r1 para comensar con la direccion de "numberos"
ldr %r3, [%r1]			@ Carga r3 con el primer numero
mov %r0, %r3			@ Comienza el numero actual deb ser el mayor.

loop:
	cmp %r3, $0		@ Revisa si r3 tiene zero (final de la lista)
	beq exit		@ Entonces, salir
	ldr %r3, [%r1,#4]!	@ Carga siguiente item en r3
	cmp %r3, %r0		@ Compara r0 y r3
	ble loop		@ Regresa al principio de la lista y reliza de nuevo el ciclo si r3 <= r0
	mov %r0, %r3		@ De lo contrario asignar r3 en r0
	bal loop		@ Ir al inicio del ciclo (branch always)

exit:				@ El valor mayor esta ahora en r0
mov %r7, $1			@ Prepara para salir
svc $0				@ Activar kernel
.end				@ Indica el fin del codigo
