;
; Ejercicios5.asm
;
; Created: 09/11/2018 09:16:02 a. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	LDI R16,-2
	STS 0X100,R16
	LDI R17,-1
	STS 0X101,R17
	LDI R18, 6
	CICLO:
	INC R16
	STS 0X100,R16
	DEC R17
	STS 0X101,R17
	CP R18,R16
	BRLT condicion2
	RJMP FIN
	condicion2:
	CPI R17, 4
	BRLT CICLO
	RJMP FIN
	FIN:
	RJMP FIN

    rjmp start
