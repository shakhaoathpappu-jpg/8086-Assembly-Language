.MODEL SMALL
.STACK 100H

.DATA
    MSG1 DB 'Enter a letter (a to i): $'
    MSG2 DB 0DH, 0AH, 'Uppercase: $'
    MSG3 DB ' Position: $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, MSG1
    INT 21H

    MOV AH, 1
    INT 21H
    MOV BL, AL

    MOV AH, 9
    LEA DX, MSG2
    INT 21H

    MOV AL, BL
    AND AL, 0DFH
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 9
    LEA DX, MSG3
    INT 21H

    MOV AL, BL
    SUB AL, 'a'
    ADD AL, 1
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN