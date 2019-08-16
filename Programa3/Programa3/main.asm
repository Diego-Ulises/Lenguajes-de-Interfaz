;
; Programa3.asm
;
; Copiar el contenido del bloque de memoria 0x100 a 0x199 a 0x200 a 0x299
start:
    inc r16

	LDI R26, 0X00
	LDI R27, 0X01
	LDI R28, 0X00
	LDI R29, 0X02
	LDI R18, 0X9A
	LOOP:
	CP R18, R28
	BRLO FIN
	LD R16, X+
	ST Y+, R16

	RJMP LOOP
	FIN:
	RJMP FIN

    rjmp start
