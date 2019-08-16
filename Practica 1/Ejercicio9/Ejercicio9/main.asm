;
; Ejercicio9.asm
;
; Multiplique con signo (0x100)*(0x101) y guarde en la localidad 0x103 y 0x102
start:
    inc r16
	;LDS R16, 0X100
	;LDS R17, 0X101
	LDI R16, 0X60
	LDI R17, 0XAA
	MULS R16,R17
	STS 0X102, R0
	STS 0X103, R1
    rjmp start
