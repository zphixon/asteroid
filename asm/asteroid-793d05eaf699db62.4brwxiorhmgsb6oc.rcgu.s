	.text
	.def	 _ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
	.globl	_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
	.p2align	4, 0x90
_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\hash\\mod.rs"
	.cv_loc	0 1 555 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	subq	$48, %rsp
.Lcfi2:
	.seh_stackalloc 48
	leaq	48(%rsp), %rbp
.Lcfi3:
	.seh_setframe 5, 48
.Lcfi4:
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
.Ltmp0:
	.cv_loc	0 1 556 0
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	callq	_ZN4core4hash6Hasher9write_u6417hee4d7bcdbe438feeE
	.cv_loc	0 1 557 0
	nop
	addq	$48, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
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
	.section	.debug$S,"dr",associative,_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
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
	.long	.Lfunc_end0-_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
	.long	0
	.long	0
	.long	4121
	.secrel32	_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
	.secidx	_ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE
	.byte	0
	.asciz	"core::hash::impls::{{impl}}::hash<std::collections::hash::map::DefaultHasher>"
.Ltmp9:
	.short	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	4414
	.long	1571
	.short	1
	.asciz	"self"
.Ltmp11:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp13-.Ltmp12
.Ltmp12:
	.short	4414
	.long	4098
	.short	1
	.asciz	"state"
.Ltmp13:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp7:
	.p2align	2
	.cv_linetable	0, _ZN4core4hash5impls50_$LT$impl$u20$core..hash..Hash$u20$for$u20$u64$GT$4hash17h6eb80e68e883313fE, .Lfunc_end0
	.section	.debug$S,"dr"
	.long	241
	.long	.Ltmp15-.Ltmp14
.Ltmp14:
	.short	.Ltmp17-.Ltmp16
.Ltmp16:
	.short	4360
	.long	4103
	.asciz	"std::collections::hash::map::DefaultHasher"
.Ltmp17:
	.short	.Ltmp19-.Ltmp18
.Ltmp18:
	.short	4360
	.long	4108
	.asciz	"core::hash::sip::SipHasher13"
.Ltmp19:
	.short	.Ltmp21-.Ltmp20
.Ltmp20:
	.short	4360
	.long	4113
	.asciz	"core::hash::sip::Hasher<core::hash::sip::Sip13Rounds>"
.Ltmp21:
	.short	.Ltmp23-.Ltmp22
.Ltmp22:
	.short	4360
	.long	4116
	.asciz	"core::hash::sip::State"
.Ltmp23:
	.short	.Ltmp25-.Ltmp24
.Ltmp24:
	.short	4360
	.long	4119
	.asciz	"core::marker::PhantomData<core::hash::sip::Sip13Rounds>"
