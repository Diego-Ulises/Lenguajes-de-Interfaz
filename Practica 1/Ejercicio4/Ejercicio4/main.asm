;
; Ejercicio4.asm
;
; Ponga en 1 los bits b0, b3 y b7 de la localidad de 0x100 a)Usando una mascara con la operación OR b)Usando SBR
start:
    inc r16
	LDS R16, 0X100
	LDI R17, 0X89
	OR R16, R17
	STS 0X100, R16
	CLR R16
	STS 0X100, R16
	SBR R16, 0X89
	STS 0X100,R16
    rjmp start
