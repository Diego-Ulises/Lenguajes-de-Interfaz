;
; Ejercicio5.asm
;
; Created: 05/10/2018 02:02:55 a. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	LDI R16, 0XFF
	STS 0X100, R16
	LDI R17, 0XAD
	AND R16, R17
	STS 0X100, R16
	CLR R16
	STS 0X100, R16
	SBR R16, 0XAD
	STS 0X100,R16
    rjmp start
