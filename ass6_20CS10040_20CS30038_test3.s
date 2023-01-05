	.file	"ass6_20CS10040_20CS30038_test3.c"

#	Allocation of function variables and temporaries on the stack:

#	binarySearch
#	c: -20
#	l: -4
#	m: -8
#	mid: -24
#	n: -12
#	t: -28
#	t0: -32
#	t1: -36
#	t10: -40
#	t11: -44
#	t12: -48
#	t13: -52
#	t2: -56
#	t3: -60
#	t4: -64
#	t5: -68
#	t6: -72
#	t7: -76
#	t8: -80
#	t9: -84
#	u: -16
#	main
#	a: -40
#	c: -44
#	err: -48
#	i: -52
#	l: -56
#	m: -60
#	n: -64
#	printInt: -68
#	printStr: -72
#	readInt: -76
#	t14: -80
#	t15: -84
#	t16: -92
#	t17: -96
#	t18: -104
#	t19: -108
#	t20: -116
#	t21: -120
#	t22: -124
#	t23: -128
#	t24: -132
#	t25: -140
#	t26: -144
#	t27: -152
#	t28: -156
#	t29: -164
#	t30: -168
#	t31: -172
#	t32: -176
#	t33: -180
#	t34: -184
#	t35: -188
#	t36: -192
#	t37: -196
#	t38: -204
#	t39: -208
#	t40: -216
#	t41: -220
#	t42: -224
#	t43: -228
#	t44: -232
#	t45: -240
#	t46: -244
#	t47: -248
#	u: -252

	.section	.rodata
.LC0:
	.string	"Size of array: \n"
.LC1:
	.string	"Enter the elements of the array in sorted order (separated by newlines): \n"
.LC2:
	.string	"Search target: \n"
.LC3:
	.string	"Not found.\n"
.LC4:
	.string	"Found at position: \n"
.LC5:
	.string	"\n"
	.text
	.globl  binarySearch
	.type   binarySearch, @function
binarySearch:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $84, %rsp
	movq    %rdi, a
	movl    %esi, -12(%rbp)
	movl    %edx, -8(%rbp)
	movl    %ecx, -4(%rbp)
	movl    %, -16(%rbp)
	movl    $0, -32(%rbp)
	movl    -32(%rbp), %eax
	movl    %eax, -20(%rbp)
	movl    -16(%rbp), %eax
	cmpl    %eax, -4(%rbp)
	jg      .L2
	jmp     .L3
.L2:
	movl    $1, -36(%rbp)
	movl    -36(%rbp), %eax
	negl    %eax
	movl    %eax, -56(%rbp)
	movl    -56(%rbp), %eax
	jmp     .LFE0
	jmp     .L3
