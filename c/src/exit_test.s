segment .data
a dq 60
b dq 1

segment .text
global main

main:
	mov rax, [a]
	mov rdi, [b]
	syscall
