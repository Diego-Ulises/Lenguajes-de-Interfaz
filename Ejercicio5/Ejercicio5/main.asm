;
; Ejercicio5.asm
;
; Ponga en 0 los bits b1, b4 y b6 de la localidad 0x100 a)Usando una mascara con un AND y b)Usando CBR
start:
    inc r16
	LDI R16, 0XFF
	STS 0X100, R16
	LDI R17, 0XAD
	AND R16, R17
	STS 0X100, R16
	CLR R16
	STS 0X100, R16
	SBR R16, 0XAD
	STS 0X100,R16
    rjmp start
