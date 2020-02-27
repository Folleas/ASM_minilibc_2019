BITS 64
section .text
global memcpy

memcpy:
    push ebp
    mov ebp, esp
    mov rcx, 0

memcpy_loop:
    cmp rcx, rdx
    je end
    mov r10, byte[rsi + rcx]
    mov byte[rdi + rcx], r10
    inc rcx
    jmp memcpy_loop

end:
    mov rax, rdi
    ret