.model small
.stack 100h
.code
main proc

    cmp cx,dx
    jl LESS

    mov ax,cx
    jmp EXIT

LESS:
    mov ax,dx

EXIT:
    mov ah,4Ch
    int 21h

main endp
end main