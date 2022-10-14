	.file	"umalt.c"
	.text
	.globl	umalt_ok_asm
	.type	umalt_ok_asm, @function
umalt_ok_asm:
.LFB0:
	.cfi_startproc
	endbr64
	movq	%rdx, %rcx	# Save copy of dest
	movq	%rsi, %rax	# Copy y to %rax
	mulq	%rdi		# Unsigned multiply by x
	movq	%rax, (%rcx)# Store product at dest
	setae	%al			# Set low-order byte
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	umalt_ok_asm, .-umalt_ok_asm
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
