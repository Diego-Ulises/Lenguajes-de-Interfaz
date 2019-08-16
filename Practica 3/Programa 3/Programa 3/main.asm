
start:

	LDS R16, 0X100
	LDS R17, 0X101

    .DEF a=R16
	.DEF b=R17
		
	LDI R18, -5

	;CONDICION 1
	CP a, R18
	BRGE condicion2
	RJMP condicion3

condicion2: 
	CLR R18
	LDI R18, 3

	CP b, R18
	BRLT instruccion
	RJMP condicion3
condicion3:
	CLR R18
	LDI R18, 10
	MOV R19, a ;27
	ADD R19, b
	CP R18, R19
	BRLT instruccion
	RJMP FIN
instruccion:
	
	CLR R18
	LDI R18, -2
	MULS R18, a
	ADD a, R0
	CLR b
	ADD b, R1
	STS 0X100,R16
	STS 0X101,R17
		    
	fin: 
	rjmp fin
