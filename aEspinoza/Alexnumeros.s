@ Espinoza Covarrubias Alejandro 13211465
@ Practica 4

@ number.s
@ Programa de prueba para imprimir un numero

.section	.data
num:				@ crea una variable
	.long 12345
.globl	_start
_start:
	ldr r3, =num		@ Carga r3 con un numero
	ldr r4, [r3]		@ Carga r4 con el numero
	mov r5, $0		@ Contador desde 0
loop:
	cmp r4, $9		@ si r4 <= 9 ...
	ble print		@ mostrar el digito
	sub r4, r4, $10		@ extraer 10 de r4
	add r5, r5, $1		@ agregar uno al contador
	bal loop		@ regresa al valor mas alto del ciclo
print:
	add r0, r4, $0x30	@ Carga r0 con r4 + 48 (codigo ascii)
	bl PrintChar		@ llama a la funcion PrintChar
	cmp r5, $0		@ si el contador es cero ...
	beq exit		@ Termina
	mov r4, r5		@ Carga r4 con valor de contador
	mov r5, $0		@ Conatador en cero
	bal loop		@ Regresa al valor mas alto del ciclo
exit:
	mov	r0, $0xA	@ Muestra una nueva linea
	bl	PrintChar
	mov	r0, $0		@ Salir
	mov	r7, $1
	svc	$0

PrintChar:
	stmfd	sp!, {r0-r5, r7, r1}	@ push registers onto stack
	mov	r1, sp			@ stack pointer holds char values
	mov	r0, $1			@ stdout
	mov	r2, r0			@ one char
	mov	r7, $4			@ write syscall
	swi	$0			@ wake kernel
	ldmfd	sp!, {r0-r5, r7, pc}	@ restore registers

.end
