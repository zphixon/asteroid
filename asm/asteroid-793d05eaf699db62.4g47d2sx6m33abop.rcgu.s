	.text
	.def	 _ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	.globl	_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	.p2align	4, 0x90
_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\hash\\sip.rs"
	.cv_loc	0 1 209 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	subq	$272, %rsp
.Lcfi2:
	.seh_stackalloc 272
	leaq	128(%rsp), %rbp
.Lcfi3:
	.seh_setframe 5, 128
.Lcfi4:
	.seh_endprologue
	movq	%rcx, %rax
	leaq	-32(%rbp), %r9
	movq	%rdx, -48(%rbp)
	movq	%r8, -40(%rbp)
.Ltmp0:
	.cv_loc	0 1 211 0
	movq	-48(%rbp), %rdx
	.cv_loc	0 1 212 0
	movq	-40(%rbp), %r8
	.cv_loc	0 1 214 0
	movq	$0, 40(%rbp)
	movq	$0, 48(%rbp)
	movq	$0, 56(%rbp)
	movq	$0, 64(%rbp)
	.cv_loc	0 1 210 0
	movq	%rdx, -32(%rbp)
	movq	%r8, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	48(%rbp), %rdx
	movq	%rdx, (%rbp)
	movq	56(%rbp), %rdx
	movq	%rdx, 8(%rbp)
	movq	64(%rbp), %rdx
	movq	%rdx, 16(%rbp)
	movq	$0, 24(%rbp)
	movq	$0, 32(%rbp)
.Ltmp1:
	.cv_loc	0 1 224 0
	movq	%rcx, -56(%rbp)
	movq	%r9, %rcx
	movq	%rax, -64(%rbp)
	callq	_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
.Ltmp2:
	movl	$72, %eax
	movl	%eax, %ecx
	leaq	72(%rbp), %rdx
	leaq	-32(%rbp), %r8
	.cv_loc	0 1 225 0
	movq	%rdx, %r9
	movq	%rcx, -72(%rbp)
	movq	%r9, %rcx
	movq	%rdx, -80(%rbp)
	movq	%r8, %rdx
	movq	-72(%rbp), %r8
	callq	memcpy
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, -88(%rbp)
	movq	%rdx, %rcx
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %r8
	callq	memcpy
.Ltmp3:
	.cv_loc	0 1 226 0
	movq	-64(%rbp), %rax
	addq	$272, %rsp
	popq	%rbp
	retq
.Ltmp4:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
.Lcfi5:
	.seh_endproc

	.def	 _ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
	.p2align	4, 0x90
_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 229 0
.Lcfi6:
.seh_proc _ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
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
	movabsq	$8387220255154660723, %rax
	movabsq	$7816392313619706465, %rdx
	movabsq	$7237128888997146477, %r8
	movabsq	$8317987319222330741, %r9
	movq	%rcx, (%rbp)
.Ltmp5:
	.cv_loc	1 1 230 0
	movq	(%rbp), %rcx
	movq	$0, 16(%rcx)
	.cv_loc	1 1 231 0
	movq	(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rbp), %r10
	xorq	%r9, %rcx
	movq	%rcx, 24(%r10)
	.cv_loc	1 1 232 0
	movq	(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rbp), %r9
	xorq	%r8, %rcx
	movq	%rcx, 40(%r9)
	.cv_loc	1 1 233 0
	movq	(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rbp), %r8
	xorq	%rdx, %rcx
	movq	%rcx, 32(%r8)
	.cv_loc	1 1 234 0
	movq	(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rbp), %rdx
	xorq	%rax, %rcx
	movq	%rcx, 48(%rdx)
	.cv_loc	1 1 235 0
	movq	(%rbp), %rax
	movq	$0, 64(%rax)
	.cv_loc	1 1 236 0
	addq	$8, %rsp
	popq	%rbp
	retq
.Ltmp6:
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
.Lcfi11:
	.seh_endproc

	.def	 _ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	.globl	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	.p2align	4, 0x90
_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 1 326 0
.Lcfi12:
.seh_proc _ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	pushq	%rbp
.Lcfi13:
	.seh_pushreg 5
	subq	$192, %rsp
.Lcfi14:
	.seh_stackalloc 192
	leaq	128(%rsp), %rbp
.Lcfi15:
	.seh_setframe 5, 128
.Lcfi16:
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%r8, -16(%rbp)
.Ltmp7:
	.cv_loc	2 1 327 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	callq	_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$3len17h0c463cc30b152cafE
	movq	%rax, (%rbp)
