;
; Ejercicios3.asm
;
; Created: 09/11/2018 08:41:41 a. m.
; Author : juan_
;


; Replace with your application code
start:

    inc r16
	LDI R16, 10
	LDI R17, 36
	CICLO:
	CP R17, R16
	BRLO FIN
	LSR R16
	RJMP CICLO
	FIN:
	STS 0X100, R16
	RJMP FIN
    rjmp start
