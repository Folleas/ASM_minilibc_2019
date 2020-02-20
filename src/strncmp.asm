[BITS 64]
SECTION .text
GLOBAL strncmp:function

strncmp:
    push    rbp
    mov     rbp, rsp

strncmp_loop:
    mov     bl, byte [rdi]
    mov     ah, byte [rsi]
    cmp     bl, 0
    je      strncmp_success
    cmp     bl, ah
    jne     strncmp_success
    inc     rdi
    inc     rsi
    dec     rdx
    cmp     rdx, 0
    jle     strncmp_success
    jmp     strncmp_loop

strncmp_success:
    sub     bl, ah
    movsx   rax, bl
    pop     rbp
    ret