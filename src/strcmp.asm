
BITS 64

section .text
global strcmp

strcmp:
    push    rbp
    mov     rbp, rsp

strcmp_loop:
    mov     bl, byte [rdi]
    mov     ah, byte [rsi]
    cmp     bl, ah
    jne     success
    inc     rdi
    inc     rsi
    jmp     strcmp_loop

success:
    sub     bl, ah
    movsx   rax, bl
    pop     rbp
    ret