	.text
	.intel_syntax noprefix
	.file	"constant.c"
	.globl	constant                        # -- Begin function constant
	.p2align	4, 0x90
	.type	constant,@function
constant:                               # @constant
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	byte ptr [rbp - 1], 99
	movabs	rax, offset .L.str
	mov	qword ptr [rbp - 16], rax
	mov	dword ptr [rbp - 20], 42
	movabs	rax, offset .L.str.1
	mov	qword ptr [rbp - 32], rax
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	constant, .Lfunc_end0-constant
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"string"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"const_string"
	.size	.L.str.1, 13

	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
