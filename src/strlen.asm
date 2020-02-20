
BITS 64

section .text
global strlen

strlen:
    mov rcx, 0

strlen_loop:
    cmp [rdi], byte 0 ; compare current char with \0
    jz strlen_out ; launch strlen_out

    inc rcx ; increment the counter
    inc rdi ; increment str iterator
    jmp strlen_loop ; launch strle_loop

strlen_out:
    mov rax, rcx ; moving the result to the return value
    ret