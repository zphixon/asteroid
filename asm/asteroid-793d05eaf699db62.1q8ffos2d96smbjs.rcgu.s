	.text
	.def	 _ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	.globl	_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	.p2align	4, 0x90
_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\cmp.rs"
	.cv_loc	0 1 912 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	subq	$64, %rsp
.Lcfi2:
	.seh_stackalloc 64
	leaq	64(%rsp), %rbp
.Lcfi3:
	.seh_setframe 5, 64
.Lcfi4:
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
.Ltmp0:
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %r8
	movq	8(%rax), %r9
	movq	%rcx, -24(%rbp)
	movq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	callq	_ZN4core5slice81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$B$u5d$$GT$$u20$for$u20$$u5b$A$u5d$$GT$2eq17h799396e377c1fb6eE
	movb	%al, -25(%rbp)
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
.Lcfi5:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp3-.Ltmp2
.Ltmp2:
	.short	.Ltmp5-.Ltmp4
.Ltmp4:
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
.Ltmp5:
.Ltmp3:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp7-.Ltmp6
.Ltmp6:
	.short	.Ltmp9-.Ltmp8
.Ltmp8:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	.long	0
	.long	0
	.long	4105
	.secrel32	_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	.secidx	_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	.byte	0
	.asciz	"core::cmp::impls::{{impl}}::eq<slice<u8>,slice<u8>>"
.Ltmp9:
	.short	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	4414
	.long	4098
	.short	1
	.asciz	"self"
.Ltmp11:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	4414
	.long	4098
	.short	1
	.asciz	"other"
.Ltmp13:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp7:
	.p2align	2
	.cv_linetable	0, _ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E, .Lfunc_end0
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp15-.Ltmp14
.Ltmp14:
	.short	.Ltmp17-.Ltmp16
.Ltmp16:
	.short	4360
	.long	4102
	.asciz	"slice<u8>*"
.Ltmp17:
.Ltmp15:
	.p2align	2
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
	.byte	0x0a, 0x00, 0x02, 0x10
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x0c, 0x00, 0x01, 0x00
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x30, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x03, 0x10, 0x00, 0x00
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
	.byte	0x05, 0x10, 0x00, 0x00
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
	.byte	0x12, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x5c, 0x3c, 0x75, 0x6e
	.byte	0x6b, 0x6e, 0x6f, 0x77
	.byte	0x6e, 0x3e, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x06, 0x10, 0x00, 0x00
	.byte	0x07, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x65, 0x71, 0x00, 0xf1

