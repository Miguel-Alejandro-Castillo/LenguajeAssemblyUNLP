ORG 1000H
CAR DB 01H

ORG 2000H
MOV BX, OFFSET CAR
MOV AL, 1
LOOP: CMP BYTE PTR [BX], 0FFH
INT 7
JZ FIN
ADD BYTE PTR [BX], 1
JMP LOOP
FIN: INT 0
END
