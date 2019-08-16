;
; Ejercicios4.asm
;
; Created: 09/11/2018 08:59:43 a. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	LDI R16, 3
	LDI R17, 2
	LDI R18, 5
	LDI R19, 3
	CICLO:
	CP R16,R18
	BRSH Instruccion
	RJMP condicion2
	condicion2:
	CP R16,R19
	BREQ Instruccion
	RJMP FIN
	Instruccion:
	CLR R20
	corrimiento:
	CP R20,R17
	BRSH CICLO
	LSL R16
	INC R20
	RJMP corrimiento
	FIN:
	RJMP FIN
    rjmp start
