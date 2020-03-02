BITS 64
SECTION .text
GLOBAL memset

memset:
    push ebp
    mov ebp, esp
    mov rcx, 0

memset_loop:
    cmp rcx, rdx
    je end
    mov byte[rdi + rcx], sil
    inc rcx
    jmp memset_loop

end:
    mov rax, rdi
    ret