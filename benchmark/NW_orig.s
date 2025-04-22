	.text
	.file	"NW.c"
	.globl	Needleman_Wunsch                # -- Begin function Needleman_Wunsch
	.p2align	4, 0x90
	.type	Needleman_Wunsch,@function
Needleman_Wunsch:                       # @Needleman_Wunsch
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$512, -28(%rbp)                 # imm = 0x200
	jge	.LBB0_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
.LBB0_3:                                # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$51, -32(%rbp)
	jge	.LBB0_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB0_3 Depth=2
	xorl	%edx, %edx
	subl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imulq	$104448, %rcx, %rcx             # imm = 0x19800
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	xorl	%edx, %edx
	subl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc13
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end15
	movl	$0, -52(%rbp)
.LBB0_9:                                # %for.cond17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	cmpl	$512, -52(%rbp)                 # imm = 0x200
	jge	.LBB0_24
# %bb.10:                               # %for.body19
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, -56(%rbp)
.LBB0_11:                               # %for.cond21
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	cmpl	$51, -56(%rbp)
	jge	.LBB0_22
# %bb.12:                               # %for.body23
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	$1, -60(%rbp)
.LBB0_13:                               # %for.cond24
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$51, -60(%rbp)
	jge	.LBB0_20
# %bb.14:                               # %for.body26
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	$7, -64(%rbp)
	movl	$2, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$104448, %rcx, %rcx             # imm = 0x19800
	addq	%rcx, %rax
	movslq	-60(%rbp), %rcx
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$5, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	imulq	$104448, %rcx, %rcx             # imm = 0x19800
	addq	%rcx, %rax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$5, %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$104448, %rcx, %rcx             # imm = 0x19800
	addq	%rcx, %rax
	movl	-60(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	-56(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	shlq	$11, %rdx
	addq	%rdx, %rcx
	movslq	-52(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movq	-16(%rbp), %rdx
	movl	-56(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	shlq	$11, %rsi
	addq	%rsi, %rdx
	movslq	-52(%rbp), %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	imull	-64(%rbp), %ecx
	subl	%ecx, %eax
	addl	-68(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_16
# %bb.15:                               # %if.then
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_16:                               # %if.end
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_18
# %bb.17:                               # %if.then67
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB0_18:                               # %if.end68
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-48(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	imulq	$104448, %rcx, %rcx             # imm = 0x19800
	addq	%rcx, %rax
	movslq	-60(%rbp), %rcx
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.19:                               # %for.inc75
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_13
.LBB0_20:                               # %for.end77
                                        #   in Loop: Header=BB0_11 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               # %for.inc78
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_11
.LBB0_22:                               # %for.end80
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               # %for.inc81
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_9
.LBB0_24:                               # %for.end83
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	Needleman_Wunsch, .Lfunc_end0-Needleman_Wunsch
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$5531680, %rsp                  # imm = 0x546820
	movl	$0, -4(%rbp)
	movl	$0, -5531668(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpl	$512, -5531668(%rbp)            # imm = 0x200
	jge	.LBB1_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$0, -5531672(%rbp)
.LBB1_3:                                # %for.cond1
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$50, -5531672(%rbp)
	jge	.LBB1_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-5531668(%rbp), %eax
	imull	-5531672(%rbp), %eax
	imull	$3, -5531668(%rbp), %ecx
	addl	%ecx, %eax
	addl	-5531672(%rbp), %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movslq	-5531672(%rbp), %rcx
	leaq	-102416(%rbp), %rax
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-5531668(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-5531672(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5531672(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc8
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-5531668(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5531668(%rbp)
	jmp	.LBB1_1
.LBB1_8:                                # %for.end10
	movl	$0, -5531676(%rbp)
.LBB1_9:                                # %for.cond12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	cmpl	$512, -5531676(%rbp)            # imm = 0x200
	jge	.LBB1_16
# %bb.10:                               # %for.body14
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$0, -5531680(%rbp)
.LBB1_11:                               # %for.cond16
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$50, -5531680(%rbp)
	jge	.LBB1_14
# %bb.12:                               # %for.body18
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-5531676(%rbp), %eax
	subl	$1, %eax
	imull	-5531680(%rbp), %eax
	imull	$3, %eax, %eax
	movl	-5531676(%rbp), %ecx
	shll	$0, %ecx
	addl	%ecx, %eax
	movl	-5531680(%rbp), %ecx
	shll	%ecx
	addl	%ecx, %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movslq	-5531680(%rbp), %rcx
	leaq	-204816(%rbp), %rax
	shlq	$11, %rcx
	addq	%rcx, %rax
	movslq	-5531676(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.13:                               # %for.inc30
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-5531680(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5531680(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               # %for.end32
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_15
.LBB1_15:                               # %for.inc33
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-5531676(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -5531676(%rbp)
	jmp	.LBB1_9
.LBB1_16:                               # %for.end35
	leaq	-102416(%rbp), %rdi
	leaq	-204816(%rbp), %rsi
	leaq	-5531664(%rbp), %rdx
	callq	Needleman_Wunsch
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$5531680, %rsp                  # imm = 0x546820
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Success!\n"
	.size	.L.str, 10

	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 26eb4285b56edd8c897642078d91f16ff0fd3472)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Needleman_Wunsch
	.addrsig_sym printf
