[BITS 64]
SECTION .text
GLOBAL my_strstr:function

my_strstr:
    push    rbp
    mov     rbp, rsp
    mov     rdx, rdi
    mov     rcx, rsi

while_not_null:
    mov     bh, byte[rdx]
    mov     bl, byte[rcx]
    cmp     bl, 0
    je      exit_success
    cmp     bh, 0
    je      exit_failure
    cmp     bh, bl
    jne     pseudo_rec
    inc     rdx
    inc     rcx
    jmp     while_not_null

pseudo_rec:
    inc     rdi
    mov     rdx, rdi
    mov     rcx, rsi
    jmp     while_not_null

exit_failure:
    mov     rax, 0
    pop     rbp
    ret

exit_success:
    mov     rax, rdi
    pop     rbp
    ret

