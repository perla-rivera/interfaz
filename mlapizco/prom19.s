        .global _start

_start:
        MOV R0, #0
	MOV R2, #0
loop:
        ADD R0, R0, #1
        ADD R2, R2, R0
        CMP R0, #9
        BLE loop
_exit:
	MOV R0, R2
        MOV R7, #1
        SWI 0

