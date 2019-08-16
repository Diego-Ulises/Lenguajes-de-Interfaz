;
; Ejercicio8.asm
;
; Created: 05/10/2018 05:35:45 p. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	;LDS R16, 0X101
	LDI R16, 0XAA
	LDI R17, 0X07
	MUL R16, R17
	STS 0X102, R0
	STS 0X103, R1
    rjmp start
