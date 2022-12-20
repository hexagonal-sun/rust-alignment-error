	.text
	.file	"alignment_error.66cc2907-cgu.0"
	.hidden	_ZN15alignment_error2go17he2ac39634e571633E # -- Begin function _ZN15alignment_error2go17he2ac39634e571633E
	.globl	_ZN15alignment_error2go17he2ac39634e571633E
	.type	_ZN15alignment_error2go17he2ac39634e571633E,@function
_ZN15alignment_error2go17he2ac39634e571633E: # @_ZN15alignment_error2go17he2ac39634e571633E
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %start
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$92, %esp
	.cfi_def_cfa_offset 112
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	calll	.L0$pb
	.cfi_adjust_cfa_offset 4
.L0$pb:
	popl	%ebx
	.cfi_adjust_cfa_offset -4
.Ltmp19:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp19-.L0$pb), %ebx
	movl	$4, 4(%esp)
	movl	$12, (%esp)
	calll	__rust_alloc@PLT
	testl	%eax, %eax
	je	.LBB0_1
# %bb.5:                                # %bb3
	andl	$0, 4(%eax)
	xorl	%ecx, %ecx
	incl	%ecx
	leal	56(%esp), %ebp
	movl	%ecx, (%ebp)
	movl	%eax, 4(%ebp)
	movl	%ecx, 8(%ebp)
	leal	32(%esp), %eax
	andl	$0, (%eax)
	pushl	$4
	.cfi_adjust_cfa_offset 4
	popl	%esi
	.cfi_adjust_cfa_offset -4
	movl	%esi, 4(%eax)
	andl	$0, 8(%eax)
	andl	$0, 12(%eax)
	movl	%esi, 16(%eax)
	andl	$0, 20(%eax)
	leal	72(%esp), %eax
	orl	%eax, %esi
.LBB0_6:                                # %bb1.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	4(%ebp), %edi
	testl	%edi, %edi
	je	.LBB0_8
# %bb.7:                                # %bb2.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	8(%ebp), %edx
	testl	%edx, %edx
	je	.LBB0_8
# %bb.15:                               # %bb9.i
                                        #   in Loop: Header=BB0_6 Depth=1
.Ltmp0:
	leal	alloc207@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	%edi, %ecx
	calll	_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE
.Ltmp1:
# %bb.16:                               # %.noexc
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, 8(%esp)
	movl	%eax, 16(%esp)
	movl	%edi, 12(%esp)
	movl	%edx, 20(%esp)
	leal	8(%esp), %ecx
	calll	_ZN15alignment_error5Frame5child17hf0f92e27ef0f5c68E
	movl	%eax, %edi
	movsd	8(%esp), %xmm0                  # xmm0 = mem[0],zero
	movsd	16(%esp), %xmm1                 # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%esi)
	movsd	%xmm0, (%esi)
	movl	%ebp, 72(%esp)
.Ltmp2:
	leal	32(%esp), %ecx
	leal	72(%esp), %edx
	calll	_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h710adfaf367ac688E
.Ltmp3:
# %bb.17:                               # %.noexc3
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%edi, %ebp
	jmp	.LBB0_6
.LBB0_8:                                # %bb12.preheader.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	36(%esp), %eax
	movl	40(%esp), %ecx
	imull	$20, %ecx, %edx
	leal	-4(%eax,%edx), %eax
.LBB0_9:                                # %bb12.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ecx
	cmpl	$-1, %ecx
	je	.LBB0_24
# %bb.10:                               # %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$3pop17h5af81e503d0364c4E.exit.i"
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	%ecx, 40(%esp)
	movl	-12(%eax), %ebp
	cmpl	$3, %ebp
	je	.LBB0_24
# %bb.11:                               # %bb14.i
                                        #   in Loop: Header=BB0_9 Depth=2
	testl	%ebp, %ebp
	je	.LBB0_19
# %bb.12:                               # %bb14.i
                                        #   in Loop: Header=BB0_9 Depth=2
	movl	-16(%eax), %edi
	movl	(%eax), %edx
	cmpl	$1, %ebp
	jne	.LBB0_18
# %bb.13:                               # %bb4.i.i
                                        #   in Loop: Header=BB0_9 Depth=2
	testl	%edx, %edx
	je	.LBB0_19
	jmp	.LBB0_14
.LBB0_18:                               # %bb1.i10.i
                                        #   in Loop: Header=BB0_9 Depth=2
	testl	%edx, %edx
	jne	.LBB0_20
