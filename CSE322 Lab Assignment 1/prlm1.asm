.MODEL SMALL
.STACK 100H

.DATA
    M1  DB 4
    M2  DB 5
    M3  DB 6
    MSG DB 'Average = $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, MSG
    INT 21H

    MOV AH, 0
    MOV AL, M1
    ADD AL, M2
    ADD AL, M3

    MOV BL, 3
    DIV BL

    ADD AL, '0'
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN