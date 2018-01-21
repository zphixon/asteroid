	.text
	.def	 _ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.globl	_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.p2align	4, 0x90
_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\sync\\atomic.rs"
	.cv_loc	0 1 1511 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.seh_handler __CxxFrameHandler3, @unwind, @except
	pushq	%rbp
.Lcfi1:
	.seh_pushreg 5
	subq	$80, %rsp
.Lcfi2:
	.seh_stackalloc 80
	leaq	80(%rsp), %rbp
.Lcfi3:
	.seh_setframe 5, 80
.Lcfi4:
	.seh_endprologue
	movq	$-2, -8(%rbp)
	movb	%r8b, %al
	movb	%dl, %r9b
	movq	%rcx, -24(%rbp)
	movb	%r9b, -12(%rbp)
	movb	%al, -11(%rbp)
.Ltmp2:
	.cv_loc	0 1 1513 0
	movb	$0, -9(%rbp)
	movb	$1, -9(%rbp)
	movzbl	-11(%rbp), %edx
	movl	%edx, %ecx
	movq	%rcx, %r10
	subq	$5, %r10
	movq	%rcx, -32(%rbp)
	movq	%r10, -40(%rbp)
	ja	.LBB0_8
.Ltmp3:
	leaq	.LJTI0_0(%rip), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.Ltmp4:
.LBB0_2:
	movq	-24(%rbp), %rax
	movb	$0, -9(%rbp)
	movb	-12(%rbp), %cl
	xchgb	%cl, (%rax)
	movb	%cl, -10(%rbp)
	.cv_loc	0 1 1512 0
	jmp	.LBB0_9
.Ltmp5:
.LBB0_3:
	.cv_loc	0 1 1514 0
	movq	-24(%rbp), %rax
	movb	$0, -9(%rbp)
	movb	-12(%rbp), %cl
	xchgb	%cl, (%rax)
	movb	%cl, -10(%rbp)
	.cv_loc	0 1 1512 0
	jmp	.LBB0_9
.Ltmp6:
.LBB0_4:
	.cv_loc	0 1 1515 0
	movq	-24(%rbp), %rax
	movb	$0, -9(%rbp)
	movb	-12(%rbp), %cl
	xchgb	%cl, (%rax)
	movb	%cl, -10(%rbp)
	.cv_loc	0 1 1512 0
	jmp	.LBB0_9
.Ltmp7:
.LBB0_5:
	.cv_loc	0 1 1516 0
	movq	-24(%rbp), %rax
	movb	$0, -9(%rbp)
	movb	-12(%rbp), %cl
	xchgb	%cl, (%rax)
	movb	%cl, -10(%rbp)
	.cv_loc	0 1 1512 0
	jmp	.LBB0_9
.Ltmp8:
.LBB0_6:
	.cv_loc	0 1 1517 0
	movq	-24(%rbp), %rax
	movb	$0, -9(%rbp)
	movb	-12(%rbp), %cl
	xchgb	%cl, (%rax)
	movb	%cl, -10(%rbp)
	.cv_loc	0 1 1512 0
	jmp	.LBB0_9
.Ltmp9:
.LBB0_7:
	.cv_file	2 "C:\\projects\\rust\\src\\libcore\\macros.rs"
	.cv_loc	0 2 20 0
.Ltmp0:
	leaq	ref.2(%rip), %rcx
	callq	_ZN4core9panicking5panic17hb14241805eba0fdcE
.Ltmp1:
	jmp	.LBB0_12
.Ltmp10:
.LBB0_8:
	.cv_loc	0 1 1520 0
	ud2
.Ltmp11:
.LBB0_9:
	movb	-10(%rbp), %al
	addq	$80, %rsp
	popq	%rbp
.Ltmp12:
	retq
.LBB0_12:
.Ltmp13:
	ud2
.Ltmp14:
.LBB0_1:
	.cv_loc	0 1 1511 0
	addq	$32, %rsp
	popq	%rbp
.Ltmp15:
	retq
.LBB0_10:
.Ltmp16:
	.cv_loc	0 1 1520 0
	movb	$0, -9(%rbp)
	jmp	.LBB0_1
.Ltmp17:
	.seh_handlerdata
	.long	($cppxdata$_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E)@IMGREL
	.section	.text,"xr",one_only,_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
.Lcfi5:
	.seh_endproc
	.def	 "?dtor$11@?0?_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$11@?0?_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E@4HA":
.Lcfi6:
.seh_proc "?dtor$11@?0?_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E@4HA"
.LBB0_11:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
.Lcfi7:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi8:
	.seh_stackalloc 32
	leaq	80(%rdx), %rbp
.Ltmp18:
.Lcfi9:
	.seh_endprologue
	testb	$1, -9(%rbp)
	jne	.LBB0_10
	jmp	.LBB0_1
.Ltmp19:
.Lfunc_end0:
	.p2align	2, 0x90
.LJTI0_0:
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
.Lcfi10:
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.p2align	2
$cppxdata$_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E:
	.long	429065506
	.long	1
	.long	($stateUnwindMap$_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E)@IMGREL
	.long	0
	.long	0
	.long	3
	.long	($ip2state$_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E)@IMGREL
	.long	72
	.long	0
	.long	1
$stateUnwindMap$_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E:
	.long	-1
	.long	"?dtor$11@?0?_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E@4HA"@IMGREL
$ip2state$_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E:
	.long	.Lfunc_begin0@IMGREL
	.long	-1
	.long	.Ltmp0@IMGREL+1
	.long	0
	.long	.Ltmp1@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E

	.section	.rdata,"dr",one_only,str.0
	.p2align	4
str.0:
	.ascii	"invalid memory ordering"

	.section	.rdata,"dr",one_only,str.1
	.p2align	4
str.1:
	.ascii	"libcore\\sync\\atomic.rs"

	.section	.rdata,"dr",one_only,ref.2
	.p2align	3
ref.2:
	.quad	str.0
	.quad	23
	.quad	str.1
	.quad	22
	.long	1518
	.long	28

	.section	.rdata,"dr",one_only,const.3
	.p2align	3
const.3:
	.quad	ref.2

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp21-.Ltmp20
.Ltmp20:
	.short	.Ltmp23-.Ltmp22
.Ltmp22:
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
.Ltmp23:
.Ltmp21:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp25-.Ltmp24
.Ltmp24:
	.short	.Ltmp27-.Ltmp26
.Ltmp26:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.long	0
	.long	0
	.long	4101
	.secrel32	_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.secidx	_ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E
	.byte	0
	.asciz	"core::sync::atomic::atomic_swap<u8>"
.Ltmp27:
	.short	.Ltmp29-.Ltmp28
.Ltmp28:
	.short	4414
	.long	1568
	.short	1
	.asciz	"dst"
.Ltmp29:
	.cv_def_range	 .Ltmp2 .Ltmp19, "E\021N\001\000\000\350\377\377\377"
	.short	.Ltmp31-.Ltmp30
.Ltmp30:
	.short	4414
	.long	32
	.short	1
	.asciz	"val"
.Ltmp31:
	.cv_def_range	 .Ltmp2 .Ltmp19, "E\021N\001\000\000\364\377\377\377"
	.short	.Ltmp33-.Ltmp32
.Ltmp32:
	.short	4414
	.long	4098
	.short	1
	.asciz	"order"
.Ltmp33:
	.cv_def_range	 .Ltmp2 .Ltmp19, "E\021N\001\000\000\365\377\377\377"
	.short	2
	.short	4431
.Ltmp25:
	.p2align	2
	.cv_linetable	0, _ZN4core4sync6atomic11atomic_swap17he4deb4f526841114E, .Lfunc_end0
	.section	.debug$S,"dr"
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.byte	0x1a, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x73, 0x79
	.byte	0x6e, 0x63, 0x3a, 0x3a
	.byte	0x61, 0x74, 0x6f, 0x6d
	.byte	0x69, 0x63, 0x00, 0xf1
	.byte	0x6a, 0x00, 0x03, 0x12
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x00, 0x00, 0x52, 0x65
	.byte	0x6c, 0x61, 0x78, 0x65
	.byte	0x64, 0x00, 0xf2, 0xf1
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x01, 0x00, 0x52, 0x65
	.byte	0x6c, 0x65, 0x61, 0x73
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x02, 0x00, 0x41, 0x63
	.byte	0x71, 0x75, 0x69, 0x72
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x03, 0x00, 0x41, 0x63
	.byte	0x71, 0x52, 0x65, 0x6c
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x04, 0x00, 0x53, 0x65
	.byte	0x71, 0x43, 0x73, 0x74
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x02, 0x15, 0x03, 0x00
	.byte	0x05, 0x00, 0x5f, 0x5f
	.byte	0x4e, 0x6f, 0x6e, 0x65
	.byte	0x78, 0x68, 0x61, 0x75
	.byte	0x73, 0x74, 0x69, 0x76
	.byte	0x65, 0x00, 0xf2, 0xf1
	.byte	0x2e, 0x00, 0x07, 0x15
	.byte	0x06, 0x00, 0x00, 0x00
	.byte	0x20, 0x00, 0x00, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x73, 0x79
	.byte	0x6e, 0x63, 0x3a, 0x3a
	.byte	0x61, 0x74, 0x6f, 0x6d
	.byte	0x69, 0x63, 0x3a, 0x3a
	.byte	0x4f, 0x72, 0x64, 0x65
	.byte	0x72, 0x69, 0x6e, 0x67
	.byte	0x00, 0xf3, 0xf2, 0xf1
	.byte	0x12, 0x00, 0x01, 0x12
	.byte	0x03, 0x00, 0x00, 0x00
	.byte	0x20, 0x06, 0x00, 0x00
	.byte	0x20, 0x00, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x20, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x03, 0x00
	.byte	0x03, 0x10, 0x00, 0x00
	.byte	0x16, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x04, 0x10, 0x00, 0x00
	.byte	0x61, 0x74, 0x6f, 0x6d
	.byte	0x69, 0x63, 0x5f, 0x73
	.byte	0x77, 0x61, 0x70, 0x00

