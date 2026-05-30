section .data
    msg db "Loop!  ", 10 

section .text
global _start

_start:
    mov r12, 9      

my_loop:
    
    mov rax, r12
    add rax, 48  

    mov [msg + 6], al

    mov rax, 1
    mov rdi, 1
    mov rsi, msg       
    mov rdx, 8         
    syscall

    
    sub r12, 1    
    cmp r12, 0    
    jg my_loop    

    
    mov rax, 60
    mov rdi, 0
    syscall