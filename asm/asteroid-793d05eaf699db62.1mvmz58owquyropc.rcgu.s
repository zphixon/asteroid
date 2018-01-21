	.text
	.def	 _ZN4core3cmp3Ord3max17h59bed98acb6180e8E;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
	.p2align	4, 0x90
_ZN4core3cmp3Ord3max17h59bed98acb6180e8E:
.Lfunc_begin0:
	.cv_func_id 0
	.cv_file	1 "C:\\projects\\rust\\src\\libcore\\cmp.rs"
	.cv_loc	0 1 460 0 is_stmt 0
.Lcfi0:
.seh_proc _ZN4core3cmp3Ord3max17h59bed98acb6180e8E
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
	movq	%rcx, -40(%rbp)
	movq	%rdx, -32(%rbp)
.Ltmp2:
	.cv_loc	0 1 462 0
	movb	$0, -10(%rbp)
	movb	$0, -9(%rbp)
	movb	$1, -10(%rbp)
	movb	$1, -9(%rbp)
.Ltmp0:
	leaq	-32(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	callq	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2ge17hbde3c3865f0dd9a2E
.Ltmp1:
	movb	%al, -41(%rbp)
	jmp	.LBB0_2
.Ltmp3:
.LBB0_2:
	movb	-41(%rbp), %al
	testb	$1, %al
	jne	.LBB0_3
	jmp	.LBB0_4
.Ltmp4:
.LBB0_3:
	movb	$0, -9(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_5
.Ltmp5:
.LBB0_4:
	movb	$0, -10(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.Ltmp6:
.LBB0_5:
	.cv_loc	0 1 463 0
	testb	$1, -9(%rbp)
	jne	.LBB0_9
.Ltmp7:
.LBB0_6:
	testb	$1, -10(%rbp)
	jne	.LBB0_10
.Ltmp8:
.LBB0_7:
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
.Ltmp9:
	retq
.LBB0_9:
.Ltmp10:
	movb	$0, -9(%rbp)
	jmp	.LBB0_6
.Ltmp11:
.LBB0_10:
	movb	$0, -10(%rbp)
	jmp	.LBB0_7
.Ltmp12:
.LBB0_1:
	.cv_loc	0 1 460 0
	addq	$32, %rsp
	popq	%rbp
.Ltmp13:
	retq
.LBB0_8:
.Ltmp14:
	.cv_loc	0 1 463 0
	movb	$0, -10(%rbp)
	jmp	.LBB0_1
.Ltmp15:
	.seh_handlerdata
	.long	($cppxdata$_ZN4core3cmp3Ord3max17h59bed98acb6180e8E)@IMGREL
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
.Lcfi5:
	.seh_endproc
	.def	 "?dtor$11@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$11@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA":
.Lcfi6:
.seh_proc "?dtor$11@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA"
.LBB0_11:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
.Lcfi7:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi8:
	.seh_stackalloc 32
	leaq	80(%rdx), %rbp
.Ltmp16:
.Lcfi9:
	.seh_endprologue
	testb	$1, -10(%rbp)
	jne	.LBB0_8
	jmp	.LBB0_1
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
.Lcfi10:
	.seh_endproc
	.def	 "?dtor$12@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$12@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA":
.Lcfi11:
.seh_proc "?dtor$12@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA"
.LBB0_12:
.Ltmp17:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
.Lcfi12:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi13:
	.seh_stackalloc 32
	leaq	80(%rdx), %rbp
.Ltmp18:
.Lcfi14:
	.seh_endprologue
	movb	$0, -9(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp19:
.Lfunc_end0:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
.Lcfi15:
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
	.p2align	2
$cppxdata$_ZN4core3cmp3Ord3max17h59bed98acb6180e8E:
	.long	429065506
	.long	2
	.long	($stateUnwindMap$_ZN4core3cmp3Ord3max17h59bed98acb6180e8E)@IMGREL
	.long	0
	.long	0
	.long	3
	.long	($ip2state$_ZN4core3cmp3Ord3max17h59bed98acb6180e8E)@IMGREL
	.long	72
	.long	0
	.long	1
$stateUnwindMap$_ZN4core3cmp3Ord3max17h59bed98acb6180e8E:
	.long	-1
	.long	"?dtor$11@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA"@IMGREL
	.long	0
	.long	"?dtor$12@?0?_ZN4core3cmp3Ord3max17h59bed98acb6180e8E@4HA"@IMGREL
$ip2state$_ZN4core3cmp3Ord3max17h59bed98acb6180e8E:
	.long	.Lfunc_begin0@IMGREL
	.long	-1
	.long	.Ltmp0@IMGREL+1
	.long	1
	.long	.Ltmp1@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3max17h59bed98acb6180e8E

	.def	 _ZN4core3cmp3Ord3min17h67a37b240e98b05dE;
	.scl	3;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	.p2align	4, 0x90
_ZN4core3cmp3Ord3min17h67a37b240e98b05dE:
.Lfunc_begin1:
	.cv_func_id 1
	.cv_loc	1 1 476 0
.Lcfi16:
.seh_proc _ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	.seh_handler __CxxFrameHandler3, @unwind, @except
	pushq	%rbp
.Lcfi17:
	.seh_pushreg 5
	subq	$80, %rsp
.Lcfi18:
	.seh_stackalloc 80
	leaq	80(%rsp), %rbp
.Lcfi19:
	.seh_setframe 5, 80
.Lcfi20:
	.seh_endprologue
	movq	$-2, -8(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rdx, -32(%rbp)
.Ltmp22:
	.cv_loc	1 1 478 0
	movb	$0, -10(%rbp)
	movb	$0, -9(%rbp)
	movb	$1, -10(%rbp)
	movb	$1, -9(%rbp)
.Ltmp20:
	leaq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	callq	_ZN4core3cmp5impls57_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$usize$GT$2le17h776ee1cce812555aE
.Ltmp21:
	movb	%al, -41(%rbp)
	jmp	.LBB1_2
.Ltmp23:
.LBB1_2:
	movb	-41(%rbp), %al
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.Ltmp24:
.LBB1_3:
	movb	$0, -10(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_5
.Ltmp25:
.LBB1_4:
	movb	$0, -9(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.Ltmp26:
.LBB1_5:
	.cv_loc	1 1 479 0
	testb	$1, -9(%rbp)
	jne	.LBB1_9
.Ltmp27:
.LBB1_6:
	testb	$1, -10(%rbp)
	jne	.LBB1_10
.Ltmp28:
.LBB1_7:
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
.Ltmp29:
	retq
.LBB1_9:
.Ltmp30:
	movb	$0, -9(%rbp)
	jmp	.LBB1_6
.Ltmp31:
.LBB1_10:
	movb	$0, -10(%rbp)
	jmp	.LBB1_7
.Ltmp32:
.LBB1_1:
	.cv_loc	1 1 476 0
	addq	$32, %rsp
	popq	%rbp
.Ltmp33:
	retq
.LBB1_8:
.Ltmp34:
	.cv_loc	1 1 479 0
	movb	$0, -10(%rbp)
	jmp	.LBB1_1
.Ltmp35:
	.seh_handlerdata
	.long	($cppxdata$_ZN4core3cmp3Ord3min17h67a37b240e98b05dE)@IMGREL
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
.Lcfi21:
	.seh_endproc
	.def	 "?dtor$11@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$11@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA":
.Lcfi22:
.seh_proc "?dtor$11@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA"
.LBB1_11:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
.Lcfi23:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi24:
	.seh_stackalloc 32
	leaq	80(%rdx), %rbp
.Ltmp36:
.Lcfi25:
	.seh_endprologue
	testb	$1, -10(%rbp)
	jne	.LBB1_8
	jmp	.LBB1_1
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
.Lcfi26:
	.seh_endproc
	.def	 "?dtor$12@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA";
	.scl	3;
	.type	32;
	.endef
	.p2align	4, 0x90
"?dtor$12@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA":
.Lcfi27:
.seh_proc "?dtor$12@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA"
.LBB1_12:
.Ltmp37:
	movq	%rdx, 16(%rsp)
	pushq	%rbp
.Lcfi28:
	.seh_pushreg 5
	subq	$32, %rsp
.Lcfi29:
	.seh_stackalloc 32
	leaq	80(%rdx), %rbp
.Ltmp38:
.Lcfi30:
	.seh_endprologue
	movb	$0, -9(%rbp)
	addq	$32, %rsp
	popq	%rbp
	retq
.Ltmp39:
.Lfunc_end1:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
.Lcfi31:
	.seh_endproc
	.section	.xdata,"dr",associative,_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	.p2align	2
$cppxdata$_ZN4core3cmp3Ord3min17h67a37b240e98b05dE:
	.long	429065506
	.long	2
	.long	($stateUnwindMap$_ZN4core3cmp3Ord3min17h67a37b240e98b05dE)@IMGREL
	.long	0
	.long	0
	.long	3
	.long	($ip2state$_ZN4core3cmp3Ord3min17h67a37b240e98b05dE)@IMGREL
	.long	72
	.long	0
	.long	1
$stateUnwindMap$_ZN4core3cmp3Ord3min17h67a37b240e98b05dE:
	.long	-1
	.long	"?dtor$11@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA"@IMGREL
	.long	0
	.long	"?dtor$12@?0?_ZN4core3cmp3Ord3min17h67a37b240e98b05dE@4HA"@IMGREL
$ip2state$_ZN4core3cmp3Ord3min17h67a37b240e98b05dE:
	.long	.Lfunc_begin1@IMGREL
	.long	-1
	.long	.Ltmp20@IMGREL+1
	.long	1
	.long	.Ltmp21@IMGREL+1
	.long	-1
	.section	.text,"xr",one_only,_ZN4core3cmp3Ord3min17h67a37b240e98b05dE

	.def	 _ZN4core3cmp3max17h82a9f940d3d84c32E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3cmp3max17h82a9f940d3d84c32E
	.globl	_ZN4core3cmp3max17h82a9f940d3d84c32E
	.p2align	4, 0x90
_ZN4core3cmp3max17h82a9f940d3d84c32E:
.Lfunc_begin2:
	.cv_func_id 2
	.cv_loc	2 1 753 0
.Lcfi32:
.seh_proc _ZN4core3cmp3max17h82a9f940d3d84c32E
	pushq	%rbp
.Lcfi33:
	.seh_pushreg 5
	subq	$64, %rsp
.Lcfi34:
	.seh_stackalloc 64
	leaq	64(%rsp), %rbp
.Lcfi35:
	.seh_setframe 5, 64
.Lcfi36:
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
.Ltmp40:
	.cv_loc	2 1 754 0
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	callq	_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
	movq	%rax, -24(%rbp)
	.cv_loc	2 1 755 0
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Ltmp41:
.Lfunc_end2:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp3max17h82a9f940d3d84c32E
.Lcfi37:
	.seh_endproc

	.def	 _ZN4core3cmp3min17h0f17e6f6685cee14E;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",one_only,_ZN4core3cmp3min17h0f17e6f6685cee14E
	.globl	_ZN4core3cmp3min17h0f17e6f6685cee14E
	.p2align	4, 0x90
_ZN4core3cmp3min17h0f17e6f6685cee14E:
.Lfunc_begin3:
	.cv_func_id 3
	.cv_loc	3 1 733 0
.Lcfi38:
.seh_proc _ZN4core3cmp3min17h0f17e6f6685cee14E
	pushq	%rbp
.Lcfi39:
	.seh_pushreg 5
	subq	$64, %rsp
.Lcfi40:
	.seh_stackalloc 64
	leaq	64(%rsp), %rbp
.Lcfi41:
	.seh_setframe 5, 64
.Lcfi42:
	.seh_endprologue
	movq	%rcx, -16(%rbp)
	movq	%rdx, -8(%rbp)
.Ltmp42:
	.cv_loc	3 1 734 0
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	callq	_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	movq	%rax, -24(%rbp)
	.cv_loc	3 1 735 0
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Ltmp43:
.Lfunc_end3:
	.seh_handlerdata
	.section	.text,"xr",one_only,_ZN4core3cmp3min17h0f17e6f6685cee14E
.Lcfi43:
	.seh_endproc

	.section	.debug$S,"dr"
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp45-.Ltmp44
.Ltmp44:
	.short	.Ltmp47-.Ltmp46
.Ltmp46:
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
.Ltmp47:
.Ltmp45:
	.p2align	2
	.section	.debug$S,"dr",associative,_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp49-.Ltmp48
.Ltmp48:
	.short	.Ltmp51-.Ltmp50
.Ltmp50:
	.short	4422
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end0-_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
	.long	0
	.long	0
	.long	4099
	.secrel32	_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
	.secidx	_ZN4core3cmp3Ord3max17h59bed98acb6180e8E
	.byte	0
	.asciz	"core::cmp::Ord::max<usize>"
.Ltmp51:
	.short	.Ltmp53-.Ltmp52
.Ltmp52:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp53:
	.cv_def_range	 .Ltmp2 .Ltmp19, "E\021N\001\000\000\330\377\377\377"
	.short	.Ltmp55-.Ltmp54
.Ltmp54:
	.short	4414
	.long	35
	.short	1
	.asciz	"other"
.Ltmp55:
	.cv_def_range	 .Ltmp2 .Ltmp19, "E\021N\001\000\000\340\377\377\377"
	.short	2
	.short	4431
.Ltmp49:
	.p2align	2
	.cv_linetable	0, _ZN4core3cmp3Ord3max17h59bed98acb6180e8E, .Lfunc_end0
	.section	.debug$S,"dr",associative,_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp57-.Ltmp56
.Ltmp56:
	.short	.Ltmp59-.Ltmp58
.Ltmp58:
	.short	4422
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end1-_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	.long	0
	.long	0
	.long	4100
	.secrel32	_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	.secidx	_ZN4core3cmp3Ord3min17h67a37b240e98b05dE
	.byte	0
	.asciz	"core::cmp::Ord::min<usize>"
.Ltmp59:
	.short	.Ltmp61-.Ltmp60
.Ltmp60:
	.short	4414
	.long	35
	.short	1
	.asciz	"self"
.Ltmp61:
	.cv_def_range	 .Ltmp22 .Ltmp39, "E\021N\001\000\000\330\377\377\377"
	.short	.Ltmp63-.Ltmp62
.Ltmp62:
	.short	4414
	.long	35
	.short	1
	.asciz	"other"
.Ltmp63:
	.cv_def_range	 .Ltmp22 .Ltmp39, "E\021N\001\000\000\340\377\377\377"
	.short	2
	.short	4431
.Ltmp57:
	.p2align	2
	.cv_linetable	1, _ZN4core3cmp3Ord3min17h67a37b240e98b05dE, .Lfunc_end1
	.section	.debug$S,"dr",associative,_ZN4core3cmp3max17h82a9f940d3d84c32E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp65-.Ltmp64
.Ltmp64:
	.short	.Ltmp67-.Ltmp66
.Ltmp66:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end2-_ZN4core3cmp3max17h82a9f940d3d84c32E
	.long	0
	.long	0
	.long	4102
	.secrel32	_ZN4core3cmp3max17h82a9f940d3d84c32E
	.secidx	_ZN4core3cmp3max17h82a9f940d3d84c32E
	.byte	0
	.asciz	"core::cmp::max<usize>"
.Ltmp67:
	.short	.Ltmp69-.Ltmp68
.Ltmp68:
	.short	4414
	.long	35
	.short	1
	.asciz	"v1"
.Ltmp69:
	.cv_def_range	 .Ltmp40 .Ltmp41, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp71-.Ltmp70
.Ltmp70:
	.short	4414
	.long	35
	.short	1
	.asciz	"v2"
.Ltmp71:
	.cv_def_range	 .Ltmp40 .Ltmp41, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp65:
	.p2align	2
	.cv_linetable	2, _ZN4core3cmp3max17h82a9f940d3d84c32E, .Lfunc_end2
	.section	.debug$S,"dr",associative,_ZN4core3cmp3min17h0f17e6f6685cee14E
	.p2align	2
	.long	4
	.long	241
	.long	.Ltmp73-.Ltmp72
.Ltmp72:
	.short	.Ltmp75-.Ltmp74
.Ltmp74:
	.short	4423
	.long	0
	.long	0
	.long	0
	.long	.Lfunc_end3-_ZN4core3cmp3min17h0f17e6f6685cee14E
	.long	0
	.long	0
	.long	4103
	.secrel32	_ZN4core3cmp3min17h0f17e6f6685cee14E
	.secidx	_ZN4core3cmp3min17h0f17e6f6685cee14E
	.byte	0
	.asciz	"core::cmp::min<usize>"
.Ltmp75:
	.short	.Ltmp77-.Ltmp76
.Ltmp76:
	.short	4414
	.long	35
	.short	1
	.asciz	"v1"
.Ltmp77:
	.cv_def_range	 .Ltmp42 .Ltmp43, "E\021N\001\000\000\360\377\377\377"
	.short	.Ltmp79-.Ltmp78
.Ltmp78:
	.short	4414
	.long	35
	.short	1
	.asciz	"v2"
.Ltmp79:
	.cv_def_range	 .Ltmp42 .Ltmp43, "E\021N\001\000\000\370\377\377\377"
	.short	2
	.short	4431
.Ltmp73:
	.p2align	2
	.cv_linetable	3, _ZN4core3cmp3min17h0f17e6f6685cee14E, .Lfunc_end3
	.section	.debug$S,"dr"
	.cv_filechecksums
	.cv_stringtable
	.section	.debug$T,"dr"
	.p2align	2
	.long	4
	.byte	0x16, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x63, 0x6d
	.byte	0x70, 0x3a, 0x3a, 0x4f
	.byte	0x72, 0x64, 0x00, 0xf1
	.byte	0x0e, 0x00, 0x01, 0x12
	.byte	0x02, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x0e, 0x00, 0x08, 0x10
	.byte	0x23, 0x00, 0x00, 0x00
	.byte	0x00, 0x00, 0x02, 0x00
	.byte	0x01, 0x10, 0x00, 0x00
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x6d, 0x61, 0x78, 0x00
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x00, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x6d, 0x69, 0x6e, 0x00
	.byte	0x12, 0x00, 0x05, 0x16
	.byte	0x00, 0x00, 0x00, 0x00
	.byte	0x63, 0x6f, 0x72, 0x65
	.byte	0x3a, 0x3a, 0x63, 0x6d
	.byte	0x70, 0x00, 0xf2, 0xf1
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x6d, 0x61, 0x78, 0x00
	.byte	0x0e, 0x00, 0x01, 0x16
	.byte	0x05, 0x10, 0x00, 0x00
	.byte	0x02, 0x10, 0x00, 0x00
	.byte	0x6d, 0x69, 0x6e, 0x00

