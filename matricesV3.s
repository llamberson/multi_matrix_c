	.file	"matricesV3.c"
	.section	.rodata
.LC0:
	.string	"%d\t"
	.text
	.globl	displayResults
	.type	displayResults, @function
displayResults:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	cltq
	salq	$6, %rax
	addq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %edx
	movl	$.LC0, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L3:
	cmpl	$15, -4(%rbp)
	jle	.L4
	movl	$10, %edi
	call	putchar
	addl	$1, -8(%rbp)
.L2:
	cmpl	$15, -8(%rbp)
	jle	.L5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	displayResults, .-displayResults
	.section	.rodata
.LC1:
	.string	"\nTransposed Matrix2:"
.LC2:
	.string	"\nTransposed "
	.text
	.globl	transpose
	.type	transpose, @function
transpose:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%rdi, -1048(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L7
.L10:
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	cltq
	salq	$6, %rax
	addq	-1048(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rdx
	movl	%eax, -1040(%rbp,%rdx,4)
	addl	$1, -4(%rbp)
.L8:
	cmpl	$15, -4(%rbp)
	jle	.L9
	addl	$1, -8(%rbp)
.L7:
	cmpl	$15, -8(%rbp)
	jle	.L10
	movl	$.LC1, %edi
	call	puts
	movl	$0, -8(%rbp)
	jmp	.L11
.L14:
	movl	$0, -4(%rbp)
	jmp	.L12
.L13:
	movl	-4(%rbp), %eax
	cltq
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	-1040(%rbp,%rax,4), %edx
	movl	$.LC0, %eax
	movl	%edx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L12:
	cmpl	$15, -4(%rbp)
	jle	.L13
	movl	$10, %edi
	call	putchar
	addl	$1, -8(%rbp)
.L11:
	cmpl	$15, -8(%rbp)
	jle	.L14
	movl	$.LC2, %eax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf
	leaq	-1040(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	transpose, .-transpose
	.section	.rodata
.LC3:
	.string	"\nProduct of matrices:"
	.text
	.globl	multiplyMatrices
	.type	multiplyMatrices, @function
multiplyMatrices:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1056, %rsp
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L16
.L21:
	movl	$0, -12(%rbp)
	jmp	.L17
.L20:
	movl	$0, -8(%rbp)
	jmp	.L18
.L19:
	movl	-16(%rbp), %eax
	cltq
	salq	$6, %rax
	addq	-1048(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movl	-8(%rbp), %eax
	cltq
	salq	$6, %rax
	addq	-1056(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	imull	%ecx, %eax
	addl	%eax, -4(%rbp)
	addl	$1, -8(%rbp)
.L18:
	cmpl	$15, -8(%rbp)
	jle	.L19
	movl	-12(%rbp), %eax
	cltq
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, -1040(%rbp,%rdx,4)
	movl	$0, -4(%rbp)
	addl	$1, -12(%rbp)
.L17:
	cmpl	$15, -12(%rbp)
	jle	.L20
	addl	$1, -16(%rbp)
.L16:
	cmpl	$15, -16(%rbp)
	jle	.L21
	movl	$.LC3, %edi
	call	puts
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	displayResults
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	multiplyMatrices, .-multiplyMatrices
	.section	.rodata
.LC4:
	.string	"\nMatrix1:"
.LC5:
	.string	"\nMatrix2:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$3096, %rsp
	movq	stdout(%rip), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	.cfi_offset 3, -24
	call	setvbuf
	movl	$0, -32(%rbp)
	jmp	.L23
.L26:
	movl	$0, -28(%rbp)
	jmp	.L24
.L25:
	call	rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -24(%rbp)
	call	rand
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	-24(%rbp), %eax
	movl	%eax, -3104(%rbp,%rdx,4)
	movl	-28(%rbp), %eax
	cltq
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	movl	%eax, -2080(%rbp,%rdx,4)
	addl	$1, -28(%rbp)
.L24:
	cmpl	$15, -28(%rbp)
	jle	.L25
	addl	$1, -32(%rbp)
.L23:
	cmpl	$15, -32(%rbp)
	jle	.L26
	movl	$.LC4, %edi
	call	puts
	leaq	-3104(%rbp), %rax
	movq	%rax, %rdi
	call	displayResults
	movl	$.LC5, %edi
	call	puts
	leaq	-2080(%rbp), %rax
	movq	%rax, %rdi
	call	displayResults
	leaq	-2080(%rbp), %rax
	movq	%rax, %rdi
	call	transpose
	cltq
	movq	%rax, %rdx
	leaq	-1056(%rbp), %rax
	movl	$1024, %r8d
	movq	%rax, %rcx
	andl	$1, %ecx
	testq	%rcx, %rcx
	je	.L27
	movzbl	(%rdx), %ecx
	movb	%cl, (%rax)
	addq	$1, %rax
	addq	$1, %rdx
	subl	$1, %r8d
.L27:
	movq	%rax, %rcx
	andl	$2, %ecx
	testq	%rcx, %rcx
	je	.L28
	movzwl	(%rdx), %ecx
	movw	%cx, (%rax)
	addq	$2, %rax
	addq	$2, %rdx
	subl	$2, %r8d
.L28:
	movq	%rax, %rcx
	andl	$4, %ecx
	testq	%rcx, %rcx
	je	.L29
	movl	(%rdx), %ecx
	movl	%ecx, (%rax)
	addq	$4, %rax
	addq	$4, %rdx
	subl	$4, %r8d
.L29:
	movl	%r8d, %ecx
	shrl	$3, %ecx
	movl	%ecx, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movl	$0, %ecx
	movl	%r8d, %esi
	andl	$4, %esi
	testl	%esi, %esi
	je	.L30
	movl	(%rdx), %esi
	movl	%esi, (%rax)
	addq	$4, %rcx
.L30:
	movl	%r8d, %esi
	andl	$2, %esi
	testl	%esi, %esi
	je	.L31
	movzwl	(%rdx,%rcx), %esi
	movw	%si, (%rax,%rcx)
	addq	$2, %rcx
.L31:
	movl	%r8d, %esi
	andl	$1, %esi
	testl	%esi, %esi
	je	.L32
	movzbl	(%rdx,%rcx), %edx
	movb	%dl, (%rax,%rcx)
.L32:
	leaq	-1056(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	multiplyMatrices
	leaq	-2080(%rbp), %rdx
	leaq	-3104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	multiplyMatrices
	movl	$0, %eax
	addq	$3096, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
