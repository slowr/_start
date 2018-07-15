; nasm -f elf32 argc.asm
; ld -o argc argc.o

extern __get_argc
extern __get_argv
extern __unknown
extern __exit

global _start

section .text

_start:
    pop     rdi
    call    __get_argc
_loop:
    pop     rdi
    test    rdi, rdi
    jz      _prog
    call    __get_argv
    jmp     _loop
_prog:
    call    __unknown
_exit:
    mov     rax, 1
    xor     rbx, rbx
    int     80h
