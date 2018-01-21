	.text
	.def	 _ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
	.globl	_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
	.p2align	4, 0x90
_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\hash\\sip.rs"
	.cv_loc	0 1 178 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	subq	$144, %rsp
.Lcfi2:
	.seh_stackalloc 144
	leaq	128(%rsp), %rbp
.Lcfi3:
	.seh_setframe 5, 128
.Lcfi4:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	-56(%rbp), %r9
	movq	%rdx, -72(%rbp)
	movq	%r8, -64(%rbp)
.Ltmp0:
	.cv_loc	0 1 180 0
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %r8
	movq	%rcx, -80(%rbp)
	movq	%r9, %rcx
	movq	%rax, -88(%rbp)
	callq	_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	movl	$72, %eax
	movl	%eax, %r8d
	leaq	-56(%rbp), %rcx
	.cv_loc	0 1 179 0
	movq	-80(%rbp), %rdx
	movq	%rcx, -96(%rbp)
	movq	%rdx, %rcx
	movq	-96(%rbp), %rdx
	callq	memcpy
	.cv_loc	0 1 182 0
	movq	-88(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
.Lcfi5:
	.seh_endproc

	.def	 _ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	.globl	_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	.p2align	4, 0x90
_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 123 0
.Lcfi6:
.seh_proc _ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	pushq	%rbp
.Lcfi7:
	.seh_pushreg 5
	subq	$176, %rsp
.Lcfi8:
	.seh_stackalloc 176
	leaq	128(%rsp), %rbp
.Lcfi9:
	.seh_setframe 5, 128
.Lcfi10:
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%r8, -8(%rbp)
	movq	%r9, (%rbp)
.Ltmp2:
	.cv_loc	1 1 125 0
	movq	$0, 8(%rbp)
.Ltmp3:
	.cv_loc	1 1 126 0
	movq	$0, 16(%rbp)
.Ltmp4:
	.cv_loc	1 1 127 0
	movq	8(%rbp), %rcx
	addq	$3, %rcx
	cmpq	(%rbp), %rcx
	jae	.LBB1_2
	.cv_loc	1 1 111 0
	movl	$0, 28(%rbp)
.Ltmp5:
	.cv_loc	1 1 128 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	8(%rbp), %rax
	.cv_loc	1 1 112 0
	movq	%rax, %r8
	callq	_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$13get_unchecked17ha7cd3df3d50bb015E
	movq	%rax, -32(%rbp)
	jmp	.LBB1_3
.Ltmp6:
.LBB1_2:
	.cv_loc	1 1 127 0
	jmp	.LBB1_7
.LBB1_3:
	leaq	28(%rbp), %rax
.Ltmp7:
	.cv_loc	1 1 114 0
	movq	%rax, -40(%rbp)
	callq	_ZN4core3mem7size_of17h3229ec5c83280b08E
	movq	%rax, -48(%rbp)
	.cv_loc	1 1 112 0
	movq	-48(%rbp), %rax
	shlq	$0, %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %r8
	callq	memcpy
	.cv_loc	1 1 115 0
	movl	28(%rbp), %ecx
	callq	_ZN4core3num21_$LT$impl$u20$u32$GT$5to_le17hc08d40bd0a66ad12E
	movl	%eax, -52(%rbp)
.Ltmp8:
	.cv_loc	1 1 128 0
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	%rdx, 16(%rbp)
	.cv_loc	1 1 129 0
	movq	8(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, 8(%rbp)
.LBB1_7:
	.cv_loc	1 1 131 0
	movq	8(%rbp), %rax
	addq	$1, %rax
	cmpq	(%rbp), %rax
	jae	.LBB1_9
	.cv_loc	1 1 111 0
	movw	$0, 38(%rbp)
.Ltmp9:
	.cv_loc	1 1 132 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	8(%rbp), %rax
	.cv_loc	1 1 112 0
	movq	%rax, %r8
	callq	_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$13get_unchecked17ha7cd3df3d50bb015E
	movq	%rax, -64(%rbp)
	jmp	.LBB1_10
.Ltmp10:
.LBB1_9:
	.cv_loc	1 1 131 0
	jmp	.LBB1_14
.LBB1_10:
	leaq	38(%rbp), %rax
.Ltmp11:
	.cv_loc	1 1 114 0
	movq	%rax, -72(%rbp)
	callq	_ZN4core3mem7size_of17hcdc3b7b68862581bE
	movq	%rax, -80(%rbp)
	.cv_loc	1 1 112 0
	movq	-80(%rbp), %rax
	shlq	$0, %rax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, %r8
	callq	memcpy
	.cv_loc	1 1 115 0
	movzwl	38(%rbp), %ecx
	callq	_ZN4core3num21_$LT$impl$u20$u16$GT$5to_le17ha843422093de3716E
	movw	%ax, -82(%rbp)
.Ltmp12:
	.cv_loc	1 1 132 0
	movw	-82(%rbp), %ax
	movzwl	%ax, %ecx
	movl	%ecx, %edx
	movq	8(%rbp), %r8
	shlq	$3, %r8
	andq	$63, %r8
	movq	%r8, %rcx
	shlq	%cl, %rdx
	orq	16(%rbp), %rdx
	movq	%rdx, 16(%rbp)
	.cv_loc	1 1 133 0
	movq	8(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, 8(%rbp)
.LBB1_14:
	.cv_loc	1 1 135 0
	movq	8(%rbp), %rax
	cmpq	(%rbp), %rax
	jae	.LBB1_16
	.cv_loc	1 1 136 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	8(%rbp), %rax
	movq	%rax, %r8
	callq	_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$13get_unchecked17ha7cd3df3d50bb015E
	movq	%rax, -96(%rbp)
	jmp	.LBB1_17
.LBB1_16:
	.cv_loc	1 1 135 0
	jmp	.LBB1_18
.LBB1_17:
	.cv_loc	1 1 136 0
	movq	-96(%rbp), %rax
	movb	(%rax), %cl
	movzbl	%cl, %edx
	movl	%edx, %r8d
	movq	8(%rbp), %r9
	shlq	$3, %r9
	andq	$63, %r9
	movq	%r9, %rcx
	shlq	%cl, %r8
	orq	16(%rbp), %r8
	movq	%r8, 16(%rbp)
	.cv_loc	1 1 137 0
	movq	8(%rbp), %r8
	addq	$1, %r8
	movq	%r8, 8(%rbp)
.LBB1_18:
	.cv_loc	1 1 140 0
	movq	16(%rbp), %rax
.Ltmp13:
	.cv_loc	1 1 141 0
	addq	$176, %rsp
	popq	%rbp
	retq
.Ltmp14:
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
.Lcfi11:
	.seh_endproc

	.def	 _ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
	.globl	_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
	.p2align	4, 0x90
_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 1 286 0
.Lcfi12:
.seh_proc _ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
	pushq	%rbp
.Lcfi13:
	.seh_pushreg 5
	subq	$64, %rsp
.Lcfi14:
	.seh_stackalloc 64
	leaq	64(%rsp), %rbp
.Lcfi15:
	.seh_setframe 5, 64
.Lcfi16:
	.seh_endprologue
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%r8, -8(%rbp)
.Ltmp15:
	.cv_loc	2 1 287 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %r8
	callq	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	.cv_loc	2 1 288 0
	nop
	addq	$64, %rsp
	popq	%rbp
	retq
.Ltmp16:
.Lfunc_end2:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
.Lcfi17:
	.seh_endproc

	.def	 _ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
	.globl	_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
	.p2align	4, 0x90
_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 1 291 0
.Lcfi18:
.seh_proc _ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
	pushq	%rbp
.Lcfi19:
	.seh_pushreg 5
	subq	$48, %rsp
.Lcfi20:
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
.Lcfi21:
	.seh_setframe 5, 48
.Lcfi22:
	.seh_endprologue
	movq	%rcx, -8(%rbp)
.Ltmp17:
	.cv_loc	3 1 292 0
	movq	-8(%rbp), %rcx
	callq	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	movq	%rax, -16(%rbp)
	.cv_loc	3 1 293 0
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Ltmp18:
.Lfunc_end3:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
.Lcfi23:
	.seh_endproc

	.def	 _ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	.globl	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	.p2align	4, 0x90
_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE:
.Lfunc_begin4:
	.cv_func_id 4
	.cv_loc	4 1 416 0
.Lcfi24:
.seh_proc _ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	pushq	%rbp
.Lcfi25:
	.seh_pushreg 5
	subq	$128, %rsp
.Lcfi26:
	.seh_stackalloc 128
	leaq	128(%rsp), %rbp
.Lcfi27:
	.seh_setframe 5, 128
.Lcfi28:
	.seh_endprologue
	movq	%rcx, -8(%rbp)
.Ltmp19:
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	4 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -16(%rbp)
	movl	$13, %edx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	4 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -24(%rbp)
	movl	$32, %edx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %r8
	movq	-8(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	.cv_loc	4 1 94 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	4 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -40(%rbp)
	movl	$16, %edx
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	4 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	4 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -56(%rbp)
	movl	$21, %edx
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	4 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	4 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -72(%rbp)
	movl	$17, %edx
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	4 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -80(%rbp)
	movl	$32, %edx
	movq	-8(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	4 1 89 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %r8
	movq	-8(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	.cv_loc	4 1 98 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	4 1 418 0
	addq	$128, %rsp
	popq	%rbp
	retq
.Ltmp20:
.Lfunc_end4:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
.Lcfi29:
	.seh_endproc

	.def	 _ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	.globl	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	.p2align	4, 0x90
_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE:
.Lfunc_begin5:
	.cv_func_id 5
	.cv_loc	5 1 421 0
.Lcfi30:
.seh_proc _ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	pushq	%rbp
.Lcfi31:
	.seh_pushreg 5
	subq	$288, %rsp
.Lcfi32:
	.seh_stackalloc 288
	leaq	128(%rsp), %rbp
.Lcfi33:
	.seh_setframe 5, 128
.Lcfi34:
	.seh_endprologue
	movq	%rcx, 152(%rbp)
.Ltmp21:
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	152(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	5 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 144(%rbp)
	movl	$13, %edx
	movq	152(%rbp), %rax
	movq	144(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	5 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 136(%rbp)
	movl	$32, %edx
	movq	152(%rbp), %rax
	movq	136(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rbp), %r8
	movq	152(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	.cv_loc	5 1 94 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 128(%rbp)
	movq	152(%rbp), %rax
	movq	128(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	movq	152(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	5 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 120(%rbp)
	movl	$16, %edx
	movq	152(%rbp), %rax
	movq	120(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	5 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 112(%rbp)
	movq	152(%rbp), %rax
	movq	112(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rbp), %rdx
	movq	152(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	movq	152(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	5 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 104(%rbp)
	movl	$21, %edx
	movq	152(%rbp), %rax
	movq	104(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	5 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 96(%rbp)
	movq	152(%rbp), %rax
	movq	96(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rbp), %rdx
	movq	152(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	movq	152(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	5 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 88(%rbp)
	movl	$17, %edx
	movq	152(%rbp), %rax
	movq	88(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	5 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 80(%rbp)
	movl	$32, %edx
	movq	152(%rbp), %rax
	movq	80(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rbp), %r8
	movq	152(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	.cv_loc	5 1 98 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 72(%rbp)
	movq	152(%rbp), %rax
	movq	72(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	movq	152(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	5 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 64(%rbp)
	movl	$13, %edx
	movq	152(%rbp), %rax
	movq	64(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	5 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 56(%rbp)
	movl	$32, %edx
	movq	152(%rbp), %rax
	movq	56(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rbp), %r8
	movq	152(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	.cv_loc	5 1 94 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 48(%rbp)
	movq	152(%rbp), %rax
	movq	48(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	movq	152(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	5 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 40(%rbp)
	movl	$16, %edx
	movq	152(%rbp), %rax
	movq	40(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	5 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 32(%rbp)
	movq	152(%rbp), %rax
	movq	32(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rbp), %rdx
	movq	152(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	movq	152(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	5 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 24(%rbp)
	movl	$21, %edx
	movq	152(%rbp), %rax
	movq	24(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	5 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, 16(%rbp)
	movq	152(%rbp), %rax
	movq	16(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rbp), %rdx
	movq	152(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	movq	152(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	5 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, 8(%rbp)
	movl	$17, %edx
	movq	152(%rbp), %rax
	movq	8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	5 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, (%rbp)
	movl	$32, %edx
	movq	152(%rbp), %rax
	movq	(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rbp), %r8
	movq	152(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	.cv_loc	5 1 98 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -8(%rbp)
	movq	152(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	movq	152(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	5 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -16(%rbp)
	movl	$13, %edx
	movq	152(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	5 1 93 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -24(%rbp)
	movl	$32, %edx
	movq	152(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rbp), %r8
	movq	152(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	.cv_loc	5 1 94 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -32(%rbp)
	movq	152(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	movq	152(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	5 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -40(%rbp)
	movl	$16, %edx
	movq	152(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	5 1 95 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -48(%rbp)
	movq	152(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rbp), %rdx
	movq	152(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	152(%rbp), %rax
	movq	(%rax), %rcx
	movq	152(%rbp), %rax
	movq	24(%rax), %rdx
	.cv_loc	5 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -56(%rbp)
	movl	$21, %edx
	movq	152(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, (%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	24(%rax), %rcx
	.cv_loc	5 1 96 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -64(%rbp)
	movq	152(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 24(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	(%rax), %rax
	movq	152(%rbp), %rdx
	movq	152(%rbp), %r8
	xorq	24(%r8), %rax
	movq	%rax, 24(%rdx)
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	movq	152(%rbp), %rax
	movq	16(%rax), %rdx
	.cv_loc	5 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$12wrapping_add17h6eb05fc927508761E
	movq	%rax, -72(%rbp)
	movl	$17, %edx
	movq	152(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	16(%rax), %rcx
	.cv_loc	5 1 97 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -80(%rbp)
	movl	$32, %edx
	movq	152(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, 16(%rax)
	.cv_loc	5 1 89 0
	movq	152(%rbp), %rax
	movq	8(%rax), %rax
	movq	152(%rbp), %r8
	movq	152(%rbp), %r9
	xorq	16(%r9), %rax
	movq	%rax, 16(%r8)
	movq	152(%rbp), %rax
	movq	8(%rax), %rcx
	.cv_loc	5 1 98 0
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$11rotate_left17h07fc2f1ad45c83d6E
	movq	%rax, -88(%rbp)
	movq	152(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, 8(%rax)
	.cv_loc	5 1 425 0
	addq	$288, %rsp
	popq	%rbp
	retq
.Ltmp22:
.Lfunc_end5:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
.Lcfi35:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp24-.Ltmp23
.Ltmp23:
	.short	.Ltmp26-.Ltmp25
.Ltmp25:
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
.Ltmp26:
.Ltmp24:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp28-.Ltmp27
.Ltmp27:
	.short	.Ltmp30-.Ltmp29
.Ltmp29:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
	.long	0
	.long	0
	.long	4115
	.secrel32	_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
	.secidx	_ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E
	.byte	0
	.asciz	"core::hash::sip::SipHasher13::new_with_keys"
.Ltmp30:
	.short	.Ltmp32-.Ltmp31
.Ltmp31:
	.short	4414
	.long	35
	.short	1
	.asciz	"key0"
.Ltmp32:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\270\377\377\377"
	.short	.Ltmp34-.Ltmp33
.Ltmp33:
	.short	4414
	.long	35
	.short	1
	.asciz	"key1"
.Ltmp34:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\300\377\377\377"
	.short	2
	.short	4431
.Ltmp28:
	.p2align	2
	.cv_linetable	0, _ZN4core4hash3sip11SipHasher1313new_with_keys17hb5b22fe39285aa69E, .Lfunc_end0
	.section	.debug$S,"dr",associative,_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp36-.Ltmp35
.Ltmp35:
	.short	.Ltmp38-.Ltmp37
.Ltmp37:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	.long	0
	.long	0
	.long	4123
	.secrel32	_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	.secidx	_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	.byte	0
	.asciz	"core::hash::sip::u8to64_le"
.Ltmp38:
	.short	.Ltmp40-.Ltmp39
.Ltmp39:
	.short	4414
	.long	4121
	.short	1
	.asciz	"buf"
.Ltmp40:
	.cv_def_range	 .Ltmp2 .Ltmp14, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp42-.Ltmp41
.Ltmp41:
	.short	4414
	.long	35
	.short	1
	.asciz	"start"
.Ltmp42:
	.cv_def_range	 .Ltmp2 .Ltmp14, "E\021N\001\000\000\370\377\377\377"
	.short	.Ltmp44-.Ltmp43
.Ltmp43:
	.short	4414
	.long	35
	.short	1
	.asciz	"len"
.Ltmp44:
	.cv_def_range	 .Ltmp2 .Ltmp14, "E\021N\001\000\000\000\000\000\000"
	.short	.Ltmp46-.Ltmp45
.Ltmp45:
	.short	4414
	.long	35
	.short	0
	.asciz	"i"
.Ltmp46:
	.cv_def_range	 .Ltmp3 .Ltmp13, "E\021N\001\000\000\b\000\000\000"
	.short	.Ltmp48-.Ltmp47
.Ltmp47:
	.short	4414
	.long	35
	.short	0
	.asciz	"out"
.Ltmp48:
	.cv_def_range	 .Ltmp4 .Ltmp13, "E\021N\001\000\000\020\000\000\000"
	.short	.Ltmp50-.Ltmp49
.Ltmp49:
	.short	4414
	.long	117
	.short	0
	.asciz	"data"
.Ltmp50:
	.cv_def_range	 .Ltmp5 .Ltmp6 .Ltmp7 .Ltmp8, "E\021N\001\000\000\034\000\000\000"
	.short	.Ltmp52-.Ltmp51
.Ltmp51:
	.short	4414
	.long	33
	.short	0
	.asciz	"data"
.Ltmp52:
	.cv_def_range	 .Ltmp9 .Ltmp10 .Ltmp11 .Ltmp12, "E\021N\001\000\000&\000\000\000"
	.short	2
	.short	4431
.Ltmp36:
	.p2align	2
	.cv_linetable	1, _ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E, .Lfunc_end1
	.section	.debug$S,"dr",associative,_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp54-.Ltmp53
.Ltmp53:
	.short	.Ltmp56-.Ltmp55
.Ltmp55:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
	.long	0
	.long	0
	.long	4128
	.secrel32	_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
	.secidx	_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E
	.byte	0
	.asciz	"core::hash::sip::{{impl}}::write"
.Ltmp56:
	.short	.Ltmp58-.Ltmp57
.Ltmp57:
	.short	4414
	.long	4125
	.short	1
	.asciz	"self"
.Ltmp58:
	.cv_def_range	 .Ltmp15 .Ltmp16, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp60-.Ltmp59
.Ltmp59:
	.short	4414
	.long	4121
	.short	1
	.asciz	"msg"
.Ltmp60:
	.cv_def_range	 .Ltmp15 .Ltmp16, "E\021N\001\000\000\360\377\377\377"
	.short	2
	.short	4431
.Ltmp54:
	.p2align	2
	.cv_linetable	2, _ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$5write17h6d05d4c9445748a0E, .Lfunc_end2
	.section	.debug$S,"dr",associative,_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp62-.Ltmp61
.Ltmp61:
	.short	.Ltmp64-.Ltmp63
.Ltmp63:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
	.long	0
	.long	0
	.long	4131
	.secrel32	_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
	.secidx	_ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E
	.byte	0
	.asciz	"core::hash::sip::{{impl}}::finish"
.Ltmp64:
	.short	.Ltmp66-.Ltmp65
.Ltmp65:
	.short	4414
	.long	4125
	.short	1
	.asciz	"self"
.Ltmp66:
	.cv_def_range	 .Ltmp17 .Ltmp18, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp62:
	.p2align	2
	.cv_linetable	3, _ZN67_$LT$core..hash..sip..SipHasher13$u20$as$u20$core..hash..Hasher$GT$6finish17h53530748c1b57291E, .Lfunc_end3
	.section	.debug$S,"dr",associative,_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp68-.Ltmp67
.Ltmp67:
	.short	.Ltmp70-.Ltmp69
.Ltmp69:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end4-_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	.long	0
	.long	0
	.long	4135
	.secrel32	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	.secidx	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	.byte	0
	.asciz	"core::hash::sip::{{impl}}::c_rounds"
.Ltmp70:
	.short	.Ltmp72-.Ltmp71
.Ltmp71:
	.short	4414
	.long	4132
	.short	1
	.asciz	"state"
.Ltmp72:
	.cv_def_range	 .Ltmp19 .Ltmp20, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp68:
	.p2align	2
	.cv_linetable	4, _ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE, .Lfunc_end4
	.section	.debug$S,"dr",associative,_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp74-.Ltmp73
.Ltmp73:
	.short	.Ltmp76-.Ltmp75
.Ltmp75:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end5-_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	.long	0
	.long	0
	.long	4136
	.secrel32	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	.secidx	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	.byte	0
	.asciz	"core::hash::sip::{{impl}}::d_rounds"
.Ltmp76:
	.short	.Ltmp78-.Ltmp77
.Ltmp77:
	.short	4414
	.long	4132
	.short	1
	.asciz	"state"
.Ltmp78:
	.cv_def_range	 .Ltmp21 .Ltmp22, "E\021N\001\000\000\230\000\000\000"
	.short	2
	.short	4431
.Ltmp74:
	.p2align	2
	.cv_linetable	5, _ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE, .Lfunc_end5
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp80-.Ltmp79
.Ltmp79:
	.short	.Ltmp82-.Ltmp81
.Ltmp81:
	.short	4360
	.long	4099
	.asciz	"core::hash::sip::SipHasher13"
.Ltmp82:
	.short	.Ltmp84-.Ltmp83
.Ltmp83:
	.short	4360
	.long	4105
	.asciz	"core::hash::sip::Hasher<core::hash::sip::Sip13Rounds>"
.Ltmp84:
	.short	.Ltmp86-.Ltmp85
.Ltmp85:
	.short	4360
	.long	4108
	.asciz	"core::hash::sip::State"
.Ltmp86:
	.short	.Ltmp88-.Ltmp87
.Ltmp87:
	.short	4360
	.long	4111
	.asciz	"core::marker::PhantomData<core::hash::sip::Sip13Rounds>"
.Ltmp88:
	.short	.Ltmp90-.Ltmp89
.Ltmp89:
	.short	4360
	.long	4121
	.asciz	"slice<u8>*"
.Ltmp90:
.Ltmp80:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.byte	0x52, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x53
	.byte	0x69, 0x70, 0x48, 0x61
	.byte	0x73, 0x68, 0x65, 0x72
	.byte	0x31, 0x33, 0x00, 0x37
	.byte	0x39, 0x64, 0x64, 0x65
	.byte	0x33, 0x66, 0x39, 0x66
	.byte	0x63, 0x39, 0x30, 0x31
	.byte	0x32, 0x62, 0x61, 0x66
	.byte	0x63, 0x38, 0x61, 0x63
	.byte	0x34, 0x63, 0x32, 0x65
	.byte	0x36, 0x32, 0x37, 0x36
	.byte	0x64, 0x33, 0x34, 0x00
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x48
	.byte	0x61, 0x73, 0x68, 0x65
	.byte	0x72, 0x3c, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x53
	.byte	0x69, 0x70, 0x31, 0x33
	.byte	0x52, 0x6f, 0x75, 0x6e
	.byte	0x64, 0x73, 0x3e, 0x00
	.byte	0x34, 0x31, 0x30, 0x65
	.byte	0x37, 0x35, 0x31, 0x36
	.byte	0x63, 0x63, 0x62, 0x35
	.byte	0x61, 0x37, 0x31, 0x66
	.byte	0x38, 0x31, 0x61, 0x37
	.byte	0x64, 0x37, 0x66, 0x39
	.byte	0x33, 0x38, 0x64, 0x39
	.byte	0x34, 0x39, 0x33, 0x33
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x16, 0x00, 0x03, 0x12
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x68, 0x61
	.byte	0x73, 0x68, 0x65, 0x72
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x52, 0x00, 0x05, 0x15
	.byte	0x01, 0x00, 0x00, 0x02
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x48, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x53
	.byte	0x69, 0x70, 0x48, 0x61
	.byte	0x73, 0x68, 0x65, 0x72
	.byte	0x31, 0x33, 0x00, 0x37
	.byte	0x39, 0x64, 0x64, 0x65
	.byte	0x33, 0x66, 0x39, 0x66
	.byte	0x63, 0x39, 0x30, 0x31
	.byte	0x32, 0x62, 0x61, 0x66
	.byte	0x63, 0x38, 0x61, 0x63
	.byte	0x34, 0x63, 0x32, 0x65
	.byte	0x36, 0x32, 0x37, 0x36
	.byte	0x64, 0x33, 0x34, 0x00
	.byte	0x12, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x5c, 0x3c, 0x75, 0x6e
	.byte	0x6b, 0x6e, 0x6f, 0x77
	.byte	0x6e, 0x3e, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x03, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x4e, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x53
	.byte	0x74, 0x61, 0x74, 0x65
	.byte	0x00, 0x31, 0x66, 0x33
	.byte	0x39, 0x66, 0x62, 0x62
	.byte	0x35, 0x65, 0x34, 0x39
	.byte	0x65, 0x38, 0x64, 0x38
	.byte	0x31, 0x34, 0x61, 0x30
	.byte	0x39, 0x35, 0x36, 0x61
	.byte	0x64, 0x39, 0x39, 0x64
	.byte	0x39, 0x36, 0x63, 0x62
	.byte	0x37, 0x00, 0xf2, 0xf1
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x6d, 0x61, 0x72, 0x6b
	.byte	0x65, 0x72, 0x3a, 0x3a
	.byte	0x50, 0x68, 0x61, 0x6e
	.byte	0x74, 0x6f, 0x6d, 0x44
	.byte	0x61, 0x74, 0x61, 0x3c
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x68, 0x61
	.byte	0x73, 0x68, 0x3a, 0x3a
	.byte	0x73, 0x69, 0x70, 0x3a
	.byte	0x3a, 0x53, 0x69, 0x70
	.byte	0x31, 0x33, 0x52, 0x6f
	.byte	0x75, 0x6e, 0x64, 0x73
	.byte	0x3e, 0x00, 0x32, 0x33
	.byte	0x37, 0x31, 0x64, 0x63
	.byte	0x64, 0x36, 0x66, 0x33
	.byte	0x31, 0x31, 0x34, 0x31
	.byte	0x37, 0x66, 0x64, 0x62
	.byte	0x61, 0x31, 0x63, 0x31
	.byte	0x31, 0x38, 0x31, 0x33
	.byte	0x35, 0x38, 0x64, 0x66
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x7a, 0x00, 0x03, 0x12
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x6b, 0x30
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x08, 0x00, 0x6b, 0x31
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x10, 0x00, 0x6c, 0x65
	.byte	0x6e, 0x67, 0x74, 0x68
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x06, 0x10, 0x00, 0x00
	.byte	0x18, 0x00, 0x73, 0x74
	.byte	0x61, 0x74, 0x65, 0x00
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x38, 0x00, 0x74, 0x61
	.byte	0x69, 0x6c, 0x00, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x40, 0x00, 0x6e, 0x74
	.byte	0x61, 0x69, 0x6c, 0x00
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x07, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x5f, 0x6d
	.byte	0x61, 0x72, 0x6b, 0x65
	.byte	0x72, 0x00, 0xf2, 0xf1
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x07, 0x00, 0x00, 0x02
	.byte	0x08, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x48, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x48
	.byte	0x61, 0x73, 0x68, 0x65
	.byte	0x72, 0x3c, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x53
	.byte	0x69, 0x70, 0x31, 0x33
	.byte	0x52, 0x6f, 0x75, 0x6e
	.byte	0x64, 0x73, 0x3e, 0x00
	.byte	0x34, 0x31, 0x30, 0x65
	.byte	0x37, 0x35, 0x31, 0x36
	.byte	0x63, 0x63, 0x62, 0x35
	.byte	0x61, 0x37, 0x31, 0x66
	.byte	0x38, 0x31, 0x61, 0x37
	.byte	0x64, 0x37, 0x66, 0x39
	.byte	0x33, 0x38, 0x64, 0x39
	.byte	0x34, 0x39, 0x33, 0x33
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x09, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x42, 0x00, 0x03, 0x12
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x76, 0x30
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x08, 0x00, 0x76, 0x32
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x10, 0x00, 0x76, 0x31
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x18, 0x00, 0x76, 0x33
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x4e, 0x00, 0x05, 0x15
	.byte	0x04, 0x00, 0x00, 0x02
	.byte	0x0b, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x20, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x73, 0x69
	.byte	0x70, 0x3a, 0x3a, 0x53
	.byte	0x74, 0x61, 0x74, 0x65
	.byte	0x00, 0x31, 0x66, 0x33
	.byte	0x39, 0x66, 0x62, 0x62
	.byte	0x35, 0x65, 0x34, 0x39
	.byte	0x65, 0x38, 0x64, 0x38
	.byte	0x31, 0x34, 0x61, 0x30
	.byte	0x39, 0x35, 0x36, 0x61
	.byte	0x64, 0x39, 0x39, 0x64
	.byte	0x39, 0x36, 0x63, 0x62
	.byte	0x37, 0x00, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x0c, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x02, 0x00, 0x03, 0x12
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x00, 0x02
	.byte	0x0e, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x63, 0x6f
	.byte	0x72, 0x65, 0x3a, 0x3a
	.byte	0x6d, 0x61, 0x72, 0x6b
	.byte	0x65, 0x72, 0x3a, 0x3a
	.byte	0x50, 0x68, 0x61, 0x6e
	.byte	0x74, 0x6f, 0x6d, 0x44
	.byte	0x61, 0x74, 0x61, 0x3c
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x68, 0x61
	.byte	0x73, 0x68, 0x3a, 0x3a
	.byte	0x73, 0x69, 0x70, 0x3a
	.byte	0x3a, 0x53, 0x69, 0x70
	.byte	0x31, 0x33, 0x52, 0x6f
	.byte	0x75, 0x6e, 0x64, 0x73
	.byte	0x3e, 0x00, 0x32, 0x33
	.byte	0x37, 0x31, 0x64, 0x63
	.byte	0x64, 0x36, 0x66, 0x33
	.byte	0x31, 0x31, 0x34, 0x31
	.byte	0x37, 0x66, 0x64, 0x62
	.byte	0x61, 0x31, 0x63, 0x31
	.byte	0x31, 0x38, 0x31, 0x33
	.byte	0x35, 0x38, 0x64, 0x66
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x0f, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x1a, 0x00, 0x09, 0x10
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x11, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x1a, 0x00, 0x02, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x12, 0x10, 0x00, 0x00
	.byte	0x6e, 0x65, 0x77, 0x5f
	.byte	0x77, 0x69, 0x74, 0x68
	.byte	0x5f, 0x6b, 0x65, 0x79
	.byte	0x73, 0x00, 0xf2, 0xf1
	.byte	0x16, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x68, 0x61
	.byte	0x73, 0x68, 0x3a, 0x3a
	.byte	0x73, 0x69, 0x70, 0x00
	.byte	0x42, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x73, 0x6c
	.byte	0x69, 0x63, 0x65, 0x3c
	.byte	0x75, 0x38, 0x3e, 0x2a
	.byte	0x00, 0x33, 0x64, 0x35
	.byte	0x36, 0x62, 0x34, 0x62
	.byte	0x64, 0x30, 0x39, 0x39
	.byte	0x36, 0x37, 0x65, 0x66
	.byte	0x33, 0x33, 0x63, 0x34
	.byte	0x37, 0x62, 0x32, 0x39
	.byte	0x37, 0x64, 0x35, 0x31
	.byte	0x64, 0x61, 0x64, 0x64
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x12, 0x00, 0x01, 0x12
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x15, 0x10, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x03, 0x00
	.byte	0x16, 0x10, 0x00, 0x00
	.byte	0x2a, 0x00, 0x03, 0x12
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x20, 0x06, 0x00, 0x00
	.byte	0x00, 0x00, 0x64, 0x61
	.byte	0x74, 0x61, 0x5f, 0x70
	.byte	0x74, 0x72, 0x00, 0xf1
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x08, 0x00, 0x6c, 0x65
	.byte	0x6e, 0x67, 0x74, 0x68
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x42, 0x00, 0x05, 0x15
	.byte	0x02, 0x00, 0x00, 0x02
	.byte	0x18, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x10, 0x00, 0x73, 0x6c
	.byte	0x69, 0x63, 0x65, 0x3c
	.byte	0x75, 0x38, 0x3e, 0x2a
	.byte	0x00, 0x33, 0x64, 0x35
	.byte	0x36, 0x62, 0x34, 0x62
	.byte	0x64, 0x30, 0x39, 0x39
	.byte	0x36, 0x37, 0x65, 0x66
	.byte	0x33, 0x33, 0x63, 0x34
	.byte	0x37, 0x62, 0x32, 0x39
	.byte	0x37, 0x64, 0x35, 0x31
	.byte	0x64, 0x61, 0x64, 0x64
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x19, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x14, 0x10, 0x00, 0x00
	.byte	0x17, 0x10, 0x00, 0x00
	.byte	0x75, 0x38, 0x74, 0x6f
	.byte	0x36, 0x34, 0x5f, 0x6c
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x22, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x68, 0x61
	.byte	0x73, 0x68, 0x3a, 0x3a
	.byte	0x73, 0x69, 0x70, 0x3a
	.byte	0x3a, 0x7b, 0x7b, 0x69
	.byte	0x6d, 0x70, 0x6c, 0x7d
	.byte	0x7d, 0x00, 0xf2, 0xf1
	.byte	0x0a, 0x00, 0x02, 0x10
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x0c, 0x00, 0x01, 0x00
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x1d, 0x10, 0x00, 0x00
	.byte	0x15, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x1e, 0x10, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x1c, 0x10, 0x00, 0x00
	.byte	0x1f, 0x10, 0x00, 0x00
	.byte	0x77, 0x72, 0x69, 0x74
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x1d, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x21, 0x10, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x1c, 0x10, 0x00, 0x00
	.byte	0x22, 0x10, 0x00, 0x00
	.byte	0x66, 0x69, 0x6e, 0x69
	.byte	0x73, 0x68, 0x00, 0xf1
	.byte	0x0a, 0x00, 0x02, 0x10
	.byte	0x06, 0x10, 0x00, 0x00
	.byte	0x0c, 0x00, 0x01, 0x00
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x24, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x25, 0x10, 0x00, 0x00
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x1c, 0x10, 0x00, 0x00
	.byte	0x26, 0x10, 0x00, 0x00
	.byte	0x63, 0x5f, 0x72, 0x6f
	.byte	0x75, 0x6e, 0x64, 0x73
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x1c, 0x10, 0x00, 0x00
	.byte	0x26, 0x10, 0x00, 0x00
	.byte	0x64, 0x5f, 0x72, 0x6f
	.byte	0x75, 0x6e, 0x64, 0x73
	.byte	0x00, 0xf3, 0xf2, 0xf1

