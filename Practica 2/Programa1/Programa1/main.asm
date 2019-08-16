;
; Programa1.asm
;
; Poner AB en las localidades 0X100 a 0X1FA usando ciclos y direccionamiento indexado
start:
    inc r16
	
	LDI R28, 0X00
	LDI R29, 0X01
	LDI R16, 0XAB
	LDI R17, 0XFA
	SALTA:
	CP R17, R28
	BRLO FIN
	ST Y+,R16
	RJMP SALTA
	FIN:
	RJMP FIN


    rjmp start
