@ Álvarez Lapizco Miguel Ángel
@ Lenguajes de Interfaz

.global _start
@ Etiqueta de comienzo.
_start:
        MOV R0, #0 @ Colocar el valor de 0 al registro 0.
        MOV R2, #0 @ Colocar el valor de 0 al registro 2.
        
@ Ciclo para sumar los números.
loop:
        ADD R0, R0, #1  @ Valor para la condición (i++).
        ADD R2, R2, R0  @ Se suma el valor i a R2.
        CMP R0, #15     @ Se compara i con el límite del ciclo.
        BLE loop        @ Se repite el ciclo.
        
@ Salir del programa.
_exit:
        MOV R0, R2      
        MOV R7, #1
        SWI 0

