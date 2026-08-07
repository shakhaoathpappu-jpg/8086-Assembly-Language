.MODEL SMALL
.STACK 100H

.DATA
    NUM DB 35
    MSG DB 'Digit sum = $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, MSG
    INT 21H

    MOV AH, 0
    MOV AL, NUM
    MOV BL, 10
    DIV BL

    ADD AL, AH
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN