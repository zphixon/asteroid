	.text
	.def	 _ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	.globl	_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	.p2align	4, 0x90
_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\num\\mod.rs"
	.cv_loc	0 1 1551 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	pushq	%rax
.Lcfi2:
	.seh_stackalloc 8
	movq	%rsp, %rbp
.Lcfi3:
	.seh_setframe 5, 0
.Lcfi4:
	.seh_endprologue
	movw	%cx, %ax
	movw	%ax, 6(%rbp)
.Ltmp0:
	.cv_loc	0 1 1552 0
	movw	6(%rbp), %ax
	.cv_loc	0 1 1553 0
	addq	$8, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
.Lcfi5:
	.seh_endproc

	.def	 _ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	.globl	_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	.p2align	4, 0x90
_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 1551 0
.Lcfi6:
.seh_proc _ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	pushq	%rbp
.Lcfi7:
	.seh_pushreg 5
	pushq	%rax
.Lcfi8:
	.seh_stackalloc 8
	movq	%rsp, %rbp
.Lcfi9:
	.seh_setframe 5, 0
.Lcfi10:
	.seh_endprologue
	movl	%ecx, 4(%rbp)
.Ltmp2:
	.cv_loc	1 1 1552 0
	movl	4(%rbp), %eax
	.cv_loc	1 1 1553 0
	addq	$8, %rsp
	popq	%rbp
	retq
.Ltmp3:
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
.Lcfi11:
	.seh_endproc

	.def	 _ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	.globl	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	.p2align	4, 0x90
_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 1 1408 0
.Lcfi12:
.seh_proc _ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	pushq	%rbp
.Lcfi13:
	.seh_pushreg 5
	subq	$48, %rsp
.Lcfi14:
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
.Lcfi15:
	.seh_setframe 5, 48
.Lcfi16:
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movl	%edx, -8(%rbp)
.Ltmp4:
	.cv_loc	2 1 1410 0
	movl	-8(%rbp), %edx
	movl	%edx, -20(%rbp)
	movl	$64, %eax
	movl	-20(%rbp), %ecx
	andl	$63, %ecx
	movl	%ecx, -4(%rbp)
.Ltmp5:
	.cv_loc	2 1 1411 0
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movl	%ecx, %r8d
	andq	$63, %r8
	movq	%r8, %rcx
	shlq	%cl, %rdx
	movq	-16(%rbp), %r8
	subl	-4(%rbp), %eax
	movq	%r8, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	andl	$63, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	andq	$63, %rcx
	movq	-32(%rbp), %rdx
	shrq	%cl, %rdx
	movq	-40(%rbp), %r8
	orq	%rdx, %r8
.Ltmp6:
	.cv_loc	2 1 1412 0
	movq	%r8, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Ltmp7:
.Lfunc_end2:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
.Lcfi17:
	.seh_endproc

	.def	 _ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	.globl	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	.p2align	4, 0x90
_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 1 1778 0
.Lcfi18:
.seh_proc _ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	pushq	%rbp
.Lcfi19:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi20:
	.seh_stackalloc 32
	leaq	32(%rsp), %rbp
.Lcfi21:
	.seh_setframe 5, 32