.LBB0_19:                               # %bb12.i.backedge
                                        #   in Loop: Header=BB0_9 Depth=2
	addl	$-20, %eax
	jmp	.LBB0_9
.LBB0_14:                               # %bb8.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-4(%eax), %ecx
.Ltmp6:
	leal	alloc215@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)                  # 4-byte Spill
	calll	_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE
.Ltmp7:
	jmp	.LBB0_21
.LBB0_20:                               # %bb14.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-4(%eax), %ecx
.Ltmp4:
	leal	alloc211@GOTOFF(%ebx), %eax
	movl	%eax, (%esp)
	movl	%ecx, 28(%esp)                  # 4-byte Spill
	calll	_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE
.Ltmp5:
.LBB0_21:                               # %bb18.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	%ebp, 8(%esp)
	movl	28(%esp), %ecx                  # 4-byte Reload
	movl	%ecx, 12(%esp)
	movl	%eax, 16(%esp)
	movl	%edx, 20(%esp)
	leal	8(%esp), %ecx
	calll	_ZN15alignment_error5Frame5child17hf0f92e27ef0f5c68E
	movl	%eax, %ebp
	movsd	8(%esp), %xmm0                  # xmm0 = mem[0],zero
	movsd	16(%esp), %xmm1                 # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%esi)
	movsd	%xmm0, (%esi)
	movl	%edi, 72(%esp)
.Ltmp8:
	leal	32(%esp), %ecx
	leal	72(%esp), %edx
	calll	_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h710adfaf367ac688E
.Ltmp9:
	jmp	.LBB0_6
.LBB0_24:                               # %bb5
.Ltmp13:
	leal	32(%esp), %ecx
	calll	_ZN4core3ptr49drop_in_place$LT$alignment_error..HeapVisitor$GT$17hbeb70bf40ba6a666E
.Ltmp14:
# %bb.25:                               # %bb6
	leal	56(%esp), %ecx
	calll	_ZN4core3ptr41drop_in_place$LT$alignment_error..Ast$GT$17hf255ad4358a1332aE
	addl	$92, %esp
	.cfi_def_cfa_offset 20
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.LBB0_1:                                # %bb3.i
	.cfi_def_cfa_offset 112
	movl	$4, 4(%esp)
	movl	$12, (%esp)
	calll	_ZN5alloc5alloc18handle_alloc_error17h1628e96debb9b245E@PLT
.LBB0_2:                                # %cleanup
.Ltmp15:
	movl	%eax, %esi
	jmp	.LBB0_3
.LBB0_22:                               # %cleanup1.body
.Ltmp10:
	movl	%eax, %esi
.Ltmp11:
	leal	32(%esp), %ecx
	calll	_ZN4core3ptr49drop_in_place$LT$alignment_error..HeapVisitor$GT$17hbeb70bf40ba6a666E
.Ltmp12:
.LBB0_3:                                # %bb9
.Ltmp16:
	leal	56(%esp), %ecx
	calll	_ZN4core3ptr41drop_in_place$LT$alignment_error..Ast$GT$17hf255ad4358a1332aE
.Ltmp17:
# %bb.4:                                # %bb10
	movl	%esi, (%esp)
	calll	_Unwind_Resume@PLT
.LBB0_23:                               # %abort
.Ltmp18:
	calll	_ZN4core9panicking15panic_no_unwind17h5c3b9befaeaed6faE@PLT
.Lfunc_end0:
	.size	_ZN15alignment_error2go17he2ac39634e571633E, .Lfunc_end0-_ZN15alignment_error2go17he2ac39634e571633E
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp11-.Ltmp14                #   Call between .Ltmp14 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp17-.Ltmp11                #   Call between .Ltmp11 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.hidden	alloc207
	.hidden	alloc211
	.hidden	alloc215
	.hidden	_ZN4core3ptr41drop_in_place$LT$alignment_error..Ast$GT$17hf255ad4358a1332aE
	.hidden	_ZN4core3ptr49drop_in_place$LT$alignment_error..HeapVisitor$GT$17hbeb70bf40ba6a666E
	.hidden	_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17he478645d7f2580aaE
	.hidden	_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h710adfaf367ac688E
	.hidden	_ZN15alignment_error5Frame5child17hf0f92e27ef0f5c68E
	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	2
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 4
DW.ref.rust_eh_personality:
	.long	rust_eh_personality
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Unwind_Resume
