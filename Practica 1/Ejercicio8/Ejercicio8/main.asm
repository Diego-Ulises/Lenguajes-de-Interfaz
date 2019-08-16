;
; Ejercicio8.asm
;
; Multiplique sin signo (0x101)*7 y guarde en la localidad 0x103 y 0x102
start:
    inc r16
	;LDS R16, 0X101
	LDI R16, 0XAA
	LDI R17, 0X07
	MUL R16, R17
	STS 0X102, R0
	STS 0X103, R1
    rjmp start
