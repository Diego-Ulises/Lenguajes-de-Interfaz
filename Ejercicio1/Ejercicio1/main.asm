;
; Ejercicio1.asm
;
;Inicialice con 0XAA las localidades 0X100 a 0X105
;
start:
    inc r16
	LDI R16, 0xAA
	STS 0X100, R16
	STS 0X101, R16
	STS 0X102, R16
	STS 0X103, R16
	STS 0X104, R16
	STS 0X105, R16
    rjmp start
