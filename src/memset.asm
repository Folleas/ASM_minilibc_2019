BITS 64
SECTION .text
GLOBAL memset

memset:
    mov     rcx, rsi
    mov     rax, rdi

memset_loop:
    cmp     rdx, 0
    je      exit
    mov     byte[rdi], cl
    dec     rdx
    inc     rdi
    jmp     memset_loop

exit:
    ret