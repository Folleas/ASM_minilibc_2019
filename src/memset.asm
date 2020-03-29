BITS 64
SECTION .text
GLOBAL memset

memset:
    mov rcx, 0
    mov     rax, rdi
    cmp     rdi, 0
    je      exit_failure
    mov     rcx, rsi

memset_loop:
    cmp rdx, 0
    je end
    mov byte[rdi + rcx], sil
    inc rcx
    dec rdx
    jmp memset_loop

end:
    mov rax, rdi
    ret

exit_failure:

    ret