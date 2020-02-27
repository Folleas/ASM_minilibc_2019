BITS 64
section .text
global memcpy

memcpy:
    mov rcx, 0

memcpy_loop:
    cmp rcx, rdx
    je end
    mov r8b, byte[rsi + rcx]
    mov byte[rdi + rcx], r8b
    inc rcx
    jmp memcpy_loop

end:
    mov rax, rdi
    ret