.Lcfi22:
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
.Ltmp8:
	.cv_loc	3 1 1780 0
	movq	-24(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.Ltmp9:
	.cv_loc	3 1 1782 0
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp10:
.Lfunc_end3:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
.Lcfi23:
	.seh_endproc

	.def	 _ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	.globl	_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	.p2align	4, 0x90
_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E:
.Lfunc_begin4:
	.cv_func_id 4
	.cv_loc	4 1 1551 0
.Lcfi24:
.seh_proc _ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	pushq	%rbp
.Lcfi25:
	.seh_pushreg 5
	pushq	%rax
.Lcfi26:
	.seh_stackalloc 8
	movq	%rsp, %rbp
.Lcfi27:
	.seh_setframe 5, 0
.Lcfi28:
	.seh_endprologue
	movq	%rcx, (%rbp)
.Ltmp11:
	.cv_loc	4 1 1552 0
	movq	(%rbp), %rax
	.cv_loc	4 1 1553 0
	addq	$8, %rsp
	popq	%rbp
	retq
.Ltmp12:
.Lfunc_end4:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
.Lcfi29:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
	.globl	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E:
.Lfunc_begin5:
	.cv_func_id 5
	.cv_loc	5 1 1568 0
.Lcfi30:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
	pushq	%rbp
.Lcfi31:
	.seh_pushreg 5
	subq	$96, %rsp
.Lcfi32:
	.seh_stackalloc 96
	leaq	96(%rsp), %rbp
.Lcfi33:
	.seh_setframe 5, 96
.Lcfi34:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, -32(%rbp)
	movq	%r8, -24(%rbp)
.Ltmp13:
	.cv_loc	5 1 1569 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rcx, -40(%rbp)
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movq	%rax, -48(%rbp)
	callq	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	movq	%rax, -56(%rbp)
	movb	%dl, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movb	-57(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.Ltmp14:
	.cv_loc	5 1 1570 0
	testb	$1, -1(%rbp)
	je	.LBB5_3
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB5_4
.LBB5_3:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	$1, (%rcx)
	movq	%rax, 8(%rcx)
.Ltmp15:
.LBB5_4:
	.cv_loc	5 1 1571 0
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Ltmp16:
.Lfunc_end5:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
.Lcfi35:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
	.globl	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E:
.Lfunc_begin6:
	.cv_func_id 6
	.cv_loc	6 1 1604 0
.Lcfi36:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
	pushq	%rbp
.Lcfi37:
	.seh_pushreg 5
	subq	$96, %rsp
.Lcfi38:
	.seh_stackalloc 96
	leaq	96(%rsp), %rbp
.Lcfi39:
	.seh_setframe 5, 96
.Lcfi40:
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rdx, -32(%rbp)
	movq	%r8, -24(%rbp)
.Ltmp17:
	.cv_loc	6 1 1605 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	%rcx, -40(%rbp)
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movq	%rax, -48(%rbp)
	callq	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
	movq	%rax, -56(%rbp)
	movb	%dl, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movb	-57(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.Ltmp18:
	.cv_loc	6 1 1606 0
	testb	$1, -1(%rbp)
	je	.LBB6_3
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB6_4
.LBB6_3:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	$1, (%rcx)
	movq	%rax, 8(%rcx)
.Ltmp19:
.LBB6_4:
	.cv_loc	6 1 1607 0
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Ltmp20:
.Lfunc_end6:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
.Lcfi41:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
	.globl	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E:
.Lfunc_begin7:
	.cv_func_id 7
	.cv_loc	7 1 1778 0
.Lcfi42:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
	pushq	%rbp
.Lcfi43:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi44:
	.seh_stackalloc 32
	leaq	32(%rsp), %rbp
.Lcfi45:
	.seh_setframe 5, 32
.Lcfi46:
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
.Ltmp21:
	.cv_loc	7 1 1780 0
	movq	-24(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.Ltmp22:
	.cv_loc	7 1 1782 0
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp23:
.Lfunc_end7:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
.Lcfi47:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
	.globl	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E:
.Lfunc_begin8:
	.cv_func_id 8
	.cv_loc	8 1 1816 0
.Lcfi48:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
	pushq	%rbp
.Lcfi49:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi50:
	.seh_stackalloc 32
	leaq	32(%rsp), %rbp
.Lcfi51:
	.seh_setframe 5, 32
.Lcfi52:
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
.Ltmp24:
	.cv_loc	8 1 1818 0
	movq	-24(%rbp), %rcx
	imulq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.Ltmp25:
	.cv_loc	8 1 1820 0
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp26:
.Lfunc_end8:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
.Lcfi53:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	.globl	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E:
.Lfunc_begin9:
	.cv_func_id 9
	.cv_loc	9 1 1797 0
.Lcfi54:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	pushq	%rbp
.Lcfi55:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi56:
	.seh_stackalloc 32
	leaq	32(%rsp), %rbp
.Lcfi57:
	.seh_setframe 5, 32
.Lcfi58:
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
.Ltmp27:
	.cv_loc	9 1 1799 0
	movq	-24(%rbp), %rcx
	subq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.Ltmp28:
	.cv_loc	9 1 1801 0
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp29:
.Lfunc_end9:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
.Lcfi59:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
	.globl	_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE:
.Lfunc_begin10:
	.cv_func_id 10
	.cv_loc	10 1 2177 0
.Lcfi60:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
	pushq	%rbp
.Lcfi61:
	.seh_pushreg 5
	subq	$64, %rsp
.Lcfi62:
	.seh_stackalloc 64
	leaq	64(%rsp), %rbp
.Lcfi63:
	.seh_setframe 5, 64
.Lcfi64:
	.seh_endprologue
	movl	$1, %eax
	movl	%eax, %edx
	movq	%rcx, -16(%rbp)
.Ltmp30:
	.cv_loc	10 1 2178 0
	movq	-16(%rbp), %rcx
	callq	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	movq	%rax, -24(%rbp)
	jmp	.LBB10_5
.LBB10_1:
	movb	$1, -1(%rbp)
	jmp	.LBB10_4
.LBB10_2:
	movb	$0, -1(%rbp)
	jmp	.LBB10_4
.LBB10_3:
	cmpq	$0, -16(%rbp)
	sete	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB10_1
	jmp	.LBB10_2
.LBB10_4:
	.cv_loc	10 1 2179 0
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB10_5:
	.cv_loc	10 1 2178 0
	movq	-24(%rbp), %rax
	andq	-16(%rbp), %rax
	cmpq	$0, %rax
	je	.LBB10_3
	jmp	.LBB10_2
.Ltmp31:
.Lfunc_end10:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
.Lcfi65:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	.globl	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E:
.Lfunc_begin11:
	.cv_func_id 11
	.cv_loc	11 1 1959 0
.Lcfi66:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	pushq	%rbp
.Lcfi67:
	.seh_pushreg 5
	subq	$80, %rsp
.Lcfi68:
	.seh_stackalloc 80
	leaq	80(%rsp), %rbp
.Lcfi69:
	.seh_setframe 5, 80
.Lcfi70:
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
.Ltmp32:
	.cv_loc	11 1 1961 0
	movq	-64(%rbp), %rcx
	.cv_loc	11 1 1962 0
	movq	-56(%rbp), %rdx
	.cv_loc	11 1 1961 0
	addq	%rdx, %rcx
	setb	%al
	andb	$1, %al
	movq	%rcx, -16(%rbp)
	movb	%al, -8(%rbp)
	movq	-16(%rbp), %rcx
	movb	-8(%rbp), %al
	movq	%rcx, -72(%rbp)
	movb	%al, -73(%rbp)
.Ltmp33:
	.cv_loc	11 1 1960 0
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movb	-73(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -17(%rbp)
.Ltmp34:
	.cv_loc	11 1 1964 0
	movq	-32(%rbp), %rdx
	movb	-17(%rbp), %cl
	movq	%rdx, -48(%rbp)
	movb	%cl, -40(%rbp)
.Ltmp35:
	.cv_loc	11 1 1965 0
	movq	-48(%rbp), %rax
	movb	-40(%rbp), %dl
	addq	$80, %rsp
	popq	%rbp
	retq
.Ltmp36:
.Lfunc_end11:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
.Lcfi71:
	.seh_endproc

	.def	 _ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
	.p2align	4, 0x90
_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE:
.Lfunc_begin12:
	.cv_func_id 12
	.cv_loc	12 1 2009 0
.Lcfi72:
.seh_proc _ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
	pushq	%rbp
.Lcfi73:
	.seh_pushreg 5
	subq	$80, %rsp
.Lcfi74:
	.seh_stackalloc 80
	leaq	80(%rsp), %rbp
.Lcfi75:
	.seh_setframe 5, 80
.Lcfi76:
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
.Ltmp37:
	.cv_loc	12 1 2011 0
	movq	-64(%rbp), %rax
	.cv_loc	12 1 2012 0
	movq	-56(%rbp), %rcx
	.cv_loc	12 1 2011 0
	mulq	%rcx
	seto	%r8b
	andb	$1, %r8b
	movq	%rax, -16(%rbp)
	movb	%r8b, -8(%rbp)
	movq	-16(%rbp), %rax
	movb	-8(%rbp), %r8b
	movq	%rax, -72(%rbp)
	movb	%r8b, -73(%rbp)
.Ltmp38:
	.cv_loc	12 1 2010 0
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movb	-73(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -17(%rbp)
.Ltmp39:
	.cv_loc	12 1 2014 0
	movq	-32(%rbp), %rdx
	movb	-17(%rbp), %cl
	movq	%rdx, -48(%rbp)
	movb	%cl, -40(%rbp)
.Ltmp40:
	.cv_loc	12 1 2015 0
	movq	-48(%rbp), %rax
	movb	-40(%rbp), %dl
	addq	$80, %rsp
	popq	%rbp
	retq
.Ltmp41:
.Lfunc_end12:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
.Lcfi77:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp43-.Ltmp42
.Ltmp42:
	.short	.Ltmp45-.Ltmp44
.Ltmp44:
	.short	4412
	.long	3
	.short	208
	.short	1
	.short	25
	.short	0
	.short	0
	.short	4001
	.short	0
	.short	0
	.short	0
	.asciz	"clang LLVM (rustc version 1.25.0-nightly (15a1e2844 2018-01-20))"
.Ltmp45:
.Ltmp43:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp47-.Ltmp46
.Ltmp46:
	.short	.Ltmp49-.Ltmp48
.Ltmp48:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	.long	0
	.long	0
	.long	4099
	.secrel32	_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	.secidx	_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	.byte	0
	.asciz	"core::num::{{impl}}::to_le"
.Ltmp49:
	.short	.Ltmp51-.Ltmp50
.Ltmp50:
	.short	4414
	.long	33
	.short	1
	.asciz	"self"
.Ltmp51:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\006\000\000\000"
	.short	2
	.short	4431
.Ltmp47:
	.p2align	2
	.cv_linetable	0, _ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E, .Lfunc_end0
	.section	.debug$S,"dr",associative,_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	.long	0
	.long	0
	.long	4102
	.secrel32	_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	.secidx	_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	.byte	0
	.asciz	"core::num::{{impl}}::to_le"
.Ltmp55:
	.short	.Ltmp57-.Ltmp56
.Ltmp56:
	.short	4414
	.long	117
	.short	1
	.asciz	"self"
.Ltmp57:
	.cv_def_range	 .Ltmp2 .Ltmp3, "E\021N\001\000\000\004\000\000\000"
	.short	2
	.short	4431
.Ltmp53:
	.p2align	2
	.cv_linetable	1, _ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E, .Lfunc_end1
	.section	.debug$S,"dr",associative,_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp59-.Ltmp58
.Ltmp58:
	.short	.Ltmp61-.Ltmp60
.Ltmp60:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	.long	0
	.long	0
	.long	4105
	.secrel32	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	.secidx	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	.byte	0
	.asciz	"core::num::{{impl}}::rotate_left"
.Ltmp61:
	.short	.Ltmp63-.Ltmp62
.Ltmp62:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp63:
	.cv_def_range	 .Ltmp4 .Ltmp7, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp65-.Ltmp64
.Ltmp64:
	.short	4414
	.long	117
	.short	1
	.asciz	"n"
.Ltmp65:
	.cv_def_range	 .Ltmp4 .Ltmp7, "E\021N\001\000\000\370\377\377\377"
	.short	.Ltmp67-.Ltmp66
.Ltmp66:
	.short	4414
	.long	117
	.short	0
	.asciz	"n"
.Ltmp67:
	.cv_def_range	 .Ltmp5 .Ltmp6, "E\021N\001\000\000\374\377\377\377"
	.short	2
	.short	4431
.Ltmp59:
	.p2align	2
	.cv_linetable	2, _ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E, .Lfunc_end2
	.section	.debug$S,"dr",associative,_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp69-.Ltmp68
.Ltmp68:
	.short	.Ltmp71-.Ltmp70
.Ltmp70:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	.long	0
	.long	0
	.long	4108
	.secrel32	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	.secidx	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	.byte	0
	.asciz	"core::num::{{impl}}::wrapping_add"
.Ltmp71:
	.short	.Ltmp73-.Ltmp72
.Ltmp72:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp73:
	.cv_def_range	 .Ltmp8 .Ltmp10, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp75-.Ltmp74
.Ltmp74:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp75:
	.cv_def_range	 .Ltmp8 .Ltmp10, "E\021N\001\000\000\360\377\377\377"
	.short	2
	.short	4431
.Ltmp69:
	.p2align	2
	.cv_linetable	3, _ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E, .Lfunc_end3
	.section	.debug$S,"dr",associative,_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp77-.Ltmp76
.Ltmp76:
	.short	.Ltmp79-.Ltmp78
.Ltmp78:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	.long	0
	.long	0
	.long	4111
	.secrel32	_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	.secidx	_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	.byte	0
	.asciz	"core::num::{{impl}}::to_le"
.Ltmp79:
	.short	.Ltmp81-.Ltmp80
.Ltmp80:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp81:
	.cv_def_range	 .Ltmp11 .Ltmp12, "E\021N\001\000\000\000\000\000\000"
	.short	2
	.short	4431
.Ltmp77:
	.p2align	2
	.cv_linetable	4, _ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E, .Lfunc_end4
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp83-.Ltmp82
.Ltmp82:
	.short	.Ltmp85-.Ltmp84
.Ltmp84:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
	.long	0
	.long	0
	.long	4120
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E
	.byte	0
	.asciz	"core::num::{{impl}}::checked_add"
.Ltmp85:
	.short	.Ltmp87-.Ltmp86
.Ltmp86:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp87:
	.cv_def_range	 .Ltmp13 .Ltmp16, "E\021N\001\000\000\340\377\377\377"
	.short	.Ltmp89-.Ltmp88
.Ltmp88:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp89:
	.cv_def_range	 .Ltmp13 .Ltmp16, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp91-.Ltmp90
.Ltmp90:
	.short	4414
	.long	35
	.short	0
	.asciz	"a"
.Ltmp91:
	.cv_def_range	 .Ltmp14 .Ltmp15, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp93-.Ltmp92
.Ltmp92:
	.short	4414
	.long	48
	.short	0
	.asciz	"b"
.Ltmp93:
	.cv_def_range	 .Ltmp14 .Ltmp15, "E\021N\001\000\000\377\377\377\377"
	.short	2
	.short	4431
.Ltmp83:
	.p2align	2
	.cv_linetable	5, _ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h2595e4725e9ad1d8E, .Lfunc_end5
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp95-.Ltmp94
.Ltmp94:
	.short	.Ltmp97-.Ltmp96
.Ltmp96:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end6-_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
	.long	0
	.long	0
	.long	4121
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E
	.byte	0
	.asciz	"core::num::{{impl}}::checked_mul"
.Ltmp97:
	.short	.Ltmp99-.Ltmp98
.Ltmp98:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp99:
	.cv_def_range	 .Ltmp17 .Ltmp20, "E\021N\001\000\000\340\377\377\377"
	.short	.Ltmp101-.Ltmp100
.Ltmp100:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp101:
	.cv_def_range	 .Ltmp17 .Ltmp20, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp103-.Ltmp102
.Ltmp102:
	.short	4414
	.long	35
	.short	0
	.asciz	"a"
.Ltmp103:
	.cv_def_range	 .Ltmp18 .Ltmp19, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp105-.Ltmp104
.Ltmp104:
	.short	4414
	.long	48
	.short	0
	.asciz	"b"
.Ltmp105:
	.cv_def_range	 .Ltmp18 .Ltmp19, "E\021N\001\000\000\377\377\377\377"
	.short	2
	.short	4431
.Ltmp95:
	.p2align	2
	.cv_linetable	6, _ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17he54b40f9f4f9b5c4E, .Lfunc_end6
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp107-.Ltmp106
.Ltmp106:
	.short	.Ltmp109-.Ltmp108
.Ltmp108:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end7-_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
	.long	0
	.long	0
	.long	4108
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E
	.byte	0
	.asciz	"core::num::{{impl}}::wrapping_add"
.Ltmp109:
	.short	.Ltmp111-.Ltmp110
.Ltmp110:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp111:
	.cv_def_range	 .Ltmp21 .Ltmp23, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp113-.Ltmp112
.Ltmp112:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp113:
	.cv_def_range	 .Ltmp21 .Ltmp23, "E\021N\001\000\000\360\377\377\377"
	.short	2
	.short	4431
.Ltmp107:
	.p2align	2
	.cv_linetable	7, _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_add17hb5013636858df802E, .Lfunc_end7
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp115-.Ltmp114
.Ltmp114:
	.short	.Ltmp117-.Ltmp116
.Ltmp116:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end8-_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
	.long	0
	.long	0
	.long	4122
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E
	.byte	0
	.asciz	"core::num::{{impl}}::wrapping_mul"
.Ltmp117:
	.short	.Ltmp119-.Ltmp118
.Ltmp118:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp119:
	.cv_def_range	 .Ltmp24 .Ltmp26, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp121-.Ltmp120
.Ltmp120:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp121:
	.cv_def_range	 .Ltmp24 .Ltmp26, "E\021N\001\000\000\360\377\377\377"
	.short	2
	.short	4431
.Ltmp115:
	.p2align	2
	.cv_linetable	8, _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_mul17hbfff3ceafe74be04E, .Lfunc_end8
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp123-.Ltmp122
.Ltmp122:
	.short	.Ltmp125-.Ltmp124
.Ltmp124:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end9-_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	.long	0
	.long	0
	.long	4123
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E
	.byte	0
	.asciz	"core::num::{{impl}}::wrapping_sub"
.Ltmp125:
	.short	.Ltmp127-.Ltmp126
.Ltmp126:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp127:
	.cv_def_range	 .Ltmp27 .Ltmp29, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp129-.Ltmp128
.Ltmp128:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp129:
	.cv_def_range	 .Ltmp27 .Ltmp29, "E\021N\001\000\000\360\377\377\377"
	.short	2
	.short	4431
.Ltmp123:
	.p2align	2
	.cv_linetable	9, _ZN4core3num23_$LT$impl$u20$usize$GT$12wrapping_sub17hcdbad80dcddfbfa4E, .Lfunc_end9
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp131-.Ltmp130
.Ltmp130:
	.short	.Ltmp133-.Ltmp132
.Ltmp132:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end10-_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
	.long	0
	.long	0
	.long	4125
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE
	.byte	0
	.asciz	"core::num::{{impl}}::is_power_of_two"
.Ltmp133:
	.short	.Ltmp135-.Ltmp134
.Ltmp134:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp135:
	.cv_def_range	 .Ltmp30 .Ltmp31, "E\021N\001\000\000\360\377\377\377"
	.short	2
	.short	4431
.Ltmp131:
	.p2align	2
	.cv_linetable	10, _ZN4core3num23_$LT$impl$u20$usize$GT$15is_power_of_two17h47775aceccb15faeE, .Lfunc_end10
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp137-.Ltmp136
.Ltmp136:
	.short	.Ltmp139-.Ltmp138
.Ltmp138:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end11-_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	.long	0
	.long	0
	.long	4131
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E
	.byte	0
	.asciz	"core::num::{{impl}}::overflowing_add"
.Ltmp139:
	.short	.Ltmp141-.Ltmp140
.Ltmp140:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp141:
	.cv_def_range	 .Ltmp32 .Ltmp36, "E\021N\001\000\000\300\377\377\377"
	.short	.Ltmp143-.Ltmp142
.Ltmp142:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp143:
	.cv_def_range	 .Ltmp32 .Ltmp36, "E\021N\001\000\000\310\377\377\377"
	.short	.Ltmp145-.Ltmp144
.Ltmp144:
	.short	4414
	.long	35
	.short	0
	.asciz	"a"
.Ltmp145:
	.cv_def_range	 .Ltmp34 .Ltmp35, "E\021N\001\000\000\340\377\377\377"
	.short	.Ltmp147-.Ltmp146
.Ltmp146:
	.short	4414
	.long	48
	.short	0
	.asciz	"b"
.Ltmp147:
	.cv_def_range	 .Ltmp34 .Ltmp35, "E\021N\001\000\000\357\377\377\377"
	.short	2
	.short	4431
.Ltmp137:
	.p2align	2
	.cv_linetable	11, _ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_add17hec405971a6f447d9E, .Lfunc_end11
	.section	.debug$S,"dr",associative,_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp149-.Ltmp148
.Ltmp148:
	.short	.Ltmp151-.Ltmp150
.Ltmp150:
	.short	4422
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end12-_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
	.long	0
	.long	0
	.long	4132
	.secrel32	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
	.secidx	_ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE
	.byte	0
	.asciz	"core::num::{{impl}}::overflowing_mul"
.Ltmp151:
	.short	.Ltmp153-.Ltmp152
.Ltmp152:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp153:
	.cv_def_range	 .Ltmp37 .Ltmp41, "E\021N\001\000\000\300\377\377\377"
	.short	.Ltmp155-.Ltmp154
.Ltmp154:
	.short	4414
	.long	35
	.short	1
	.asciz	"rhs"
.Ltmp155:
	.cv_def_range	 .Ltmp37 .Ltmp41, "E\021N\001\000\000\310\377\377\377"
	.short	.Ltmp157-.Ltmp156
.Ltmp156:
	.short	4414
	.long	35
	.short	0
	.asciz	"a"
.Ltmp157:
	.cv_def_range	 .Ltmp39 .Ltmp40, "E\021N\001\000\000\340\377\377\377"
	.short	.Ltmp159-.Ltmp158
.Ltmp158:
	.short	4414
	.long	48
	.short	0
	.asciz	"b"
.Ltmp159:
	.cv_def_range	 .Ltmp39 .Ltmp40, "E\021N\001\000\000\357\377\377\377"
	.short	2
	.short	4431
.Ltmp149:
	.p2align	2
	.cv_linetable	12, _ZN4core3num23_$LT$impl$u20$usize$GT$15overflowing_mul17h39abd30f4d4e35feE, .Lfunc_end12
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp161-.Ltmp160
.Ltmp160:
	.short	.Ltmp163-.Ltmp162
.Ltmp162:
	.short	4360
	.long	4117
	.asciz	"core::option::Option<usize>"
.Ltmp163:
	.short	.Ltmp165-.Ltmp164
.Ltmp164:
	.short	4360
	.long	4129
	.asciz	"(usize, bool)"
.Ltmp165:
.Ltmp161:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.byte	0x1a, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x6e, 0x75
	.byte	0x6d, 0x3a, 0x3a, 0x7b
	.byte	0x7b, 0x69, 0x6d, 0x70
	.byte	0x6c, 0x7d, 0x7d, 0x00
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x21, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x21, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x74, 0x6f, 0x5f, 0x6c
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x75, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x75, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x74, 0x6f, 0x5f, 0x6c
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x75, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x07, 0x10, 0x00, 0x00
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x08, 0x10, 0x00, 0x00
	.byte	0x72, 0x6f, 0x74, 0x61
	.byte	0x74, 0x65, 0x5f, 0x6c
	.byte	0x65, 0x66, 0x74, 0x00
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x0a, 0x10, 0x00, 0x00
	.byte	0x1a, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x0b, 0x10, 0x00, 0x00
	.byte	0x77, 0x72, 0x61, 0x70
	.byte	0x70, 0x69, 0x6e, 0x67
	.byte	0x5f, 0x61, 0x64, 0x64
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x0d, 0x10, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x0e, 0x10, 0x00, 0x00
	.byte	0x74, 0x6f, 0x5f, 0x6c
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x4a, 0x00, 0x06, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x6f, 0x70, 0x74, 0x69
	.byte	0x6f, 0x6e, 0x3a, 0x3a
	.byte	0x4f, 0x70, 0x74, 0x69
	.byte	0x6f, 0x6e, 0x3c, 0x75
	.byte	0x73, 0x69, 0x7a, 0x65
	.byte	0x3e, 0x00, 0x64, 0x33
	.byte	0x30, 0x65, 0x35, 0x62
	.byte	0x31, 0x39, 0x61, 0x61
	.byte	0x37, 0x61, 0x39, 0x34
	.byte	0x64, 0x64, 0x36, 0x61
	.byte	0x34, 0x30, 0x37, 0x38
	.byte	0x61, 0x64, 0x34, 0x62
	.byte	0x37, 0x65, 0x65, 0x39
	.byte	0x32, 0x35, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x10, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x0a, 0x10, 0x00, 0x00
	.byte	0x1a, 0x00, 0x03, 0x12
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x00, 0x00, 0x4e, 0x6f
	.byte	0x6e, 0x65, 0x00, 0xf1
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x01, 0x00, 0x53, 0x6f
	.byte	0x6d, 0x65, 0x00, 0xf1
	.byte	0x26, 0x00, 0x07, 0x15
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x12, 0x10, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x6f, 0x70
	.byte	0x74, 0x69, 0x6f, 0x6e
	.byte	0x3a, 0x3a, 0x4f, 0x70
	.byte	0x74, 0x69, 0x6f, 0x6e
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x4a, 0x00, 0x03, 0x12
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x13, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x52, 0x55
	.byte	0x53, 0x54, 0x24, 0x45
	.byte	0x4e, 0x55, 0x4d, 0x24
	.byte	0x44, 0x49, 0x53, 0x52
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x13, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x52, 0x55
	.byte	0x53, 0x54, 0x24, 0x45
	.byte	0x4e, 0x55, 0x4d, 0x24
	.byte	0x44, 0x49, 0x53, 0x52
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x08, 0x00, 0x5f, 0x5f
	.byte	0x30, 0x00, 0xf2, 0xf1
	.byte	0x4a, 0x00, 0x06, 0x15
	.byte	0x03, 0x00, 0x00, 0x06
	.byte	0x14, 0x10, 0x00, 0x00
	.byte	0x10, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x6f, 0x70, 0x74, 0x69
	.byte	0x6f, 0x6e, 0x3a, 0x3a
	.byte	0x4f, 0x70, 0x74, 0x69
	.byte	0x6f, 0x6e, 0x3c, 0x75
	.byte	0x73, 0x69, 0x7a, 0x65
	.byte	0x3e, 0x00, 0x64, 0x33
	.byte	0x30, 0x65, 0x35, 0x62
	.byte	0x31, 0x39, 0x61, 0x61
	.byte	0x37, 0x61, 0x39, 0x34
	.byte	0x64, 0x64, 0x36, 0x61
	.byte	0x34, 0x30, 0x37, 0x38
	.byte	0x61, 0x64, 0x34, 0x62
	.byte	0x37, 0x65, 0x65, 0x39
	.byte	0x32, 0x35, 0x00, 0xf1
	.byte	0x12, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x5c, 0x3c, 0x75, 0x6e
	.byte	0x6b, 0x6e, 0x6f, 0x77
	.byte	0x6e, 0x3e, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x15, 0x10, 0x00, 0x00
	.byte	0x16, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x11, 0x10, 0x00, 0x00
	.byte	0x63, 0x68, 0x65, 0x63
	.byte	0x6b, 0x65, 0x64, 0x5f
	.byte	0x61, 0x64, 0x64, 0x00
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x11, 0x10, 0x00, 0x00
	.byte	0x63, 0x68, 0x65, 0x63
	.byte	0x6b, 0x65, 0x64, 0x5f
	.byte	0x6d, 0x75, 0x6c, 0x00
	.byte	0x1a, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x0b, 0x10, 0x00, 0x00
	.byte	0x77, 0x72, 0x61, 0x70
	.byte	0x70, 0x69, 0x6e, 0x67
	.byte	0x5f, 0x6d, 0x75, 0x6c
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x1a, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x0b, 0x10, 0x00, 0x00
	.byte	0x77, 0x72, 0x61, 0x70
	.byte	0x70, 0x69, 0x6e, 0x67
	.byte	0x5f, 0x73, 0x75, 0x62
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x30, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x0d, 0x10, 0x00, 0x00
	.byte	0x1a, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x1c, 0x10, 0x00, 0x00
	.byte	0x69, 0x73, 0x5f, 0x70
	.byte	0x6f, 0x77, 0x65, 0x72
	.byte	0x5f, 0x6f, 0x66, 0x5f
	.byte	0x74, 0x77, 0x6f, 0x00
	.byte	0x46, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x28, 0x75
	.byte	0x73, 0x69, 0x7a, 0x65
	.byte	0x2c, 0x20, 0x62, 0x6f
	.byte	0x6f, 0x6c, 0x29, 0x00
	.byte	0x35, 0x31, 0x66, 0x66
	.byte	0x65, 0x39, 0x61, 0x32
	.byte	0x37, 0x36, 0x64, 0x66
	.byte	0x38, 0x34, 0x31, 0x61
	.byte	0x34, 0x61, 0x38, 0x63
	.byte	0x30, 0x62, 0x36, 0x61
	.byte	0x36, 0x66, 0x37, 0x61
	.byte	0x66, 0x37, 0x36, 0x38
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x1e, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x0a, 0x10, 0x00, 0x00
	.byte	0x22, 0x00, 0x03, 0x12
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x5f, 0x5f
	.byte	0x30, 0x00, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x30, 0x00, 0x00, 0x00
	.byte	0x08, 0x00, 0x5f, 0x5f
	.byte	0x31, 0x00, 0xf2, 0xf1
	.byte	0x46, 0x00, 0x05, 0x15
	.byte	0x02, 0x00, 0x00, 0x02
	.byte	0x20, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x10, 0x00, 0x28, 0x75
	.byte	0x73, 0x69, 0x7a, 0x65
	.byte	0x2c, 0x20, 0x62, 0x6f
	.byte	0x6f, 0x6c, 0x29, 0x00
	.byte	0x35, 0x31, 0x66, 0x66
	.byte	0x65, 0x39, 0x61, 0x32
	.byte	0x37, 0x36, 0x64, 0x66
	.byte	0x38, 0x34, 0x31, 0x61
	.byte	0x34, 0x61, 0x38, 0x63
	.byte	0x30, 0x62, 0x36, 0x61
	.byte	0x36, 0x66, 0x37, 0x61
	.byte	0x66, 0x37, 0x36, 0x38
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x21, 0x10, 0x00, 0x00
	.byte	0x16, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x1a, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x1f, 0x10, 0x00, 0x00
	.byte	0x6f, 0x76, 0x65, 0x72
	.byte	0x66, 0x6c, 0x6f, 0x77
	.byte	0x69, 0x6e, 0x67, 0x5f
	.byte	0x61, 0x64, 0x64, 0x00
	.byte	0x1a, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x1f, 0x10, 0x00, 0x00
	.byte	0x6f, 0x76, 0x65, 0x72
	.byte	0x66, 0x6c, 0x6f, 0x77
	.byte	0x69, 0x6e, 0x67, 0x5f
	.byte	0x6d, 0x75, 0x6c, 0x00