.L3:
	movl    -4(%rbp), %eax
	addl    -16(%rbp), %eax
	movl    %eax, -60(%rbp)
	movl    $2, -64(%rbp)
	movl    -60(%rbp), %eax
	cdq     
	idivl   -64(%rbp)
	movl    %eax, -68(%rbp)
	movl    -68(%rbp), %eax
	movl    %eax, -24(%rbp)
	movl    -24(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -72(%rbp)
	movl    -72(%rbp), %eax
	cltq    
	addq    a, %rax
	movl    (%rax), %eax
	movl    %eax, -76(%rbp)
	movl    -76(%rbp), %eax
	movl    %eax, -28(%rbp)
	movl    -28(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jl      .L4
	jmp     .L5
.L4:
	movl    $1, -80(%rbp)
	movl    -24(%rbp), %eax
	subl    -80(%rbp), %eax
	movl    %eax, -84(%rbp)
	movl    -84(%rbp), %
	movl    -4(%rbp), %ecx
	movl    -8(%rbp), %edx
	movl    -12(%rbp), %esi
	leaq    a, %rdi
	call    binarySearch
	movl    %eax, -40(%rbp)
	movl    -40(%rbp), %eax
	jmp     .LFE0
	jmp     .LFE0
.L5:
	movl    -28(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jg      .L6
	jmp     .L7
.L6:
	movl    $1, -44(%rbp)
	movl    -24(%rbp), %eax
	addl    -44(%rbp), %eax
	movl    %eax, -48(%rbp)
	movl    -16(%rbp), %
	movl    -48(%rbp), %ecx
	movl    -8(%rbp), %edx
	movl    -12(%rbp), %esi
	leaq    a, %rdi
	call    binarySearch
	movl    %eax, -52(%rbp)
	movl    -52(%rbp), %eax
	jmp     .LFE0
	jmp     .LFE0
.L7:
	movl    -24(%rbp), %eax
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   binarySearch, .-binarySearch
	.text
	.globl  main
	.type   main, @function
main:
.LFB1:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $252, %rsp
	movl    $10, -80(%rbp)
	movl    $1, -84(%rbp)
	movl    -84(%rbp), %eax
	movl    %eax, -48(%rbp)
	movq    $.LC0, -92(%rbp)
	movq    -92(%rbp), %rdi
	call    printStr
	movl    %eax, -96(%rbp)
	leaq    -48(%rbp), %rax
	movq    %rax, -104(%rbp)
	movq    -104(%rbp), %rdi
	call    readInt
	movl    %eax, -108(%rbp)
	movl    -108(%rbp), %eax
	movl    %eax, -64(%rbp)
	movq    $.LC1, -116(%rbp)
	movq    -116(%rbp), %rdi
	call    printStr
	movl    %eax, -120(%rbp)
	movl    $0, -124(%rbp)
	movl    -124(%rbp), %eax
	movl    %eax, -52(%rbp)
.L10:
	movl    -64(%rbp), %eax
	cmpl    %eax, -52(%rbp)
	jl      .L8
	jmp     .L9
.L11:
	movl    -52(%rbp), %eax
	movl    %eax, -128(%rbp)
	incl    -52(%rbp)
	jmp     .L10
.L8:
	movl    -52(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -132(%rbp)
	leaq    -48(%rbp), %rax
	movq    %rax, -140(%rbp)
	movq    -140(%rbp), %rdi
	call    readInt
	movl    %eax, -144(%rbp)
	movl    -132(%rbp), %eax
	cltq    
	movl    -144(%rbp), %ebx
	movl    %ebx, -40(%rbp, %rax, 1)
	jmp     .L11
.L9:
	movq    $.LC2, -152(%rbp)
	movq    -152(%rbp), %rdi
	call    printStr
	movl    %eax, -156(%rbp)
	leaq    -48(%rbp), %rax
	movq    %rax, -164(%rbp)
	movq    -164(%rbp), %rdi
	call    readInt
	movl    %eax, -168(%rbp)
	movl    -168(%rbp), %eax
	movl    %eax, -60(%rbp)
	movl    $0, -172(%rbp)
	movl    -172(%rbp), %eax
	movl    %eax, -56(%rbp)
	movl    $1, -176(%rbp)
	movl    -64(%rbp), %eax
	subl    -176(%rbp), %eax
	movl    %eax, -180(%rbp)
	movl    -180(%rbp), %eax
	movl    %eax, -252(%rbp)
	movl    $0, -184(%rbp)
	movl    -184(%rbp), %eax
	movl    %eax, -44(%rbp)
	movl    -252(%rbp), %
	movl    -56(%rbp), %ecx
	movl    -60(%rbp), %edx
	movl    -64(%rbp), %esi
	leaq    -40(%rbp), %rdi
	call    binarySearch
	movl    %eax, -188(%rbp)
	movl    -188(%rbp), %eax
	movl    %eax, -44(%rbp)
	movl    $1, -192(%rbp)
	movl    -192(%rbp), %eax
	negl    %eax
	movl    %eax, -196(%rbp)
	movl    -196(%rbp), %eax
	cmpl    %eax, -44(%rbp)
	je      .L12
	jmp     .L13
.L12:
	movq    $.LC3, -204(%rbp)
	movq    -204(%rbp), %rdi
	call    printStr
	movl    %eax, -208(%rbp)
	jmp     .L14
.L13:
	movq    $.LC4, -216(%rbp)
	movq    -216(%rbp), %rdi
	call    printStr
	movl    %eax, -220(%rbp)
	movl    $1, -224(%rbp)
	movl    -44(%rbp), %eax
	addl    -224(%rbp), %eax
	movl    %eax, -228(%rbp)
	movl    -228(%rbp), %eax
	movl    %eax, -44(%rbp)
	movl    -44(%rbp), %edi
	call    printInt
	movl    %eax, -232(%rbp)
	movq    $.LC5, -240(%rbp)
	movq    -240(%rbp), %rdi
	call    printStr
	movl    %eax, -244(%rbp)
.L14:
	movl    $0, -248(%rbp)
	movl    -248(%rbp), %eax
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