.Ltmp8:
	.cv_loc	2 1 328 0
	movq	(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	16(%rdx), %rax
	movq	%rax, 16(%rcx)
	.cv_loc	2 1 330 0
	movq	$0, 8(%rbp)
.Ltmp9:
	.cv_loc	2 1 332 0
	movq	-32(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB2_3
	movl	$8, %eax
	movl	%eax, %ecx
	.cv_loc	2 1 333 0
	movq	-32(%rbp), %rdx
	subq	64(%rdx), %rcx
	movq	%rcx, 8(%rbp)
	.cv_loc	2 1 334 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rbp), %r8
	movq	8(%rbp), %r9
	movq	%rcx, -40(%rbp)
	movq	%r8, %rcx
	movq	%rdx, -48(%rbp)
	movq	%r9, %rdx
	callq	_ZN4core3cmp3min17h0f17e6f6685cee14E
	movq	%rax, -56(%rbp)
	jmp	.LBB2_4
.LBB2_3:
	.cv_loc	2 1 332 0
	jmp	.LBB2_10
.LBB2_4:
	xorl	%eax, %eax
	movl	%eax, %r8d
	.cv_loc	2 1 334 0
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %r9
	callq	_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	shlq	$3, %rax
	andq	$63, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	shlq	%cl, %rax
	movq	-32(%rbp), %rdx
	movq	-32(%rbp), %r8
	orq	56(%r8), %rax
	movq	%rax, 56(%rdx)
	.cv_loc	2 1 335 0
	movq	(%rbp), %rax
	cmpq	8(%rbp), %rax
	jae	.LBB2_7
	.cv_loc	2 1 336 0
	movq	(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	64(%rdx), %rax
	movq	%rax, 64(%rcx)
.Ltmp10:
	.cv_loc	2 1 337 0
	jmp	.LBB2_8
.LBB2_7:
.Ltmp11:
	.cv_loc	2 1 339 0
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	xorq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	.cv_loc	2 1 340 0
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	callq	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	jmp	.LBB2_9
.Ltmp12:
.LBB2_8:
	.cv_loc	2 1 363 0
	addq	$192, %rsp
	popq	%rbp
	retq
.LBB2_9:
.Ltmp13:
	.cv_loc	2 1 341 0
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	xorq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	.cv_loc	2 1 342 0
	movq	-32(%rbp), %rax
	movq	$0, 64(%rax)
.LBB2_10:
	.cv_loc	2 1 347 0
	movq	(%rbp), %rax
	subq	8(%rbp), %rax
	movq	%rax, 24(%rbp)
.Ltmp14:
	.cv_loc	2 1 348 0
	movq	24(%rbp), %rax
	andq	$7, %rax
	movq	%rax, 32(%rbp)
.Ltmp15:
	.cv_loc	2 1 350 0
	movq	8(%rbp), %rax
	movq	%rax, 40(%rbp)
.LBB2_11:
.Ltmp16:
	.cv_loc	2 1 351 0
	movq	40(%rbp), %rax
	movq	24(%rbp), %rcx
	subq	32(%rbp), %rcx
	cmpq	%rcx, %rax
	jb	.LBB2_13
	.cv_loc	2 1 361 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	40(%rbp), %r8
	movq	32(%rbp), %r9
	callq	_ZN4core4hash3sip9u8to64_le17h55cc774f10dc69d0E
	movq	%rax, -72(%rbp)
	jmp	.LBB2_19
.LBB2_13:
	.cv_loc	2 1 111 0
	movq	$0, 56(%rbp)
.Ltmp17:
	.cv_loc	2 1 352 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	40(%rbp), %r8
	.cv_loc	2 1 112 0
	callq	_ZN53_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..SliceExt$GT$13get_unchecked17ha7cd3df3d50bb015E
	movq	%rax, -80(%rbp)
	leaq	56(%rbp), %rax
	.cv_loc	2 1 114 0
	movq	%rax, -88(%rbp)
	callq	_ZN4core3mem7size_of17h462947a2be68454cE
	movq	%rax, -96(%rbp)
	.cv_loc	2 1 112 0
	movq	-96(%rbp), %rax
	shlq	$0, %rax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, %r8
	callq	memcpy
	.cv_loc	2 1 115 0
	movq	56(%rbp), %rcx
	callq	_ZN4core3num21_$LT$impl$u20$u64$GT$5to_le17h4ac720812d13fec3E
	movq	%rax, 48(%rbp)
.Ltmp18:
	.cv_loc	2 1 354 0
	movq	48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	xorq	48(%rdx), %rax
	movq	%rax, 48(%rcx)
	.cv_loc	2 1 355 0
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rcx
	callq	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
	.cv_loc	2 1 356 0
	movq	48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	xorq	24(%rdx), %rax
	movq	%rax, 24(%rcx)
	.cv_loc	2 1 358 0
	movq	40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, 40(%rbp)
.Ltmp19:
	.cv_loc	2 1 351 0
	jmp	.LBB2_11
.LBB2_19:
	.cv_loc	2 1 361 0
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, 56(%rax)
	.cv_loc	2 1 362 0
	movq	32(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
.Ltmp20:
	.cv_loc	2 1 363 0
	jmp	.LBB2_8
.Ltmp21:
.Lfunc_end2:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
.Lcfi17:
	.seh_endproc

	.def	 _ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	.globl	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	.p2align	4, 0x90
_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 1 366 0
.Lcfi18:
.seh_proc _ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	pushq	%rbp
.Lcfi19:
	.seh_pushreg 5
	subq	$112, %rsp
.Lcfi20:
	.seh_stackalloc 112
	leaq	112(%rsp), %rbp
.Lcfi21:
	.seh_setframe 5, 112
.Lcfi22:
	.seh_endprologue
	leaq	-72(%rbp), %rax
	movq	%rcx, -80(%rbp)
.Ltmp22:
	.cv_loc	3 1 367 0
	movq	-80(%rbp), %rcx
	movq	24(%rcx), %rdx
	movq	%rdx, -40(%rbp)
	movq	32(%rcx), %rdx
	movq	%rdx, -32(%rbp)
	movq	40(%rcx), %rdx
	movq	%rdx, -24(%rbp)
	movq	48(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.Ltmp23:
	.cv_loc	3 1 369 0
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	andq	$255, %rcx
	shlq	$56, %rcx
	movq	-80(%rbp), %rdx
	orq	56(%rdx), %rcx
	movq	%rcx, -8(%rbp)
.Ltmp24:
	.cv_loc	3 1 371 0
	movq	-8(%rbp), %rcx
	xorq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	.cv_loc	3 1 372 0
	movq	%rax, %rcx
	callq	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8c_rounds17h55f85bf4b90e424fE
.Ltmp25:
	leaq	-72(%rbp), %rcx
	.cv_loc	3 1 373 0
	movq	-8(%rbp), %rax
	xorq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
	.cv_loc	3 1 375 0
	movq	-64(%rbp), %rax
	xorq	$255, %rax
	movq	%rax, -64(%rbp)
	.cv_loc	3 1 376 0
	callq	_ZN69_$LT$core..hash..sip..Sip13Rounds$u20$as$u20$core..hash..sip..Sip$GT$8d_rounds17hcce4c0721fab78fdE
	.cv_loc	3 1 378 0
	movq	-72(%rbp), %rax
	xorq	-56(%rbp), %rax
	xorq	-64(%rbp), %rax
	xorq	-48(%rbp), %rax
.Ltmp26:
	.cv_loc	3 1 379 0
	addq	$112, %rsp
	popq	%rbp
	retq
.Ltmp27:
.Lfunc_end3:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
.Lcfi23:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp29-.Ltmp28
.Ltmp28:
	.short	.Ltmp31-.Ltmp30
.Ltmp30:
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
.Ltmp31:
.Ltmp29:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp33-.Ltmp32
.Ltmp32:
	.short	.Ltmp35-.Ltmp34
.Ltmp34:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	.long	0
	.long	0
	.long	4111
	.secrel32	_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	.secidx	_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE
	.byte	0
	.asciz	"core::hash::sip::Hasher<core::hash::sip::Sip13Rounds>::new_with_keys<core::hash::sip::Sip13Rounds>"
.Ltmp35:
	.short	.Ltmp37-.Ltmp36
.Ltmp36:
	.short	4414
	.long	35
	.short	1
	.asciz	"key0"
.Ltmp37:
	.cv_def_range	 .Ltmp0 .Ltmp4, "E\021N\001\000\000\320\377\377\377"
	.short	.Ltmp39-.Ltmp38
.Ltmp38:
	.short	4414
	.long	35
	.short	1
	.asciz	"key1"
.Ltmp39:
	.cv_def_range	 .Ltmp0 .Ltmp4, "E\021N\001\000\000\330\377\377\377"
	.short	.Ltmp41-.Ltmp40
.Ltmp40:
	.short	4414
	.long	4100
	.short	0
	.asciz	"state"
.Ltmp41:
	.cv_def_range	 .Ltmp1 .Ltmp3, "E\021N\001\000\000\340\377\377\377"
	.short	2
	.short	4431
.Ltmp33:
	.p2align	2
	.cv_linetable	0, _ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$13new_with_keys17h6ba6aedab33fd2feE, .Lfunc_end0
	.section	.debug$S,"dr",associative,_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp43-.Ltmp42
.Ltmp42:
	.short	.Ltmp45-.Ltmp44
.Ltmp44:
	.short	4422
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
	.long	0
	.long	0
	.long	4115
	.secrel32	_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
	.secidx	_ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE
	.byte	0
	.asciz	"core::hash::sip::Hasher<core::hash::sip::Sip13Rounds>::reset<core::hash::sip::Sip13Rounds>"
.Ltmp45:
	.short	.Ltmp47-.Ltmp46
.Ltmp46:
	.short	4414
	.long	4112
	.short	1
	.asciz	"self"
.Ltmp47:
	.cv_def_range	 .Ltmp5 .Ltmp6, "E\021N\001\000\000\000\000\000\000"
	.short	2
	.short	4431
.Ltmp43:
	.p2align	2
	.cv_linetable	1, _ZN41_$LT$core..hash..sip..Hasher$LT$S$GT$$GT$5reset17h869f6000cc41291dE, .Lfunc_end1
	.section	.debug$S,"dr",associative,_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp49-.Ltmp48
.Ltmp48:
	.short	.Ltmp51-.Ltmp50
.Ltmp50:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	.long	0
	.long	0
	.long	4123
	.secrel32	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	.secidx	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE
	.byte	0
	.asciz	"core::hash::sip::{{impl}}::write<core::hash::sip::Sip13Rounds>"
.Ltmp51:
	.short	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	4414
	.long	4112
	.short	1
	.asciz	"self"
.Ltmp53:
	.cv_def_range	 .Ltmp7 .Ltmp21, "E\021N\001\000\000\340\377\377\377"
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4414
	.long	4121
	.short	1
	.asciz	"msg"
.Ltmp55:
	.cv_def_range	 .Ltmp7 .Ltmp21, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp57-.Ltmp56
.Ltmp56:
	.short	4414
	.long	35
	.short	0
	.asciz	"length"
.Ltmp57:
	.cv_def_range	 .Ltmp8 .Ltmp10 .Ltmp11 .Ltmp12 .Ltmp13 .Ltmp20, "E\021N\001\000\000\000\000\000\000"
	.short	.Ltmp59-.Ltmp58
.Ltmp58:
	.short	4414
	.long	35
	.short	0
	.asciz	"needed"
.Ltmp59:
	.cv_def_range	 .Ltmp9 .Ltmp10 .Ltmp11 .Ltmp12 .Ltmp13 .Ltmp20, "E\021N\001\000\000\b\000\000\000"
	.short	.Ltmp61-.Ltmp60
.Ltmp60:
	.short	4414
	.long	35
	.short	0
	.asciz	"len"
.Ltmp61:
	.cv_def_range	 .Ltmp14 .Ltmp20, "E\021N\001\000\000\030\000\000\000"
	.short	.Ltmp63-.Ltmp62
.Ltmp62:
	.short	4414
	.long	35
	.short	0
	.asciz	"left"
.Ltmp63:
	.cv_def_range	 .Ltmp15 .Ltmp20, "E\021N\001\000\000 \000\000\000"
	.short	.Ltmp65-.Ltmp64
.Ltmp64:
	.short	4414
	.long	35
	.short	0
	.asciz	"i"
.Ltmp65:
	.cv_def_range	 .Ltmp16 .Ltmp20, "E\021N\001\000\000(\000\000\000"
	.short	.Ltmp67-.Ltmp66
.Ltmp66:
	.short	4414
	.long	35
	.short	0
	.asciz	"mi"
.Ltmp67:
	.cv_def_range	 .Ltmp18 .Ltmp19, "E\021N\001\000\0000\000\000\000"
	.short	.Ltmp69-.Ltmp68
.Ltmp68:
	.short	4414
	.long	35
	.short	0
	.asciz	"data"
.Ltmp69:
	.cv_def_range	 .Ltmp17 .Ltmp18, "E\021N\001\000\0008\000\000\000"
	.short	2
	.short	4431
.Ltmp49:
	.p2align	2
	.cv_linetable	2, _ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h0873de1d4ccd9a2fE, .Lfunc_end2
	.section	.debug$S,"dr",associative,_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp71-.Ltmp70
.Ltmp70:
	.short	.Ltmp73-.Ltmp72
.Ltmp72:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	.long	0
	.long	0
	.long	4126
	.secrel32	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	.secidx	_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E
	.byte	0
	.asciz	"core::hash::sip::{{impl}}::finish<core::hash::sip::Sip13Rounds>"
.Ltmp73:
	.short	.Ltmp75-.Ltmp74
.Ltmp74:
	.short	4414
	.long	4112
	.short	1
	.asciz	"self"
.Ltmp75:
	.cv_def_range	 .Ltmp22 .Ltmp27, "E\021N\001\000\000\260\377\377\377"
	.short	.Ltmp77-.Ltmp76
.Ltmp76:
	.short	4414
	.long	4104
	.short	0
	.asciz	"state"
.Ltmp77:
	.cv_def_range	 .Ltmp23 .Ltmp26, "E\021N\001\000\000\270\377\377\377"
	.short	.Ltmp79-.Ltmp78
.Ltmp78:
	.short	4414
	.long	35
	.short	0
	.asciz	"b"
.Ltmp79:
	.cv_def_range	 .Ltmp24 .Ltmp26, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp71:
	.p2align	2
	.cv_linetable	3, _ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$6finish17hff53b54a43a7d967E, .Lfunc_end3
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp81-.Ltmp80
.Ltmp80:
	.short	.Ltmp83-.Ltmp82
.Ltmp82:
	.short	4360
	.long	4100
	.asciz	"core::hash::sip::Hasher<core::hash::sip::Sip13Rounds>"
.Ltmp83:
	.short	.Ltmp85-.Ltmp84
.Ltmp84:
	.short	4360
	.long	4104
	.asciz	"core::hash::sip::State"
.Ltmp85:
	.short	.Ltmp87-.Ltmp86
.Ltmp86:
	.short	4360
	.long	4107
	.asciz	"core::marker::PhantomData<core::hash::sip::Sip13Rounds>"
.Ltmp87:
	.short	.Ltmp89-.Ltmp88
.Ltmp88:
	.short	4360
	.long	4121
	.asciz	"slice<u8>*"
.Ltmp89:
.Ltmp81:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
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
	.byte	0x01, 0x10, 0x00, 0x00
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
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x5f, 0x6d
	.byte	0x61, 0x72, 0x6b, 0x65
	.byte	0x72, 0x00, 0xf2, 0xf1
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x07, 0x00, 0x00, 0x02
	.byte	0x03, 0x10, 0x00, 0x00
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
	.byte	0x12, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x5c, 0x3c, 0x75, 0x6e
	.byte	0x6b, 0x6e, 0x6f, 0x77
	.byte	0x6e, 0x3e, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x05, 0x10, 0x00, 0x00
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
	.byte	0x07, 0x10, 0x00, 0x00
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
	.byte	0x08, 0x10, 0x00, 0x00
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x02, 0x00, 0x03, 0x12
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x00, 0x02
	.byte	0x0a, 0x10, 0x00, 0x00
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
	.byte	0x0b, 0x10, 0x00, 0x00
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x1a, 0x00, 0x09, 0x10
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x0d, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x1a, 0x00, 0x02, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x0e, 0x10, 0x00, 0x00
	.byte	0x6e, 0x65, 0x77, 0x5f
	.byte	0x77, 0x69, 0x74, 0x68
	.byte	0x5f, 0x6b, 0x65, 0x79
	.byte	0x73, 0x00, 0xf2, 0xf1
	.byte	0x0a, 0x00, 0x02, 0x10
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x0c, 0x00, 0x01, 0x00
	.byte	0x06, 0x00, 0x01, 0x12
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x1a, 0x00, 0x09, 0x10
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x10, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x11, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x12, 0x00, 0x02, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x12, 0x10, 0x00, 0x00
	.byte	0x72, 0x65, 0x73, 0x65
	.byte	0x74, 0x00, 0xf2, 0xf1
	.byte	0x22, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x68, 0x61
	.byte	0x73, 0x68, 0x3a, 0x3a
	.byte	0x73, 0x69, 0x70, 0x3a
	.byte	0x3a, 0x7b, 0x7b, 0x69
	.byte	0x6d, 0x70, 0x6c, 0x7d
	.byte	0x7d, 0x00, 0xf2, 0xf1
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
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x10, 0x10, 0x00, 0x00
	.byte	0x15, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
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
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x14, 0x10, 0x00, 0x00
	.byte	0x17, 0x10, 0x00, 0x00
	.byte	0x77, 0x72, 0x69, 0x74
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x10, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x1c, 0x10, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x14, 0x10, 0x00, 0x00
	.byte	0x1d, 0x10, 0x00, 0x00
	.byte	0x66, 0x69, 0x6e, 0x69
	.byte	0x73, 0x68, 0x00, 0xf1

