@ hello.s - "Hello ARM!" program

.data
msg:
	.ascii "Hello ARM!\n"
len = . - msg
.section .text
.globl _start
_start:

 mov r0, $1
 ldr r1, =msg
 ldr r2, =len
 mov r7, $4
 swi $0

 mov r0, $0
 mov r7, $1
 svc $0
