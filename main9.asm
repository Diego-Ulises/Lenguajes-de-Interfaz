;
; Ejercicio9.asm
;
; Created: 05/10/2018 05:45:30 p. m.
; Author : juan_
;


; Replace with your application code
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
