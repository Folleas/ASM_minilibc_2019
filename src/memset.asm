BITS 64
SECTION .text
GLOBAL memset

memset:
    mov rcx, 0

memset_loop:
    cmp rcx, rdx
    je end
    mov byte[rdi + rcx], sil
    inc rcx
    jmp loop

end:
    mov rax, rdi
    ret