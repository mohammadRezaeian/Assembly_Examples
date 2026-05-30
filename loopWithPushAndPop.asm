section .data
    msg db "Count:   ", 10  

section .text
global _start

_start:
    mov r12, 15        

loop_start:
    mov rax, r12       
    mov rdx, 0         
    mov rbx, 10
    div rbx    

    
    add rax, 48         
    add rdx, 48 

    
    mov [msg + 7], al    
    mov [msg + 8], dl    

    
    push r12         
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 10      
    syscall
    pop r12          

    
    sub r12, 1
    cmp r12, 9
    jg loop_start

    
    mov rax, 60
    mov rdi, 0
    syscall