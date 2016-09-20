/* Perform R0 = R1 + R2 */
	.global _start
_start:
	MOV R1, #50 	/* Colocar 50 a R1 */
	MOV R2, #60 	/* Colocar 60 a R2 */
	ADDS R0, R1, R2	/*R0 = R1 + R2 */
	MOV R7, #1
	SWI 0
