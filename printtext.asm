section .data
    msg db "Hello", 10

section .text
global _start

_start:
    mov rax, 1      ; set write for system call
    mov rdi, 1      ; stdout
    mov rsi, msg    ; address messages to rsi
    mov rdx, 6      ; message size
    syscall        

mov rax, 60         ; exit call
mov rdi, 0          ; code status
syscall         