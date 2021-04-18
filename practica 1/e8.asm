ORG 1000H
DATO DB 193 ; Número a rotar
ROTA DB 4 ; Veces a rotar

ORG 3000H
ROTARIZ: ADD AL, AL ; Suma
JNC SIGO ; Si no hay carry salta
ADC AL, 0 ; Hay carry entonces hay que sumarlo
SIGO: DEC CL ; Decremento el número de veces a rotar
JNZ ROTARIZ ; Sigo hasta que CL:=0
RET

ORG 4000H
ROTARDER: MOV CH, 8
SUB CH, CL
MOV CL, CH
CALL ROTARIZ
RET

ORG 2000H
MOV AL, DATO ; AL:=193 Parámetros pasados por registros.
MOV CL, ROTA ; CL:=4
CALL ROTARDER
HLT
END

