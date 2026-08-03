.model small
.stack 100h
.code
main proc

    mov cx,8

AGAIN:
    mov dl,'#'
    mov ah,2
    int 21h

    loop AGAIN

    mov ah,4Ch
    int 21h

main endp
end main