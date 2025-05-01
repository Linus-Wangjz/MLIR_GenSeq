	.text
	.file	"MPC_bench.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Min_Cost_Path
.LCPI0_0:
	.quad	0x412e848000000000              # double 1.0E+6
	.text
	.globl	Min_Cost_Path
	.p2align	4, 0x90
	.type	Min_Cost_Path,@function
Min_Cost_Path:                          # @Min_Cost_Path
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	clock@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$2048, -44(%rbp)                # imm = 0x800
	jge	.LBB0_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	$1, -48(%rbp)
.LBB0_3:                                # %for.cond7
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$512, -48(%rbp)                 # imm = 0x200
	jge	.LBB0_6
# %bb.4:                                # %for.body9
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	-16(%rbp), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-44(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc40
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end42
	callq	clock@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	.L.str(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -68(%rbp)
.LBB0_9:                                # %for.cond48
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
                                        #       Child Loop BB0_13 Depth 3
	cmpl	$2048, -68(%rbp)                # imm = 0x800
	jge	.LBB0_24
# %bb.10:                               # %for.body51
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, -72(%rbp)
.LBB0_11:                               # %for.cond53
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	cmpl	$512, -72(%rbp)                 # imm = 0x200
	jge	.LBB0_22
# %bb.12:                               # %for.body56
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	$1, -76(%rbp)
.LBB0_13:                               # %for.cond57
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$512, -76(%rbp)                 # imm = 0x200
	jge	.LBB0_20
# %bb.14:                               # %for.body60
                                        #   in Loop: Header=BB0_13 Depth=3
	movq	-16(%rbp), %rax
	movl	-72(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rax
	movl	-72(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -60(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB0_16
# %bb.15:                               # %if.then
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB0_16:                               # %if.end
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB0_18
# %bb.17:                               # %if.then87
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB0_18:                               # %if.end88
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-64(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.19:                               # %for.inc102
                                        #   in Loop: Header=BB0_13 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_13
.LBB0_20:                               # %for.end104
                                        #   in Loop: Header=BB0_11 Depth=2
	jmp	.LBB0_21
.LBB0_21:                               # %for.inc105
                                        #   in Loop: Header=BB0_11 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB0_11
.LBB0_22:                               # %for.end107
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               # %for.inc108
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB0_9
.LBB0_24:                               # %for.end110
	callq	clock@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	vmovsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	.L.str.1(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	Min_Cost_Path, .Lfunc_end0-Min_Cost_Path
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
	subq	$80, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$4096, %edi                     # imm = 0x1000
	callq	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	cmpl	$512, -28(%rbp)                 # imm = 0x200
	jge	.LBB1_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$4096, %edi                     # imm = 0x1000
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	$0, -32(%rbp)
.LBB1_3:                                # %for.cond2
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$512, -32(%rbp)                 # imm = 0x200
	jge	.LBB1_6
# %bb.4:                                # %for.body4
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_7
.LBB1_7:                                # %for.inc10
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_1
.LBB1_8:                                # %for.end12
	movl	$4096, %edi                     # imm = 0x1000
	callq	malloc@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB1_9:                                # %for.cond15
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_11 Depth 2
	cmpl	$512, -44(%rbp)                 # imm = 0x200
	jge	.LBB1_16
# %bb.10:                               # %for.body17
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$4096, %edi                     # imm = 0x1000
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	$0, -48(%rbp)
.LBB1_11:                               # %for.cond22
                                        #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$512, -48(%rbp)                 # imm = 0x200
	jge	.LBB1_14
# %bb.12:                               # %for.body24
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-48(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
# %bb.13:                               # %for.inc30
                                        #   in Loop: Header=BB1_11 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               # %for.end32
                                        #   in Loop: Header=BB1_9 Depth=1
	jmp	.LBB1_15
.LBB1_15:                               # %for.inc33
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB1_9
.LBB1_16:                               # %for.end35
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Min_Cost_Path
	callq	clock@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -72(%rbp)
	vmovsd	-72(%rbp), %xmm0                # xmm0 = mem[0],zero
	leaq	.L.str.3(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	movl	$0, -76(%rbp)
.LBB1_17:                               # %for.cond41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	cmpl	$512, -76(%rbp)                 # imm = 0x200
	jge	.LBB1_24
# %bb.18:                               # %for.body44
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	$0, -80(%rbp)
.LBB1_19:                               # %for.cond46
                                        #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$512, -80(%rbp)                 # imm = 0x200
	jge	.LBB1_22
# %bb.20:                               # %for.body49
                                        #   in Loop: Header=BB1_19 Depth=2
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-80(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
	movq	-40(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-80(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.21:                               # %for.inc58
                                        #   in Loop: Header=BB1_19 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB1_19
.LBB1_22:                               # %for.end60
                                        #   in Loop: Header=BB1_17 Depth=1
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
	movq	-40(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	free@PLT
# %bb.23:                               # %for.inc65
                                        #   in Loop: Header=BB1_17 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB1_17
.LBB1_24:                               # %for.end67
	movq	-24(%rbp), %rdi
	callq	free@PLT
	movq	-40(%rbp), %rdi
	callq	free@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$80, %rsp
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
	.asciz	"Time used on Min_Cost_Path() function: %f\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Finished!\n"
	.size	.L.str.4, 11

	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 26eb4285b56edd8c897642078d91f16ff0fd3472)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Min_Cost_Path
	.addrsig_sym clock
	.addrsig_sym printf
	.addrsig_sym malloc
	.addrsig_sym free
