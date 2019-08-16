;
; Programa2.asm
;
; Created: 30/10/2018 09:48:58 a. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	LDS R16, 0X100
	LDS R17, 0X101
	CP R17, R16
	BRSH FIN
	CLR R16
	STS 0X100, R16
	ADD R17, R16
	STS 0x101, R17
	FIN: RJMP FIN
    rjmp start
