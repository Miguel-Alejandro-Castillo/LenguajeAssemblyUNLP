ORG 1000H
NUM1 DW 1234H
	    2345H
NUM2 DW 6789H
        8923H
RES DW ?
	   ?
	   
ORG 3000H
SUM32: MOV BX, CX; 
MOV CX, [BX]; OBTENER PARTE BAJA DE NUM1
ADD BX, 2
MOV AX, [BX]; OBTENER PARTE ALTA DE NUM1
MOV BX, DX
MOV DX, [BX]; OBTENER PARTE BAJA DE NUM2
ADD BX, 2
MOV BX, [BX]; OBTENER PARTE ALTA DE NUM2
ADD CX, DX; SUMAR PARTES BAJAS DE NUM1 Y NUM2
ADC AX, BX; SUMAR PARTES ALTAS DE NUM1 Y NUM;
MOV RES, CX
MOV RES+2, AX
RET
	 
ORG 2000H
MOV CX, OFFSET NUM1
MOV DX, OFFSET NUM2
CALL SUM32
HLT
END