@ Plantilla para la práctica de Lenguajes de Interfaz.

.section        .data
.section        .text
.globl          _start

_start:
mov %r1, $3		@ coloca el valor de 20 a r1
mov %r0, $5		@ coloca el valor de 30 a r0
add %r0, %r0, %r1	@ suma r0 a r1 y coloca el valor en r0

mov %r7, $1
svc $0



