;
; Programa1.asm
;
; Created: 30/10/2018 09:24:02 a. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	LDS R17, 0X100
	LDS R16, 0X101
	CP R16, R17
	BRLO FIN
	LDI R16, 20
	STS 0X100, R16
	RJMP FIN
	FIN: RJMP FIN

