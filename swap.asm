;shaochenren

extern printf
extern scanf
global swap


section .data
	

section .bss


section .text
swap:

	push rbp                                                    ;Backup rbp
	mov  rbp,rsp                                                ;The base pointer now points to top of stack
	push rdi                                                    ;Backup rdi
	push rsi                                                    ;Backup rsi
	push rdx                                                    ;Backup rdx
	push rcx                                                    ;Backup rcx
	push r8                                                     ;Backup r8
	push r9                                                     ;Backup r9
	push r10                                                    ;Backup r10
	push r11                                                    ;Backup r11
	push r12                                                    ;Backup r12
	push r13                                                    ;Backup r13
	push r14                                                    ;Backup r14
	push r15                                                    ;Backup r15
	push rbx                                                    ;Backup rbx
	pushf                                                       ;Backup rflags
    push rax

  
    ;===============swap===========
    mov r14, rdi        ;array
    mov r12, rsi        ;First value to swap 
    mov r15, rdx        ;Second value to swap 

    mov r8, [r14 + r12 * 8]
    mov r9, [r14 + r15 *8]

    mov [r14 + r12 * 8], r9
    mov [r14 + r15 *8], r8
    ;====================================================================

endSwap:

    pop rax
	popf                                                        ;Restore rflags
	pop rbx                                                     ;Restore rbx
	pop r15                                                     ;Restore r15
	pop r14                                                     ;Restore r14
	pop r13                                                     ;Restore r13
	pop r12                                                     ;Restore r12
	pop r11                                                     ;Restore r11
	pop r10                                                     ;Restore r10
	pop r9                                                      ;Restore r9
	pop r8                                                      ;Restore r8
	pop rcx                                                     ;Restore rcx
	pop rdx                                                     ;Restore rdx
	pop rsi                                                     ;Restore rsi
	pop rdi                                                     ;Restore rdi
	pop rbp                                                     ;Restore rbp


	ret                                               	    
