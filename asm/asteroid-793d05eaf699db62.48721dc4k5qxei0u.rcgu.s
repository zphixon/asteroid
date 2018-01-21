	.text
	.def	 _ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
	.globl	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
	.p2align	4, 0x90
_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\cmp.rs"
	.cv_loc	0 1 850 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	subq	$16, %rsp
.Lcfi2:
	.seh_stackalloc 16
	leaq	16(%rsp), %rbp
.Lcfi3:
	.seh_setframe 5, 16
.Lcfi4:
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
.Ltmp0:
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	(%rdx), %rcx
	setae	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
.Lcfi5:
	.seh_endproc

	.def	 _ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
	.globl	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
	.p2align	4, 0x90
_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 848 0
.Lcfi6:
.seh_proc _ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
	pushq	%rbp
.Lcfi7:
	.seh_pushreg 5
	subq	$16, %rsp
.Lcfi8:
	.seh_stackalloc 16
	leaq	16(%rsp), %rbp
.Lcfi9:
	.seh_setframe 5, 16
.Lcfi10:
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
.Ltmp2:
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	(%rdx), %rcx
	setbe	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Ltmp3:
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
.Lcfi11:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp5-.Ltmp4
.Ltmp4:
	.short	.Ltmp7-.Ltmp6
.Ltmp6:
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
.Ltmp7:
.Ltmp5:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp9-.Ltmp8
.Ltmp8:
	.short	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
	.long	0
	.long	0
	.long	4099
	.secrel32	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
	.secidx	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
	.byte	0
	.asciz	"core::cmp::impls::{{impl}}::ge"
.Ltmp11:
	.short	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	4414
	.long	1571
	.short	1
	.asciz	"self"
.Ltmp13:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp15-.Ltmp14
.Ltmp14:
	.short	4414
	.long	1571
	.short	1
	.asciz	"other"
.Ltmp15:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp9:
	.p2align	2
	.cv_linetable	0, _ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E, .Lfunc_end0
	.section	.debug$S,"dr",associative,_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp17-.Ltmp16
.Ltmp16:
	.short	.Ltmp19-.Ltmp18
.Ltmp18:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
	.long	0
	.long	0
	.long	4100
	.secrel32	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
	.secidx	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
	.byte	0
	.asciz	"core::cmp::impls::{{impl}}::le"
.Ltmp19:
	.short	.Ltmp21-.Ltmp20
.Ltmp20:
	.short	4414
	.long	1571
	.short	1
	.asciz	"self"
.Ltmp21:
	.cv_def_range	 .Ltmp2 .Ltmp3, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp23-.Ltmp22
.Ltmp22:
	.short	4414
	.long	1571
	.short	1
	.asciz	"other"
.Ltmp23:
	.cv_def_range	 .Ltmp2 .Ltmp3, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp17:
	.p2align	2
	.cv_linetable	1, _ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE, .Lfunc_end1
	.section	.debug$S,"dr"
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.byte	0x22, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x63, 0x6d
	.byte	0x70, 0x3a, 0x3a, 0x69
	.byte	0x6d, 0x70, 0x6c, 0x73
	.byte	0x3a, 0x3a, 0x7b, 0x7b
	.byte	0x69, 0x6d, 0x70, 0x6c
	.byte	0x7d, 0x7d, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x23, 0x06, 0x00, 0x00
	.byte	0x23, 0x06, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x30, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x67, 0x65, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x6c, 0x65, 0x00, 0xf1

