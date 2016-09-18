@ Espinoza Covarrubias Alejandro 13211465
@ Practica 7

@ dummy.s
@ un template para programas ensamblador

.section	.data
.section	.text
.globl		_start

_start:
nop		@ sin operacion
mov r7, $1	@ salida de  syscall
svc $0		@ activar kernel
.end