.Ltmp25:
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
	.byte	0x3a, 0x3a, 0x68, 0x61
	.byte	0x73, 0x68, 0x3a, 0x3a
	.byte	0x69, 0x6d, 0x70, 0x6c
	.byte	0x73, 0x3a, 0x3a, 0x7b
	.byte	0x7b, 0x69, 0x6d, 0x70
	.byte	0x6c, 0x7d, 0x7d, 0x00
	.byte	0x62, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x80, 0x02
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x73, 0x74
	.byte	0x64, 0x3a, 0x3a, 0x63
	.byte	0x6f, 0x6c, 0x6c, 0x65
	.byte	0x63, 0x74, 0x69, 0x6f
	.byte	0x6e, 0x73, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x6d, 0x61
	.byte	0x70, 0x3a, 0x3a, 0x44
	.byte	0x65, 0x66, 0x61, 0x75
	.byte	0x6c, 0x74, 0x48, 0x61
	.byte	0x73, 0x68, 0x65, 0x72
	.byte	0x00, 0x37, 0x30, 0x35
	.byte	0x63, 0x38, 0x33, 0x66
	.byte	0x61, 0x64, 0x33, 0x30
	.byte	0x36, 0x32, 0x31, 0x35
	.byte	0x63, 0x32, 0x38, 0x65
	.byte	0x66, 0x39, 0x62, 0x62
	.byte	0x64, 0x65, 0x61, 0x64
	.byte	0x64, 0x33, 0x39, 0x61
	.byte	0x61, 0x00, 0xf2, 0xf1
	.byte	0x0a, 0x00, 0x02, 0x10
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x0c, 0x00, 0x01, 0x00
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x23, 0x06, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x03, 0x10, 0x00, 0x00
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
	.byte	0x12, 0x00, 0x03, 0x12
	.byte	0x0d, 0x15, 0x03, 0x00
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x5f, 0x5f
	.byte	0x30, 0x00, 0xf2, 0xf1
	.byte	0x62, 0x00, 0x05, 0x15
	.byte	0x01, 0x00, 0x00, 0x02
	.byte	0x06, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x48, 0x00, 0x73, 0x74
	.byte	0x64, 0x3a, 0x3a, 0x63
	.byte	0x6f, 0x6c, 0x6c, 0x65
	.byte	0x63, 0x74, 0x69, 0x6f
	.byte	0x6e, 0x73, 0x3a, 0x3a
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x3a, 0x3a, 0x6d, 0x61
	.byte	0x70, 0x3a, 0x3a, 0x44
	.byte	0x65, 0x66, 0x61, 0x75
	.byte	0x6c, 0x74, 0x48, 0x61
	.byte	0x73, 0x68, 0x65, 0x72
	.byte	0x00, 0x37, 0x30, 0x35
	.byte	0x63, 0x38, 0x33, 0x66
	.byte	0x61, 0x64, 0x33, 0x30
	.byte	0x36, 0x32, 0x31, 0x35
	.byte	0x63, 0x32, 0x38, 0x65
	.byte	0x66, 0x39, 0x62, 0x62
	.byte	0x64, 0x65, 0x61, 0x64
	.byte	0x64, 0x33, 0x39, 0x61
	.byte	0x61, 0x00, 0xf2, 0xf1
	.byte	0x12, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x5c, 0x3c, 0x75, 0x6e
	.byte	0x6b, 0x6e, 0x6f, 0x77
	.byte	0x6e, 0x3e, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x07, 0x10, 0x00, 0x00
	.byte	0x08, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
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
	.byte	0x0a, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x68, 0x61
	.byte	0x73, 0x68, 0x65, 0x72
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x52, 0x00, 0x05, 0x15
	.byte	0x01, 0x00, 0x00, 0x02
	.byte	0x0b, 0x10, 0x00, 0x00
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
	.byte	0x0e, 0x00, 0x06, 0x16
	.byte	0x0c, 0x10, 0x00, 0x00
	.byte	0x08, 0x10, 0x00, 0x00
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
	.byte	0x0e, 0x10, 0x00, 0x00
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
	.byte	0x0f, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x5f, 0x6d
	.byte	0x61, 0x72, 0x6b, 0x65
	.byte	0x72, 0x00, 0xf2, 0xf1
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x07, 0x00, 0x00, 0x02
	.byte	0x10, 0x10, 0x00, 0x00
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
	.byte	0x11, 0x10, 0x00, 0x00
	.byte	0x08, 0x10, 0x00, 0x00
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
	.byte	0x13, 0x10, 0x00, 0x00
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
	.byte	0x14, 0x10, 0x00, 0x00
	.byte	0x08, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x02, 0x00, 0x03, 0x12
	.byte	0x6e, 0x00, 0x05, 0x15
	.byte	0x00, 0x00, 0x00, 0x02
	.byte	0x16, 0x10, 0x00, 0x00
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
	.byte	0x17, 0x10, 0x00, 0x00
	.byte	0x08, 0x10, 0x00, 0x00
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x12, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x68, 0x61, 0x73, 0x68
	.byte	0x00, 0xf3, 0xf2, 0xf1

