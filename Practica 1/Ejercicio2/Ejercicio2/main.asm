;
; Ejercicio2.asm
;
; Invierta los bits de las localidades del programa1 usando COM  
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
	COM R16
	STS 0X100, R16
	STS 0X101, R16
	STS 0X102, R16
	STS 0X103, R16
	STS 0X104, R16
	STS 0X105, R16
    rjmp start
