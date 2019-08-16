;
; Ejercicio4.asm
;
; Created: 05/10/2018 01:24:45 a. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	LDS R16, 0X100
	LDI R17, 0X89
	OR R16, R17
	STS 0X100, R16
	CLR R16
	STS 0X100, R16
	SBR R16, 0X89
	STS 0X100,R16
    rjmp start
