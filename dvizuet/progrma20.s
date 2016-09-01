.MODEL SMALL 
.STACK
.DATA
 X DB 1,2,3,4,5,6,7,8,9,10
 MSG DB "SUM IS: $"
.CODE
PRIN MACRO
 AAM
 ADD AX,3030H

 MOV DH,AL
 MOV DL,AH
 MOV AH,02H
 INT 21H

 MOV DL,DH
 MOV AH,02H
 INT 21H
 ENDM
MAIN PROC
 MOV AX,@DATA
 MOV DS,AX

 MOV DX,OFFSET MSG
 MOV AH,09H
 INT 21H

 mov si,0 
 mov bl,0
 top:mov ax,0
 mov al,x[si]

 mov cl,2
 div cl
 cmp ah,0
 jne l1
 add bl,x[si]
 l1: inc si
 cmp si,10
 jnz top

 mov ax,0
 mov al,bl
 PRIN

 mov ah,4ch
 int 21h
 main endp
 end main
MAIN ENDP
END MAIN
