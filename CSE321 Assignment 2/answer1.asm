.model small
.stack 100h
.code
main proc

    mov ah,1
    int 21h         

    cmp al,'Y'
    je YES

    mov dl,'0'
    jmp PRINT

YES:
    mov dl,'1'

PRINT:
    mov ah,2
    int 21h

    mov ah,4Ch
    int 21h

main endp
end main