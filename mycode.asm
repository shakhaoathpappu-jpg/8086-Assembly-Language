.model small
.stack 100h

.data
msg db 'HELLO$'

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, msg
    int 21h

    mov ah, 4Ch
    int 21h
end main