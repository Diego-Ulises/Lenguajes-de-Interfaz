;
; Ejercicio2.asm
;
; Created: 31/10/2018 09:20:17 a. m.
; Author : juan_
;


; Replace with your application code
start:
	;0x100=a 0x101=b 0x102=c
    inc r16
	LDI R16, 30
	STS 0x101, R16	;Guarda 30 en b
	LDS R17, 0X101	;Guarda b en R17
	CLR R16			;Limpia r16=0
	STS 0X102, R16	;Guarda 0 en c
	LDI R16, -6		;R16=-6
	LDI R18, 2
	CICLO: CP R17, R16
	BRLT FIN
	ADD R16, R18
	STS 0X102, R16
	RJMP CICLO
	FIN: RJMP FIN
    rjmp start
