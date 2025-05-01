	.text
	.file	"NW_bench.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Needleman_Wunsch
.LCPI0_0:
	.quad	0x412e848000000000              # double 1.0E+6
	.text
	.globl	Needleman_Wunsch
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	clock@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$2048, -52(%rbp)                # imm = 0x800
	jge	.LBB0_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -56(%rbp)
.LBB0_3:                                # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$513, -56(%rbp)                 # imm = 0x201
	jge	.LBB0_6
# %bb.4:                                # %for.body3
                                        #   in Loop: Header=BB0_3 Depth=2
	xorl	%edx, %edx
	subl	-56(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	xorl	%edx, %edx
	subl	-56(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-56(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc13
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end15
	callq	clock@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	.L.str(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -76(%rbp)
.LBB0_9:                                # %for.cond21
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	cmpl	$2048, -76(%rbp)                # imm = 0x800
	jge	.LBB0_24
# %bb.10:                               # %for.body24
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, -80(%rbp)
.LBB0_11:                               # %for.cond26
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	cmpl	$513, -80(%rbp)                 # imm = 0x201
	jge	.LBB0_22
# %bb.12:                               # %for.body29
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	$1, -84(%rbp)
.LBB0_13:                               # %for.cond30
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$513, -84(%rbp)                 # imm = 0x201
	jge	.LBB0_20
# %bb.14:                               # %for.body33
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	$7, -88(%rbp)
	movl	$2, -92(%rbp)
	movq	-24(%rbp), %rax
	movl	-80(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$5, %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-84(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$5, %eax
	movl	%eax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	-80(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-84(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	-80(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-76(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movq	-16(%rbp), %rdx
	movl	-80(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-76(%rbp), %rsi
	cmpl	(%rdx,%rsi,4), %ecx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	imull	-88(%rbp), %ecx
	subl	%ecx, %eax
	addl	-92(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_16
# %bb.15:                               # %if.then
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-64(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB0_16:                               # %if.end
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_18
# %bb.17:                               # %if.then75
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB0_18:                               # %if.end76
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-72(%rbp), %edx
	movq	-24(%rbp), %rax
	movslq	-80(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-84(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.19:                               # %for.inc83
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB0_13
.LBB0_20:                               # %for.end85
                                        #   in Loop: Header=BB0_11 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               # %for.inc86
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_11
.LBB0_22:                               # %for.end88
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               # %for.inc89
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_9
.LBB0_24:                               # %for.end91
	callq	clock@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vmovsd	-48(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	.L.str.1(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	Needleman_Wunsch, .Lfunc_end0-Needleman_Wunsch
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI1_0:
	.quad	0x412e848000000000              # double 1.0E+6
	.text
	.globl	main
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
	subq	$112, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$4096, %edi                     # imm = 0x1000
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$4096, %edi                     # imm = 0x1000
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$512, -36(%rbp)                 # imm = 0x200
	jge	.LBB1_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movl	$4104, %edi                     # imm = 0x1008
	callq	malloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB1_5:                                # %for.cond8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	cmpl	$513, -52(%rbp)                 # imm = 0x201
	jge	.LBB1_12
# %bb.6:                                # %for.body10
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	$4104, %edi                     # imm = 0x1008
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	$0, -56(%rbp)
.LBB1_7:                                # %for.cond14
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$513, -56(%rbp)                 # imm = 0x201
	jge	.LBB1_10
# %bb.8:                                # %for.body16
                                        #   in Loop: Header=BB1_7 Depth=2
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-56(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.9:                                # %for.inc22
                                        #   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               # %for.end24
                                        #   in Loop: Header=BB1_5 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               # %for.inc25
                                        #   in Loop: Header=BB1_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_5
.LBB1_12:                               # %for.end27
	movl	$0, -60(%rbp)
.LBB1_13:                               # %for.cond29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	cmpl	$2048, -60(%rbp)                # imm = 0x800
	jge	.LBB1_20
# %bb.14:                               # %for.body31
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	$0, -64(%rbp)
.LBB1_15:                               # %for.cond33
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$512, -64(%rbp)                 # imm = 0x200
	jge	.LBB1_18
# %bb.16:                               # %for.body35
                                        #   in Loop: Header=BB1_15 Depth=2
	callq	rand@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-60(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	callq	rand@PLT
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-60(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.17:                               # %for.inc46
                                        #   in Loop: Header=BB1_15 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB1_15
.LBB1_18:                               # %for.end48
                                        #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_19
.LBB1_19:                               # %for.inc49
                                        #   in Loop: Header=BB1_13 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_13
.LBB1_20:                               # %for.end51
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	Needleman_Wunsch
	callq	clock@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	subq	-72(%rbp), %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -88(%rbp)
	vmovsd	-88(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	.L.str.3(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	movl	$0, -92(%rbp)
.LBB1_21:                               # %for.cond57
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$512, -92(%rbp)                 # imm = 0x200
	jge	.LBB1_24
# %bb.22:                               # %for.body60
                                        #   in Loop: Header=BB1_21 Depth=1
	movq	-24(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
	movq	-32(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.23:                               # %for.inc65
                                        #   in Loop: Header=BB1_21 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB1_21
.LBB1_24:                               # %for.end67
	movq	-24(%rbp), %rdi
	callq	free@PLT
	movq	-32(%rbp), %rdi
	callq	free@PLT
	movl	$0, -96(%rbp)
.LBB1_25:                               # %for.cond69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_27 Depth 2
	cmpl	$512, -96(%rbp)                 # imm = 0x200
	jge	.LBB1_32
# %bb.26:                               # %for.body72
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	$0, -100(%rbp)
.LBB1_27:                               # %for.cond74
                                        #   Parent Loop BB1_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$512, -100(%rbp)                # imm = 0x200
	jge	.LBB1_30
# %bb.28:                               # %for.body77
                                        #   in Loop: Header=BB1_27 Depth=2
	movq	-48(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-100(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.29:                               # %for.inc82
                                        #   in Loop: Header=BB1_27 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB1_27
.LBB1_30:                               # %for.end84
                                        #   in Loop: Header=BB1_25 Depth=1
	movq	-48(%rbp), %rax
	movslq	-96(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.31:                               # %for.inc87
                                        #   in Loop: Header=BB1_25 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB1_25
.LBB1_32:                               # %for.end89
	movq	-48(%rbp), %rdi
	callq	free@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$112, %rsp
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
	.asciz	"Time used on initialization: %f\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Time used on calculation: %f\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Test Case Generated!\n"
	.size	.L.str.2, 22

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Time used on Needleman_Wunsch() function: %f\n"
	.size	.L.str.3, 46

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Finished!\n"
	.size	.L.str.4, 11

	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 26eb4285b56edd8c897642078d91f16ff0fd3472)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Needleman_Wunsch
	.addrsig_sym clock
	.addrsig_sym printf
	.addrsig_sym malloc
	.addrsig_sym rand
	.addrsig_sym free
