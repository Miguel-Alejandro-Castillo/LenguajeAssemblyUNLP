ORG 1000H
CADENA DB "Aby65skcOJ0a"
	   DB 0
CAR    DB "Z"

ORG 3000H
CONCAR: PUSH BX; Salva Viejo BX(PARA QUE CORNOS HACEN ESTO??? BUENO LO DEJO COMO ESTA EN LA PRACTICA AJJAJAJAJAJJA )
MOV BX, SP; Salva registro SP(STACK POINTER)

ADD BX, 6
MOV AX, [BX] ; OBTENER VALOR CAR

ADD BX, 2
MOV BX, [BX]; OBTENER DIRECCION CADENA

LUPEA: CMP BYTE PTR [BX], 0
JZ FIN
CMP BYTE PTR [BX], AL
JNZ NO_SUMO
INC CX
MOV BYTE PTR [BX], 5AH ; 5AH es la letra "Z"
NO_SUMO: INC BX
JMP LUPEA
FIN: POP BX
RET

ORG 2000H
MOV AX, OFFSET CADENA
PUSH AX
MOV AL, CAR
MOV AH, 0
PUSH AX
MOV CX, 0
CALL CONCAR
POP AX
POP AX
HLT
END

