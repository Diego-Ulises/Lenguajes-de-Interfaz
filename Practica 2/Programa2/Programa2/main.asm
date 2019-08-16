;
; Programa2.asm
;
; Sumar el contenido de las localidades 0x100 a 0x199 usando ciclos y direccionamiento indexado
start:
    inc r16

	LOOPSUMA:

	LDI R26, 0X00
	LDI R27, 0X01

	LOOP:
	CPI R26, 0X9A
	BREQ FIN

	LD R16, X+
	ADD R17, R16
	RJMP LOOP
	FIN:
	RJMP FIN


    rjmp start
