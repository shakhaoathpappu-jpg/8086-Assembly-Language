.MODEL SMALL
.STACK 100H

.DATA
    L    DB 3
    MSG1 DB 'Enter width (1 to 3): $'
    MSG2 DB 0DH, 0AH, 'Area = $'
    MSG3 DB ' L + W = $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, MSG1
    INT 21H

    MOV AH, 1
    INT 21H
    SUB AL, '0'
    MOV BL, AL

    MOV AH, 9
    LEA DX, MSG2
    INT 21H

    MOV AL, L
    MUL BL
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 9
    LEA DX, MSG3
    INT 21H

    MOV AL, L
    ADD AL, BL
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN