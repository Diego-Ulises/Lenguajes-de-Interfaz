;
; Programa4.asm
;
; Created: 04/11/2018 07:05:05 p. m.
; Author : juan_
;


; Replace with your application code
start:
    inc r16
	;0X100=a=R16
	LDS R16, 0X100
	LDI R17, 1
	CP R16, R17
	BRNE DOS  ;Compara si no es un uno sino es manda a Dos
	LDI R16, 2
	STS 0X100, R16
	RJMP FIN
	DOS: LDI R17, 2	
	CP R16, R17
	BRNE TRES	;Compara si no es un dos sino es manda a Tres
	LDI R16, 3
	STS 0X100, R16
	RJMP FIN
	TRES: LDI R17, 3
	CP R16, R17
	BRNE CUATRO ;Compara si no es un dos sino es manda a Cuatro
	LDI R16, 3
	STS 0X100, R16
	RJMP FIN
	CUATRO:LDI R17, 4
	CP R16, R17
	BRNE DEFAULT  ;Compara si no es un dos sino es manda a Default
	LDI R16, 5
	STS 0X100, R16
	RJMP FIN
	DEFAULT:LDI R16, 1
	STS 0X100, R16
	RJMP FIN
	FIN: RJMP FIN
    rjmp start
