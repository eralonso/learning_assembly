section .text

global _start ; _start == default entry symbol

_start:
	mov rax, 60
	mov rdi, 42
	syscall
