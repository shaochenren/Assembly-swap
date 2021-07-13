;shaochen ren


extern scanf
extern printf
extern input_array
extern display_array
extern reverse
global manager

section .data
    stringOutputFormat db "%s", 0
    controlD db "Please enter integers separated by whitespace. Press enter and cntl+d to end", 10, 0
    arrayvalue db "array:   ", 0
    reversenumber db "Reversed array is.", 10
                  db "The values in the array are: ", 10, 0
    message db "number will return to driver", 10, 0

section .bss
    array: resq 100

section .text
manager:

    ;16 Pushes
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

    xor rax, rax
    mov rdi, stringOutputFormat
    mov rsi, controlD 
    call printf

    ;input==================
    push qword 1
    xor rax, rax
    mov rdi, array
    mov rsi, 100
    call input_array
    mov r12, rax            ;Current size of array
    pop r8
    
    ;Display==========================================
    xor rax, rax
    mov rdi, stringOutputFormat
    mov rdi, arrayvalue
    call printf
    
    xor rax, rax
    mov rdi, array			
	mov rsi, r12				
	call display_array			

    ;===================reverse array================================
    xor rax, rax
    mov rdi, array
    mov rsi, r12
    call reverse

    xor rax, rax
    mov rdi, stringOutputFormat
    mov rsi, reversenumber
    call printf

    ;Displaying the reversed array 
    xor rax, rax
    mov rdi, array
    mov rsi, r12
    call display_array
    ;===========================================================================

end:

    xor rax, rax
    mov rdi, stringOutputFormat
    mov rsi, message
    call printf
    
    mov rax, -1     

    ;16 pops
    add rsp, 8      
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
