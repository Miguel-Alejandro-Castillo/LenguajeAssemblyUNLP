ORG 1000H
NUM1 DW 1234H
	    2345H
NUM2 DW 6789H
        8923H
RES DW ?
	   ?
	   
ORG 3000H
SUM32: ADD AX, BX
ADC CX, DX
MOV RES, AX
MOV RES+2, CX
RET
	 
ORG 2000H
MOV AX, NUM1
MOV BX, NUM2
MOV CX, NUM1+2
MOV DX, NUM2+2
CALL SUM32
HLT
END

