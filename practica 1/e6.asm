ORG 1000H
DATO1 DW 1234H
DATO2 DW 6789H
	   
ORG 3000H
SWAP: PUSH BX; Salva Viejo BX(PARA QUE CORNOS HACEN ESTO??? BUENO LO DEJO COMO ESTA EN LA PRACTICA AJJAJAJAJAJJA )
MOV BX, SP; Salva registro SP(STACK POINTER)

ADD BX, 8
MOV CX, [BX]; OBTENER PARTE DIRECCION DE DATO1
SUB BX, 2
MOV DX, [BX]; OBTENER PARTE DIRECCION DE DATO2

MOV BX, CX
MOV AX, [BX]; OBTENER VALOR DE DATO1
PUSH AX; SALVAR EN LA PILA EL VALOR DE DATO1

MOV BX, DX
MOV AX, [BX]; OBTENER VALOR DE DATO2

MOV BX, CX
MOV [BX], AX ; SETEAR EN VARIABLE DATO1 EL VALOR DE DATO2

MOV BX, DX
POP AX
MOV [BX], AX; SETEAR EN VARIABLE DATO2 EL VALOR DE DATO1

POP BX
RET
	 
ORG 2000H
MOV AX, OFFSET DATO1
PUSH AX
MOV AX, OFFSET DATO2
PUSH AX
CALL SWAP
POP AX
POP AX 
HLT
END