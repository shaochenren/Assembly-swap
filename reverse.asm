; shaochen ren

extern scanf
extern printf
extern swap 
global reverse

section .data
    

section .bss
   

section .text
reverse:

    ; Pushes
    push rbp
    mov rbp, rsp 
    push rdi 
    push rsi
    push rdx 
    push rcx
    push r8 
    push r9 
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    push rbx
    pushf
    push rax

    mov r12, 0       
    mov r13, rsi        
    dec r13
    mov r14, rdi        

begin_loop:

;======================swap=========================================
    xor rax, rax
    mov rdi, r14        
    mov rsi, r12        ;first value swap
    mov rdx, r13        ;second value swap 
    call swap
;===================================================================

    inc r12              
    dec r13             
                        

    cmp r12, r13
    jge end_loop       
                      


    jmp begin_loop

end_loop:
    ; pops
    pop rax
    popf
    pop rbx
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    pop rbp 

    ret
    
