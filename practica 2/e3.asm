ORG 1000H
CAR DB 41H; 41H LETRA 'A'


ORG 2000H
MOV BX, OFFSET CAR
MOV AL, 1
LOOP: CMP BYTE PTR [BX], 05BH ;  05BH CARACTER '['
JZ FIN
INT 7
ADD BYTE PTR [BX], 20H
INT 7
SUB BYTE PTR [BX], 20H
ADD BYTE PTR [BX], 1
JMP LOOP
FIN: INT 0
END

