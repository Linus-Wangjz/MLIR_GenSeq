	.text
	.file	"LLVMDialectModule"
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
# %bb.0:
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	callq	clock@PLT
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	cmpq	$2048, %rax                     # imm = 0x800
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	104(%rsp), %rdx                 # 8-byte Reload
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	movq	32(%rax), %rsi
	movq	24(%rax), %rsi
	movq	16(%rax), %rsi
	movq	(%rax), %rsi
	movq	8(%rax), %rax
	movq	8(%rdx), %rdx
	movq	32(%rdx), %rsi
	movq	24(%rdx), %rsi
	movq	16(%rdx), %rsi
	movq	(%rdx), %rsi
	movq	8(%rdx), %rdx
	movl	(%rdx,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
	movl	$1, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	shlq	$3, %rsi
	leaq	(%rsi,%rsi,4), %r8
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	-32(%rcx,%r8), %r9
	movq	8(%rcx,%r8), %rsi
	movq	8(%rsi), %rsi
	movq	8(%r9), %r9
	movl	(%r9), %r9d
	movq	8(%rdi,%r8), %r10
	movq	8(%r10), %r10
	movl	(%r10,%rdx,4), %r10d
	addl	%r10d, %r9d
	movl	%r9d, (%rsi,%rdx,4)
	movq	8(%rcx), %r9
	movq	32(%r9,%r8), %rcx
	movq	24(%r9,%r8), %rcx
	movq	16(%r9,%r8), %rcx
	movq	8(%r9,%r8), %rcx
	movq	-32(%r9,%r8), %rsi
	movq	(%r9,%r8), %r9
	movl	(%rsi), %esi
	movq	8(%rdi), %rdi
	movq	32(%rdi,%r8), %r9
	movq	24(%rdi,%r8), %r9
	movq	16(%rdi,%r8), %r9
	movq	(%rdi,%r8), %r9
	movq	8(%rdi,%r8), %rdi
	addl	(%rdi,%rdx,4), %esi
	movl	%esi, (%rcx,%rdx,4)
	addq	$1, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB0_1
.LBB0_6:
	callq	clock@PLT
	movq	120(%rsp), %rcx                 # 8-byte Reload
	subq	%rcx, %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	leaq	str0(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_11 Depth 3
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	cmpq	$2048, %rax                     # imm = 0x800
	jge	.LBB0_15
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	$1, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB0_9
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$1, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB0_11
.LBB0_11:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	%rax, %rdi
	shlq	$3, %rdi
	leaq	(%rdi,%rdi,4), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	shlq	$3, %r8
	leaq	(%r8,%r8,4), %r8
	movq	-32(%rcx,%r8), %r9
	movq	8(%rcx,%r8), %rcx
	movq	-32(%r9,%rdi), %r10
	movq	8(%r9,%rdi), %r9
	vmovups	(%r10,%rdx,4), %ymm0
	vmovups	(%r9,%rdx,4), %ymm2
	movq	-32(%rcx,%rdi), %r9
	movq	(%rcx,%rdi), %r10
	vmovups	(%r9,%rdx,4), %ymm1
	vpminsd	%ymm2, %ymm0, %ymm0
	vpminsd	%ymm1, %ymm0, %ymm0
	movq	32(%rcx,%rdi), %r9
	movq	24(%rcx,%rdi), %r9
	movq	16(%rcx,%rdi), %r9
	movq	8(%rcx,%rdi), %rcx
	movq	8(%rsi,%r8), %rsi
	movq	32(%rsi,%rdi), %r8
	movq	24(%rsi,%rdi), %r8
	movq	16(%rsi,%rdi), %r8
	movq	(%rsi,%rdi), %r8
	movq	8(%rsi,%rdi), %rsi
	vpaddd	(%rsi,%rdx,4), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rcx,%rdx,4)
	addq	$1, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB0_11
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=2
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	$8, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB0_7
.LBB0_15:
	vzeroupper
	callq	clock@PLT
	movq	56(%rsp), %rcx                  # 8-byte Reload
	subq	%rcx, %rax
                                        # implicit-def: $xmm0
	vcvtsi2sd	%rax, %xmm0, %xmm0
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	vdivsd	%xmm1, %xmm0, %xmm0
	leaq	str1(%rip), %rdi
	movb	$1, %al
	callq	printf@PLT
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
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
# %bb.0:
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, %rdi
	addq	$20480, %rdi                    # imm = 0x5000
	addq	$40, %rax
	addq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	224(%rsp), %rax                 # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$20520, %edi                    # imm = 0x5028
	callq	malloc@PLT
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$39, %rax
	movabsq	$-3689348814741910323, %rdx     # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	movq	232(%rsp), %rax                 # 8-byte Reload
	shrq	$2, %rdx
	andq	$-8, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rsi, (%rax,%rcx,8)
	movq	%rdx, 8(%rax,%rcx,8)
	movq	$1, 32(%rax,%rcx,8)
	movq	$512, 24(%rax,%rcx,8)           # imm = 0x200
	movq	$0, 16(%rax,%rcx,8)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	208(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rcx,4), %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	192(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rax,4), %rdx
	movq	%rsi, 8(%rcx,%rdx,8)
	movq	%rsi, (%rcx,%rdx,8)
	movq	$1, 32(%rcx,%rdx,8)
	movq	$2048, 24(%rcx,%rdx,8)          # imm = 0x800
	movq	$0, 16(%rcx,%rdx,8)
	addq	$1, %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	jmp	.LBB1_3
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	jmp	.LBB1_1
.LBB1_6:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, %rdi
	addq	$20480, %rdi                    # imm = 0x5000
	addq	$40, %rax
	addq	%rax, %rdi
	callq	malloc@PLT
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	addq	$40, %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	%rcx
	movq	160(%rsp), %rax                 # 8-byte Reload
	subq	%rdx, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_12
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	movl	$20520, %edi                    # imm = 0x5028
	callq	malloc@PLT
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$39, %rax
	movabsq	$-3689348814741910323, %rdx     # imm = 0xCCCCCCCCCCCCCCCD
	mulq	%rdx
	movq	168(%rsp), %rax                 # 8-byte Reload
	shrq	$2, %rdx
	andq	$-8, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rsi, (%rax,%rcx,8)
	movq	%rdx, 8(%rax,%rcx,8)
	movq	$1, 32(%rax,%rcx,8)
	movq	$512, 24(%rax,%rcx,8)           # imm = 0x200
	movq	$0, 16(%rax,%rcx,8)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
.LBB1_9:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=2
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rcx,4), %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc@PLT
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, %rsi
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rax,4), %rdx
	movq	%rsi, 8(%rcx,%rdx,8)
	movq	%rsi, (%rcx,%rdx,8)
	movq	$1, 32(%rcx,%rdx,8)
	movq	$2048, 24(%rcx,%rdx,8)          # imm = 0x800
	movq	$0, 16(%rcx,%rdx,8)
	addq	$1, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB1_9
