.model small
.stack 100h
.code
main proc

    mov dl,'9'
    mov bl,10

AGAIN:
    mov ah,2
    int 21h

    dec dl
    dec bl
    jnz AGAIN

    mov ah,4Ch
    int 21h

main endp
end main