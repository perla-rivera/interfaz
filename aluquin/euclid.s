@euclid.s
@Arturo Luquin  2016.08.29

@r1 holds the  first value
@r2 holds the second value

.section .data
vals: .long 6099, 2166
.section .text
.globl _start

_start:
ldr r2, =vals
ldr r1,[r2]
ldr r0, [r2,#4]

gcd: cmp r0,r1
subgt r0,r0,r1
sublt r1,r1,r0
bne gcd

mov r7,$1
swi 0

