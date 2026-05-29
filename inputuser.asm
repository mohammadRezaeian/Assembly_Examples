section .data
    prompt db "Name: "
    greet db "Hello, "

section .bss
    name resb 16    ; reserve a part of ram for save input value in a variable
    
section .text
global _start


_start:
    mov rdi, 1 ; print in which path or address file  ............................................ READ
    mov rsi, prompt ; what do you want for print or do what open close ..... (flags)               
    mov rdx, 6 ; size data or access command
    mov rax, 1 ; what do you want  to do (open file an example with 2 parmater or do what)
    
    
    syscall

    mov rdi, 0      ; read keyboard
    mov rsi, name   ; save in variable name
    mov rdx, 16     ; maximum size
    mov rax, 0      ; set system call
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, greet
    mov rdx, 7
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall

    mov rax, 60 ; sys exist
    mov rdi, 0  ; every thing is fin and success 
    syscall