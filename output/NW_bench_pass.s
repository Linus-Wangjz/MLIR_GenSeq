	.text
	.file	"LLVMDialectModule"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function Needleman_Wunsch
.LCPI0_0:
	.quad	0x412e848000000000              # double 1.0E+6
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.long	4294967291                      # 0xfffffffb
.LCPI0_3:
	.long	2                               # 0x2
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_2:
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -16
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movq	184(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	callq	clock@PLT
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	cmpq	$2048, %rax                     # imm = 0x800
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	cmpq	$513, %rax                      # imm = 0x201
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, %esi
	movq	%rax, %rdi
	shlq	$3, %rdi
	leaq	(%rdi,%rdi,4), %rdi
	movq	8(%rcx,%rdi), %r8
	movq	8(%r8), %r8
	negl	%esi
	movl	%esi, (%r8,%rdx,4)
	movq	8(%rcx), %rcx
	movq	32(%rcx,%rdi), %r8
	movq	24(%rcx,%rdi), %r8
	movq	16(%rcx,%rdi), %r8
	movq	(%rcx,%rdi), %r8
	movq	8(%rcx,%rdi), %rcx
	movl	%esi, (%rcx,%rdx,4)
	addq	$1, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB0_1
.LBB0_6:
	callq	clock@PLT
	movq	112(%rsp), %rcx                 # 8-byte Reload
	subq	%rcx, %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	leaq	str0(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpq	$2048, %rax                     # imm = 0x800
	jge	.LBB0_15
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	$1, %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	cmpq	$513, %rax                      # imm = 0x201
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$1, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpq	$513, %rax                      # imm = 0x201
	jge	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	88(%rsp), %r9                   # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %rsi
	shlq	$3, %rsi
	leaq	(%rsi,%rsi,4), %rsi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	shlq	$3, %r8
	leaq	(%r8,%r8,4), %r8
	movq	-32(%rcx,%r8), %r11
	movq	8(%rcx,%r8), %rcx
	movq	-32(%r11,%rsi), %r10
	movq	8(%r11,%rsi), %r11
	vmovups	(%r11,%rdx,4), %ymm0
	vpbroadcastd	.LCPI0_1(%rip), %ymm2   # ymm2 = [4294967291,4294967291,4294967291,4294967291,4294967291,4294967291,4294967291,4294967291]
	vpaddd	%ymm2, %ymm0, %ymm0
	movq	-32(%rcx,%rsi), %r11
	movq	(%rcx,%rsi), %rbx
	vmovups	(%r11,%rdx,4), %ymm1
	vpaddd	%ymm2, %ymm1, %ymm2
	vmovups	(%r10,%rdx,4), %ymm1
	movq	-32(%r9,%r8), %r9
	vmovups	(%r9,%rdx,4), %ymm3
	movq	-32(%rdi,%r8), %rdi
	vmovups	(%rdi,%rdx,4), %ymm4
	vpcmpeqd	%ymm4, %ymm3, %ymm3
	vpsrld	$31, %ymm3, %ymm3
	vmovaps	.LCPI0_2(%rip), %ymm4           # ymm4 = [7,0,7,0,7,0,7,0,7,0,7,0,7,0,7,0]
	vpmaddwd	%ymm4, %ymm3, %ymm3
	vpsubd	%ymm3, %ymm1, %ymm1
	vpbroadcastd	.LCPI0_3(%rip), %ymm3   # ymm3 = [2,2,2,2,2,2,2,2]
	vpaddd	%ymm3, %ymm1, %ymm1
	vpmaxsd	%ymm2, %ymm0, %ymm0
	vpmaxsd	%ymm1, %ymm0, %ymm0
	movq	32(%rcx,%rsi), %rdi
	movq	24(%rcx,%rsi), %rdi
	movq	16(%rcx,%rsi), %rdi
	movq	8(%rcx,%rsi), %rcx
	vmovdqu	%ymm0, (%rcx,%rdx,4)
	addq	$1, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB0_11
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=2
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB0_7
.LBB0_15:
	vzeroupper
	callq	clock@PLT
	movq	48(%rsp), %rcx                  # 8-byte Reload
	subq	%rcx, %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	leaq	str1(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	addq	$128, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
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
# %bb.0:
	subq	$344, %rsp                      # imm = 0x158
	.cfi_def_cfa_offset 352
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, %rdi
	addq	$20480, %rdi                    # imm = 0x5000
	addq	$40, %rax
	addq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	296(%rsp), %rax                 # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, %rdi
	addq	$20480, %rdi                    # imm = 0x5000
	addq	$40, %rax
	addq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	320(%rsp), %rax                 # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 336(%rsp)                 # 8-byte Spill
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	336(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$8192, %edi                     # imm = 0x2000
	movq	%rdi, 264(%rsp)                 # 8-byte Spill
	callq	malloc@PLT
	movq	264(%rsp), %rdi                 # 8-byte Reload
	movq	280(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	304(%rsp), %rax                 # 8-byte Reload
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	movq	%rdx, 8(%rax,%rcx)
	movq	%rdx, (%rax,%rcx)
	movq	$1, 32(%rax,%rcx)
	movq	$2048, 24(%rax,%rcx)            # imm = 0x800
	movq	$0, 16(%rax,%rcx)
	callq	malloc@PLT
	movq	272(%rsp), %rdx                 # 8-byte Reload
	movq	328(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	280(%rsp), %rax                 # 8-byte Reload
	movq	%rsi, 8(%rcx,%rdx)
	movq	%rsi, (%rcx,%rdx)
	movq	$1, 32(%rcx,%rdx)
	movq	$2048, 24(%rcx,%rdx)            # imm = 0x800
	movq	$0, 16(%rcx,%rdx)
	addq	$1, %rax
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	jmp	.LBB1_1
.LBB1_3:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, %rdi
	addq	$20520, %rdi                    # imm = 0x5028
	addq	$40, %rax
	addq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	240(%rsp), %rax                 # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	cmpq	$513, %rax                      # imm = 0x201
	jge	.LBB1_9
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$20560, %edi                    # imm = 0x5050
	callq	malloc@PLT
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$39, %rax
	movabsq	$-3689348814741910323, %rdx     # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	movq	248(%rsp), %rax                 # 8-byte Reload
	shrq	$2, %rdx
	andq	$-8, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rsi, (%rax,%rcx,8)
	movq	%rdx, 8(%rax,%rcx,8)
	movq	$1, 32(%rax,%rcx,8)
	movq	$513, 24(%rax,%rcx,8)           # imm = 0x201
	movq	$0, 16(%rax,%rcx,8)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
.LBB1_6:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	cmpq	$513, %rax                      # imm = 0x201
	jge	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	movq	248(%rsp), %rax                 # 8-byte Reload
	movq	224(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rcx,4), %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	208(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rax,4), %rdx
	movq	%rsi, 8(%rcx,%rdx,8)
	movq	%rsi, (%rcx,%rdx,8)
	movq	$1, 32(%rcx,%rdx,8)
	movq	$2048, 24(%rcx,%rdx,8)          # imm = 0x800
	movq	$0, 16(%rcx,%rdx,8)
	addq	$1, %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	jmp	.LBB1_6
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	movq	224(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB1_4
.LBB1_9:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	jmp	.LBB1_10
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	cmpq	$2048, %rax                     # imm = 0x800
	jge	.LBB1_15
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB1_12
.LBB1_12:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=2
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	8(%rax,%rcx), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	184(%rsp), %rsi                 # 8-byte Reload
	movl	%eax, %edi
	movq	328(%rsp), %rax                 # 8-byte Reload
	movl	%edi, (%rdx,%rsi,4)
	movq	32(%rax,%rcx), %rdx
	movq	24(%rax,%rcx), %rdx
	movq	16(%rax,%rcx), %rdx
	movq	(%rax,%rcx), %rdx
	movq	8(%rax,%rcx), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	callq	rand@PLT
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movl	%eax, %esi
	movq	168(%rsp), %rax                 # 8-byte Reload
	movl	%esi, (%rcx,%rdx,4)
	addq	$1, %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB1_12
.LBB1_14:                               #   in Loop: Header=BB1_10 Depth=1
	movq	184(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	jmp	.LBB1_10
.LBB1_15:
	leaq	str2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movq	304(%rsp), %rsi                 # 8-byte Reload
	movq	312(%rsp), %r9                  # 8-byte Reload
	movq	328(%rsp), %r11                 # 8-byte Reload
	movq	232(%rsp), %r10                 # 8-byte Reload
	movq	%rax, %rcx
	movq	248(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$512, %ecx                      # imm = 0x200
	movl	$1, %r8d
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	movq	$512, 16(%rsp)                  # imm = 0x200
	movq	$1, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$513, 56(%rsp)                  # imm = 0x201
	movq	$1, 64(%rsp)
	callq	Needleman_Wunsch@PLT
	callq	clock@PLT
	movq	128(%rsp), %rcx                 # 8-byte Reload
	subq	%rcx, %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI1_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	leaq	str3(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	(%rax,%rcx), %rdi
	callq	free@PLT
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	328(%rsp), %rax                 # 8-byte Reload
	movq	32(%rax,%rcx), %rdx
	movq	24(%rax,%rcx), %rdx
	movq	16(%rax,%rcx), %rdx
	movq	(%rax,%rcx), %rdi
	movq	8(%rax,%rcx), %rax
	callq	free@PLT
	movq	120(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB1_16
.LBB1_18:
	movq	288(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	312(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
.LBB1_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_26
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_21
	jmp	.LBB1_25
.LBB1_21:                               #   in Loop: Header=BB1_19 Depth=1
	movq	248(%rsp), %rax                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rcx,4), %rcx
	movq	32(%rax,%rcx,8), %rdx
	movq	24(%rax,%rcx,8), %rdx
	movq	16(%rax,%rcx,8), %rdx
	movq	(%rax,%rcx,8), %rdx
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB1_22:                               #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=2
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	(%rcx,%rcx,4), %rcx
	movq	32(%rax,%rcx,8), %rdx
	movq	24(%rax,%rcx,8), %rdx
	movq	16(%rax,%rcx,8), %rdx
	movq	(%rax,%rcx,8), %rdi
	movq	8(%rax,%rcx,8), %rax
	callq	free@PLT
	movq	72(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB1_22
.LBB1_24:                               #   in Loop: Header=BB1_19 Depth=1
	jmp	.LBB1_25
.LBB1_25:                               #   in Loop: Header=BB1_19 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	248(%rsp), %rax                 # 8-byte Reload
	leaq	(%rcx,%rcx,4), %rcx
	movq	32(%rax,%rcx,8), %rdx
	movq	24(%rax,%rcx,8), %rdx
	movq	16(%rax,%rcx,8), %rdx
	movq	(%rax,%rcx,8), %rdi
	movq	8(%rax,%rcx,8), %rax
	callq	free@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB1_19
.LBB1_26:
	movq	232(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	leaq	str4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$344, %rsp                      # imm = 0x158
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	str4,@object                    # @str4
	.section	.rodata,"a",@progbits
str4:
	.asciz	"Finished!\n"
	.size	str4, 11

	.type	str3,@object                    # @str3
	.p2align	4, 0x0
str3:
	.asciz	"Time used on Needleman_Wunsch() function: %f\n"
	.size	str3, 46

	.type	str2,@object                    # @str2
	.p2align	4, 0x0
str2:
	.asciz	"Test Case Generated!\n"
	.size	str2, 22

	.type	str1,@object                    # @str1
	.p2align	4, 0x0
str1:
	.asciz	"Time used on calculation: %f\n"
	.size	str1, 30

	.type	str0,@object                    # @str0
	.p2align	4, 0x0
str0:
	.asciz	"Time used on initialization: %f\n"
	.size	str0, 33

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym free
	.addrsig_sym printf
	.addrsig_sym Needleman_Wunsch
	.addrsig_sym clock
	.addrsig_sym rand
	.addrsig_sym str4
	.addrsig_sym str3
	.addrsig_sym str2
	.addrsig_sym str1
	.addrsig_sym str0
