;
; Ejercicio7.asm
;
; Haga la resta
start:
    inc r16
	;LDS R16, 0X100
	;LDS R17, 0X102
	LDI R16, 0XAA
	LDI R17, 0X60
	SUB R16, R17
	STS 0X104, R16
	;LDS R16, 0X101
	;LDS R17, 0X103
	LDI R16, 0X0A
	LDI R17, 0X05
	SBC R16, R17
	STS 0X105, R16
    rjmp start
