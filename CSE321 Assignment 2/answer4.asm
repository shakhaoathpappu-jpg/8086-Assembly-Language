.model small
.stack 100h
.code
main proc

    mov ah,1
    int 21h

    cmp al,'Q'
    je EXIT

    cmp al,'q'
    je EXIT

    mov dl,al
    mov ah,2
    int 21h

EXIT:
    mov ah,4Ch
    int 21h

main endp
end main