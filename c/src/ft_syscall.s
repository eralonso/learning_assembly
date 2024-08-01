	.text
	.file	"ft_syscall.c"
	.globl	syscall_test                    # -- Begin function syscall_test
	.p2align	4, 0x90
	.type	syscall_test,@function
syscall_test:                           # @syscall_test
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %edi
	movl	$1, %esi
	movabsq	$.L.str, %rdx
	movl	$5, %ecx
	movb	$0, %al
	callq	syscall
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	syscall_test, .Lfunc_end0-syscall_test
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hola\n"
	.size	.L.str, 6

	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym syscall
