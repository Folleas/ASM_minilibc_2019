[BITS 64]
SECTION .text
GLOBAL rindex:function

rindex:
    push    rbp
    mov     rbp, rsp
    mov     rcx, 0 ; setting var to 0
    mov     rbx, rsi ; moving 2sd arg to variable

rindex_loop:
    cmp     byte [rdi + rcx], 0 ; comparing first string pointer to null
    je      rindex_highest
    inc     rcx
    jmp     rindex_loop

rindex_highest:
    cmp     byte[rdi + rcx], bl ; comparing first string pointer to the given character
    je      rindex_success
    cmp     rcx, 0 ; checking if null
    jl      rindex_failed ; if less than 0
    dec     rcx
    jmp     rindex_highest

rindex_failed:
    mov rax, 0
    pop rbp
    ret

rindex_success:
    add     rdi, rcx
    mov     rax, rdi
    pop     rbp
    ret