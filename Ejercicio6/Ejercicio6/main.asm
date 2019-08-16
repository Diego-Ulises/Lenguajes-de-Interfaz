;
; Ejercicio6.asm
;
; Haga la suma 
start:
    inc r16
	LDS R16, 0X100
	LDS R17, 0X102
	ADD R16, R17
	STS 0X104, R16
	LDS R16, 0X101
	LDS R17, 0X103
	ADC R16, R17
	STS 0X105, R16
    rjmp start
