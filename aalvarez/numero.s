.section     .data
num:
      .long 12345
.globl  _start
_start:
       ldr r3, =num
       ldr r4, [r3]
       mov r5, $0
loop:
     cmp r4, $9
     ble print
     sub r4, r4, $10
     add r5, r5, $1
     bal loop
print:
     add r0, r4, $0x30
     bl PrintChar
     cmp r5, $0
     beq exit
     mov r4, r5
     mov r5, $0
     bal loop
exit:
     mov   r0, $0xA
     bl    PrintChar
     mov   r0, $0
     mov   r7, $1
     svc   $0

PrintChar:
        stmfd  sp!, {r0-r5, r7, lr}
        mov    r1, sp
        mov    r0, $1
        mov    r2, r0
        mov    r7, $4
        swi    $0
        ldmfd  sp!, {r0-r5, r7, pc}

.end
