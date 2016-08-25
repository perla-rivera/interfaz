@hola.s "we are all stardust" 
.data
msg:
     .ascii "we are all stardust\n"
len =. - msg
.section .text
.globl  _start
_start:
    mov r0, $1
    ldr r1, =msg     @ pointer string to be printed in r1
    ldr r2, =len     @ lenght of string in r2
    mov r7, $4       @ prepare to output to console
    swi $0           @ wake kernel


    mov r0, $0       @ set the return value to 0
    mov r7, $1       @ preare to exit
    svc $0           @ wake kernel

