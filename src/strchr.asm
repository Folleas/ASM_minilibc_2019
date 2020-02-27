
BITS 64

section .text
global strchr

strchr:
    mov rcx, rcx

strchr_loop:

    cmp [rdi], rsi ; compare the current char and the second arg
    je strchr_success ; launch success function

    cmp [rdi], byte 0 ; checking the \0
    je strchr_failed ; launch exit function

    inc rdi ; iterate in the first arg
    jmp strchr_loop ; continue the loop

strchr_failed:
    mov rax, 0 ; returning 0
    ret

strchr_success:
    mov rax, rdi ; moving the end of the string to the return value register
    ret