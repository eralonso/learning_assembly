	.text
	.file	"ft_isalpha.c"
	.globl	ft_isalpha                      # -- Begin function ft_isalpha
	.p2align	4, 0x90
	.type	ft_isalpha,@function
ft_isalpha:                             # @ft_isalpha
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$97, -8(%rbp)
	jl	.LBB0_2
# %bb.1:
	cmpl	$122, -8(%rbp)
	jle	.LBB0_4
.LBB0_2:
	cmpl	$65, -8(%rbp)
	jl	.LBB0_5
# %bb.3:
	cmpl	$90, -8(%rbp)
	jg	.LBB0_5
.LBB0_4:
	movl	$1, -4(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movl	$0, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ft_isalpha, .Lfunc_end0-ft_isalpha
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
