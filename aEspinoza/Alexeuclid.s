@ Espinoza Covarrubias Alejandro 134211465
@ Practica 5

@ euclid.s
@ Algoritmo GCD (ejemplo tomado de  Knuth TAOCP, p.9)

@ r1 tiene el primer valor
@ r0 tiene el sgvundo valor

.section	.data
vals:
	.long 6099, 2166
.section	.text
.globl	_start

_start:
	ldr r2, =vals		@ Hace a r1 punto de partido de los valores
	ldr r1, [r2]		@ Carga el primer valor en r2
	ldr r0, [r2, #4]	@ Carga el segundo valor en r0

gcd:
	cmp r0, r1		@ Compara r0 y r1
	subgt r0, r0, r1	@ Si r0 > r1, r0 = r0 - r1
	sublt r1, r1, r0	@ Si r0 < r1, r1 = r1 - r0
	bne gcd			@ Si r0 != r1, repite

	mov 	r7, $1		@ Prepar para sali 
	swi	0		@ Activar kernel

.end
