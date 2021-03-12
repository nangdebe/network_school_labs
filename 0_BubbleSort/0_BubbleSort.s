	.text
	.file	"0_BubbleSort.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	Mars_PrintStr
	movl	$0, -52(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, -52(%rbp)
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	Mars_GetInt
	movslq	-52(%rbp), %rcx
	movl	%eax, -48(%rbp,%rcx,4)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	Mars_PrintStr
	movl	$0, -56(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10, -56(%rbp)
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movslq	-56(%rbp), %rax
	movl	-48(%rbp,%rax,4), %edi
	movb	$0, %al
	callq	Mars_PrintInt
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	Mars_PrintStr
	movl	$0, -60(%rbp)
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	cmpl	$10, -60(%rbp)
	jge	.LBB0_18
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -64(%rbp)
.LBB0_11:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	movl	$10, %ecx
	subl	-60(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	movslq	-64(%rbp), %rax
	movl	-48(%rbp,%rax,4), %ecx
	movl	-64(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	cmpl	-48(%rbp,%rax,4), %ecx
	jle	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=2
	movslq	-64(%rbp), %rax
	movl	-48(%rbp,%rax,4), %ecx
	movl	%ecx, -68(%rbp)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movl	-48(%rbp,%rax,4), %ecx
	movslq	-64(%rbp), %rax
	movl	%ecx, -48(%rbp,%rax,4)
	movl	-68(%rbp), %ecx
	movl	-64(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movl	%ecx, -48(%rbp,%rax,4)
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=2
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB0_11
.LBB0_16:                               #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_9
.LBB0_18:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	Mars_PrintStr
	movl	$0, -72(%rbp)
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, -72(%rbp)
	jge	.LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movslq	-72(%rbp), %rax
	movl	-48(%rbp,%rax,4), %edi
	movb	$0, %al
	callq	Mars_PrintInt
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB0_19
.LBB0_22:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"please input ten int number for bubble sort:\n"
	.size	.L.str, 46

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"before bubble sort:\n"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"after bubble sort:\n"
	.size	.L.str.3, 20

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Mars_PrintStr
	.addrsig_sym Mars_GetInt
	.addrsig_sym Mars_PrintInt
