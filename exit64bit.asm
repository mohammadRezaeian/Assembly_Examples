section .text
global _start

_start:
    mov rax, 60     ; set system call value
    mov rdi, 0      ; set exist code and return 0 like return 0 in cpp or c programming languages
    syscall