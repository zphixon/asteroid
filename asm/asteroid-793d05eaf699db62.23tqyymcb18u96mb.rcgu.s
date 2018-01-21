	.text
	.def	 _ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
	.globl	_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
	.p2align	4, 0x90
_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\liballoc\\raw_vec.rs"
	.cv_loc	0 1 712 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
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
.Ltmp0:
	.cv_loc	0 1 713 0
	callq	_ZN4core3mem7size_of17h4ae4183d94813f8fE
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$8, %rax
	jae	.LBB0_3
	movabsq	$9223372036854775807, %rax
	.cv_loc	0 1 714 0
	movq	-16(%rbp), %rcx
	cmpq	%rax, %rcx
	setbe	%dl
	.cv_file	2 "\\<assert macros>"
	.cv_loc	0 2 5 0
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_3:
	.cv_loc	0 1 713 0
	jmp	.LBB0_6
.LBB0_4:
	.cv_file	3 "\\<panic macros>"
	.cv_loc	0 3 4 0
	movq	const.3(%rip), %rcx
	.cv_loc	0 3 3 0
	callq	_ZN4core9panicking5panic17hb14241805eba0fdcE
	ud2
.LBB0_5:
	.cv_loc	0 1 713 0
	jmp	.LBB0_6
.LBB0_6:
	.cv_loc	0 1 717 0
	addq	$64, %rsp
	popq	%rbp
	retq
.Ltmp1:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
.Lcfi5:
	.seh_endproc

	.section	.rdata,"dr",one_only,str.0
	.p2align	4
str.0:
	.ascii	"capacity overflow"

	.section	.rdata,"dr",one_only,str.1
	.p2align	4
str.1:
	.ascii	"liballoc\\raw_vec.rs"

	.section	.rdata,"dr",one_only,ref.2
	.p2align	3
ref.2:
	.quad	str.0
	.quad	17
	.quad	str.1
	.quad	19
	.long	714
	.long	9

	.section	.rdata,"dr",one_only,const.3
	.p2align	3
const.3:
	.quad	ref.2

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
	.section	.debug$S,"dr",associative,_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
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
	.long	.Lfunc_end0-_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
	.long	0
	.long	0
	.long	4099
	.secrel32	_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
	.secidx	_ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E
	.byte	0
	.asciz	"alloc::raw_vec::alloc_guard"
.Ltmp9:
	.short	.Ltmp11-.Ltmp10
.Ltmp10:
	.short	4414
	.long	35
	.short	1
	.asciz	"alloc_size"
.Ltmp11:
	.cv_def_range	 .Ltmp0 .Ltmp1, "E\021N\001\000\000\360\377\377\377"
	.short	2
	.short	4431
.Ltmp7:
	.p2align	2
	.cv_linetable	0, _ZN5alloc7raw_vec11alloc_guard17hce4293b1f127dc64E, .Lfunc_end0
	.section	.debug$S,"dr"
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.byte	0x16, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x61, 0x6c, 0x6c, 0x6f
	.byte	0x63, 0x3a, 0x3a, 0x72
	.byte	0x61, 0x77, 0x5f, 0x76
	.byte	0x65, 0x63, 0x00, 0xf1
	.byte	0x0a, 0x00, 0x01, 0x12
	.byte	0x01, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x01, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x61, 0x6c, 0x6c, 0x6f
	.byte	0x63, 0x5f, 0x67, 0x75
	.byte	0x61, 0x72, 0x64, 0x00

