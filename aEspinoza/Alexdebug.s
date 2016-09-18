@ Espinoza Covarrubias Alejandro 13211465
@ Practica 6

@ use_gdb.s
@ programa de demostracion

.section	.data
.section	.text
.globl		_start

_start:
mov r1, $5	@ carga r1 con 5
cmp r1, $4	@ compara r1 con 4
sub r1, r1, $1	@ obtiene 1
cmp r1, $4	@ r1 ahora es igual a 4
sub r1, r1, $1
cmp r1, $4

mov r7, $1	@ salir de  syscall
svc $0		@ activar kernel
.end
