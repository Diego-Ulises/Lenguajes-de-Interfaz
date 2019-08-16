;
; Ejercicio1.asm
;
; Created: 31/10/2018 09:11:11 a. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	CLR R16
	STS 0X100, R16 ;a=0
	STS 0X101, R16 ;b=0
	LDI R17, 10
	CICLO: CP R17, R16		;cambio para >
	BRLO FIN		;> por cambio en la comparacion
	LDI R18, 2
	LDS R19, 0X101	; lee b
	ADD R19, R18
	STS 0x101, R19
	INC R16
	RJMP CICLO
	FIN: RJMP FIN
    rjmp start
