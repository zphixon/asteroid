	.text
	.def	 _ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
	.globl	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
	.p2align	4, 0x90
_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\str\\mod.rs"
	.cv_loc	0 1 1604 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	subq	$112, %rsp
.Lcfi2:
	.seh_stackalloc 112
	leaq	112(%rsp), %rbp
.Lcfi3:
	.seh_setframe 5, 112
.Lcfi4:
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -40(%rbp)
.Ltmp0:
	.cv_loc	0 1 1605 0
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	callq	_ZN41_$LT$str$u20$as$u20$core..str..StrExt$GT$8as_bytes17h4374f21893d1c71eE
	movq	%rdx, -24(%rbp)
	movq	%rax, -32(%rbp)
.Ltmp1:
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	callq	_ZN41_$LT$str$u20$as$u20$core..str..StrExt$GT$8as_bytes17h4374f21893d1c71eE
	movq	%rdx, -8(%rbp)
	movq	%rax, -16(%rbp)
.Ltmp2:
	leaq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	callq	_ZN4core3cmp5impls91_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$$u27$b$u20$B$GT$$u20$for$u20$$RF$$u27$a$u20$A$GT$2eq17ha6f31faf54616748E
	movb	%al, -65(%rbp)
.Ltmp3:
	.cv_loc	0 1 1606 0
	movb	-65(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$112, %rsp
	popq	%rbp
.Ltmp4:
	retq
.Ltmp5:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
.Lcfi5:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp7-.Ltmp6
.Ltmp6:
	.short	.Ltmp9-.Ltmp8
.Ltmp8:
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
.Ltmp9:
.Ltmp7:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
	.long	0
	.long	0
	.long	4104
	.secrel32	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
	.secidx	_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E
	.byte	0
	.asciz	"core::str::traits::{{impl}}::eq"
.Ltmp13:
	.short	.Ltmp15-.Ltmp14
.Ltmp14:
	.short	4414
	.long	4101
	.short	1
	.asciz	"self"
.Ltmp15:
	.cv_def_range	 .Ltmp0 .Ltmp5, "E\021N\001\000\000\300\377\377\377"
	.short	.Ltmp17-.Ltmp16
.Ltmp16:
	.short	4414
	.long	4101
	.short	1
	.asciz	"other"
.Ltmp17:
	.cv_def_range	 .Ltmp0 .Ltmp5, "E\021N\001\000\000\320\377\377\377"
	.short	2
	.short	4431
.Ltmp11:
	.p2align	2
	.cv_linetable	0, _ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h62fc6ab06f2a64c1E, .Lfunc_end0
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp19-.Ltmp18
.Ltmp18:
	.short	.Ltmp21-.Ltmp20
.Ltmp20:
	.short	4360
	.long	4101
	.asciz	"str*"
.Ltmp21:
.Ltmp19:
	.p2align	2
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.byte	0x22, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x73, 0x74
	.byte	0x72, 0x3a, 0x3a, 0x74
	.byte	0x72, 0x61, 0x69, 0x74
	.byte	0x73, 0x3a, 0x3a, 0x7b
	.byte	0x7b, 0x69, 0x6d, 0x70
	.byte	0x6c, 0x7d, 0x7d, 0x00
	.byte	0x3a, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x73, 0x74
	.byte	0x72, 0x2a, 0x00, 0x31
	.byte	0x32, 0x61, 0x37, 0x34
	.byte	0x66, 0x39, 0x36, 0x38
	.byte	0x33, 0x38, 0x38, 0x65
	.byte	0x63, 0x38, 0x37, 0x34
	.byte	0x34, 0x36, 0x34, 0x32
	.byte	0x36, 0x38, 0x38, 0x30
	.byte	0x35, 0x36, 0x37, 0x65
	.byte	0x66, 0x61, 0x33, 0x00
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x30, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
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
	.byte	0x3a, 0x00, 0x05, 0x15
	.byte	0x02, 0x00, 0x00, 0x02
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x10, 0x00, 0x73, 0x74
	.byte	0x72, 0x2a, 0x00, 0x31
	.byte	0x32, 0x61, 0x37, 0x34
	.byte	0x66, 0x39, 0x36, 0x38
	.byte	0x33, 0x38, 0x38, 0x65
	.byte	0x63, 0x38, 0x37, 0x34
	.byte	0x34, 0x36, 0x34, 0x32
	.byte	0x36, 0x38, 0x38, 0x30
	.byte	0x35, 0x36, 0x37, 0x65
	.byte	0x66, 0x61, 0x33, 0x00
	.byte	0x12, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x5c, 0x3c, 0x75, 0x6e
	.byte	0x6b, 0x6e, 0x6f, 0x77
	.byte	0x6e, 0x3e, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x06, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x03, 0x10, 0x00, 0x00
	.byte	0x65, 0x71, 0x00, 0xf1