.LBB1_11:                               #   in Loop: Header=BB1_7 Depth=1
	movq	144(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB1_7
.LBB1_12:
	leaq	str2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	callq	clock@PLT
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movq	232(%rsp), %rsi                 # 8-byte Reload
	movq	152(%rsp), %r9                  # 8-byte Reload
	movq	%rax, %rcx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$512, %ecx                      # imm = 0x200
	movl	$1, %r8d
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	$512, 16(%rsp)                  # imm = 0x200
	movq	$1, 24(%rsp)
	callq	Min_Cost_Path@PLT
	callq	clock@PLT
	movq	104(%rsp), %rcx                 # 8-byte Reload
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
	movq	%rax, 112(%rsp)                 # 8-byte Spill
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_20
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_15
	jmp	.LBB1_19
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=1
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	232(%rsp), %rdx                 # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	32(%rdx,%rcx), %rsi
	movq	24(%rdx,%rcx), %rsi
	movq	16(%rdx,%rcx), %rsi
	movq	(%rdx,%rcx), %rsi
	movq	8(%rdx,%rcx), %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	32(%rax,%rcx), %rdx
	movq	24(%rax,%rcx), %rdx
	movq	16(%rax,%rcx), %rdx
	movq	(%rax,%rcx), %rdx
	movq	8(%rax,%rcx), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
.LBB1_16:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpq	$512, %rax                      # imm = 0x200
	jge	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=2
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %rax                  # 8-byte Reload
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx), %rdi
	callq	free@PLT
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	32(%rax,%rcx), %rdx
	movq	24(%rax,%rcx), %rdx
	movq	16(%rax,%rcx), %rdx
	movq	(%rax,%rcx), %rdi
	movq	8(%rax,%rcx), %rax
	callq	free@PLT
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB1_16
.LBB1_18:                               #   in Loop: Header=BB1_13 Depth=1
	jmp	.LBB1_19
.LBB1_19:                               #   in Loop: Header=BB1_13 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	232(%rsp), %rax                 # 8-byte Reload
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx), %rdi
	callq	free@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	32(%rax,%rcx), %rdx
	movq	24(%rax,%rcx), %rdx
	movq	16(%rax,%rcx), %rdx
	movq	(%rax,%rcx), %rdi
	movq	8(%rax,%rcx), %rax
	callq	free@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	$1, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB1_13
.LBB1_20:
	movq	216(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	movq	152(%rsp), %rdi                 # 8-byte Reload
	callq	free@PLT
	leaq	str4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$248, %rsp
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
	.asciz	"Time used on Min_Cost_Path() function: %f\n"
	.size	str3, 43

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
	.addrsig_sym Min_Cost_Path
	.addrsig_sym clock
	.addrsig_sym str4
	.addrsig_sym str3
	.addrsig_sym str2
	.addrsig_sym str1
	.addrsig_sym str0
