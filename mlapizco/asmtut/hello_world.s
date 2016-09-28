@ Miguel Ángel Álvarez Lapizco
@ 13211477
@ 27/Septiembre/2016
@ Programa de Hola Mundo por ASMTut.

.global _start

@ Etiqueta de comienzo.
_start:
	MOV R7, #4 	@ Colocar el valor 4 en el Registro 7.
	MOV R0, #1 	@ Colocar el valor 1 en el Registro 0.
	MOV R2, #12 	@ Colocar el número de caracteres en la cadena a mostrar.
	LDR R1, =message	@ Nombre de la variable que contiene el mensaje.
	SWI 0

@ Salir del programa.
end:
	MOV R7, #1
	SWI 0 		@ SWI 0 para darle el control a la terminal.

.data
	@ Desplegar el mensaje.
	message:
		.ascii "Hello World\n"
