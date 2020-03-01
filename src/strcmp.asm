
BITS 64

section .text
global strcmp

strcmp:
    push    rbp
    mov     rbp, rsp
    cmp rdi, 0
    je end
    cmp rsi, 0
    je end

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

end:
    mov rax, 0
    ret