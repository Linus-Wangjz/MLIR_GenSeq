	.text
	.file	"LLVMDialectModule"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function Needleman_Wunsch
.LCPI0_0:
	.long	4294967291                      # 0xfffffffb
.LCPI0_2:
	.long	2                               # 0x2
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.short	7                               # 0x7
	.short	0                               # 0x0
	.short	7                               # 0x7
	.short	0                               # 0x0
	.short	7                               # 0x7
	.short	0                               # 0x0
	.short	7                               # 0x7
	.short	0                               # 0x0
	.short	7                               # 0x7
	.short	0                               # 0x0
	.short	7                               # 0x7
	.short	0                               # 0x0
	.short	7                               # 0x7
	.short	0                               # 0x0
	.short	7                               # 0x7
	.short	0                               # 0x0
	.text
	.globl	Needleman_Wunsch
	.p2align	4, 0x90
	.type	Needleman_Wunsch,@function
Needleman_Wunsch:                       # @Needleman_Wunsch
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	224(%rsp), %r11
	movq	216(%rsp), %r10
	movq	208(%rsp), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	200(%rsp), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	192(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	184(%rsp), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	176(%rsp), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	168(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	160(%rsp), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	152(%rsp), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rbp
	movq	136(%rsp), %r13
	movq	128(%rsp), %r12
	movq	120(%rsp), %r15
	movq	112(%rsp), %r14
	movq	104(%rsp), %rbx
	movq	96(%rsp), %rax
	movq	-56(%rsp), %rax                 # 8-byte Reload
	movq	-48(%rsp), %r9                  # 8-byte Reload
	movq	-40(%rsp), %r8                  # 8-byte Reload
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	cmpq	$51, %rax
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	-64(%rsp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	xorl	%esi, %esi
	subl	%edx, %esi
	imulq	$26112, %rax, %rdx              # imm = 0x6600
	addq	$0, %rdx
	addq	%rdi, %rdx
	movl	%esi, (%rcx,%rdx,4)
	movq	%rax, %rdx
	shlq	$9, %rdx
	addq	$0, %rdx
	addq	%rdi, %rdx
	movl	%esi, (%rcx,%rdx,4)
	addq	$1, %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_1
.LBB0_6:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB0_15
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	$1, %eax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movq	-104(%rsp), %rax                # 8-byte Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	cmpq	$51, %rax
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$1, %eax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-120(%rsp), %rax                # 8-byte Reload
	movq	%rax, -128(%rsp)                # 8-byte Spill
	cmpq	$51, %rax
	jge	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movq	-128(%rsp), %rax                # 8-byte Reload
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	-16(%rsp), %r9                  # 8-byte Reload
	imulq	$26112, %rdx, %r8               # imm = 0x6600
	movq	%rax, %r10
	shlq	$9, %r10
	addq	%r10, %r8
	addq	%rsi, %r8
	vmovups	(%rcx,%r8,4), %ymm1
	vpbroadcastd	.LCPI0_0(%rip), %ymm0   # ymm0 = [4294967291,4294967291,4294967291,4294967291,4294967291,4294967291,4294967291,4294967291]
	vpaddd	%ymm0, %ymm1, %ymm0
	movq	%rdx, %r8
	shlq	$9, %r8
	addq	%rsi, %r8
	vmovups	(%r9,%r8,4), %ymm2
	vmovups	(%rdi,%r8,4), %ymm3
	vpcmpeqd	%ymm3, %ymm2, %ymm2
	vpsrld	$31, %ymm2, %ymm2
	vmovaps	.LCPI0_1(%rip), %ymm3           # ymm3 = [7,0,7,0,7,0,7,0,7,0,7,0,7,0,7,0]
	vpmaddwd	%ymm3, %ymm2, %ymm2
	vpsubd	%ymm2, %ymm1, %ymm1
	vpbroadcastd	.LCPI0_2(%rip), %ymm2   # ymm2 = [2,2,2,2,2,2,2,2]
	vpaddd	%ymm2, %ymm1, %ymm1
	vpmaxsd	%ymm1, %ymm0, %ymm0
	imulq	$26112, %rdx, %rdx              # imm = 0x6600
	movq	%rax, %rdi
	shlq	$9, %rdi
	addq	%rdi, %rdx
	addq	%rsi, %rdx
	vmovdqu	%ymm0, (%rcx,%rdx,4)
	addq	$1, %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	jmp	.LBB0_11
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	$1, %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-96(%rsp), %rax                 # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	jmp	.LBB0_7
.LBB0_15:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	vzeroupper
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
# %bb.0:
	subq	$5531864, %rsp                  # imm = 0x5468D8
	.cfi_def_cfa_offset 5531872
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	200(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 184(%rsp)                 # 4-byte Spill
	imull	$3, %eax, %eax
	movl	%eax, 188(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	cmpq	$50, %rax
	jge	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movl	188(%rsp), %edx                 # 4-byte Reload
	movl	184(%rsp), %eax                 # 4-byte Reload
	imull	%ecx, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	shlq	$9, %rcx
	addq	%rsi, %rcx
	movl	%edx, 216(%rsp,%rcx,4)
	addq	$1, %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	jmp	.LBB1_3
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movq	200(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	jmp	.LBB1_1
.LBB1_6:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jmp	.LBB1_7
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_12
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	movq	160(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	addl	$-1, %eax
	movl	%eax, 148(%rsp)                 # 4-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
.LBB1_9:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	cmpq	$50, %rax
	jge	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	160(%rsp), %rsi                 # 8-byte Reload
	movl	144(%rsp), %edx                 # 4-byte Reload
	movl	148(%rsp), %eax                 # 4-byte Reload
	imull	%ecx, %eax
	imull	$3, %eax, %eax
	addl	%edx, %eax
	shll	%ecx
	addl	%ecx, %eax
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	shlq	$9, %rcx
	addq	%rsi, %rcx
	movl	%edx, 102616(%rsp,%rcx,4)
	addq	$1, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	jmp	.LBB1_9
.LBB1_11:                               #   in Loop: Header=BB1_7 Depth=1
	movq	160(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jmp	.LBB1_7
.LBB1_12:
	leaq	216(%rsp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$50, %ecx
	movl	$512, %r9d                      # imm = 0x200
	leaq	102616(%rsp), %r10
	leaq	205016(%rsp), %rax
	movq	%rsi, %rdi
	movq	%r9, %r8
	movq	$1, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$50, 32(%rsp)
	movq	$512, 40(%rsp)                  # imm = 0x200
	movq	$512, 48(%rsp)                  # imm = 0x200
	movq	$1, 56(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
	movq	$51, 88(%rsp)
	movq	$51, 96(%rsp)
	movq	$512, 104(%rsp)                 # imm = 0x200
	movq	$26112, 112(%rsp)               # imm = 0x6600
	movq	$512, 120(%rsp)                 # imm = 0x200
	movq	$1, 128(%rsp)
	callq	Needleman_Wunsch@PLT
	leaq	str0(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$5531864, %rsp                  # imm = 0x5468D8
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	str0,@object                    # @str0
	.section	.rodata,"a",@progbits
str0:
	.asciz	"Success!\n"
	.size	str0, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym Needleman_Wunsch
	.addrsig_sym str0
