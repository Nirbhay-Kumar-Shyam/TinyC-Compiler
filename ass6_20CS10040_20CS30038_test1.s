	.file	"ass6_20CS10040_20CS30038_test1.c"

#	Allocation of function variables and temporaries on the stack:

#	findlcm
#	ans: -8
#	i: -12
#	n: -4
#	t10: -16
#	t11: -20
#	t12: -24
#	t13: -28
#	t14: -32
#	t3: -36
#	t4: -40
#	t5: -44
#	t6: -48
#	t7: -52
#	t8: -56
#	t9: -60
#	gcd
#	a: -4
#	b: -8
#	t0: -12
#	t1: -16
#	t2: -20
#	main
#	a: -400
#	c: -404
#	err: -408
#	i: -412
#	l: -416
#	m: -420
#	n: -424
#	printInt: -428
#	printStr: -432
#	readInt: -436
#	t15: -440
#	t16: -444
#	t17: -452
#	t18: -456
#	t19: -464
#	t20: -468
#	t21: -476
#	t22: -480
#	t23: -488
#	t24: -492
#	t25: -496
#	t26: -500
#	t27: -504
#	t28: -512
#	t29: -516
#	t30: -520
#	t31: -528
#	t32: -532
#	t33: -536
#	t34: -544
#	t35: -548
#	t36: -552
#	u: -556

	.section	.rodata
.LC0:
	.string	"This Program implements LCM\n"
.LC1:
	.string	"Enter the size of an array(<=100): \n"
.LC2:
	.string	"Enter the elements of the array one by one i.e. single element in a line: \n"
.LC3:
	.string	"lcm of given no is: "
.LC4:
	.string	"\n"
	.text
	.globl  gcd
	.type   gcd, @function
gcd:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $20, %rsp
	movl    %edi, -4(%rbp)
	movl    %esi, -8(%rbp)
	movl    $0, -12(%rbp)
	movl    -12(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	je      .L3
	jmp     .L4
.L3:
	movl    -4(%rbp), %eax
	jmp     .LFE0
	jmp     .L4
.L4:
	movl    -4(%rbp), %eax
	cdq     
	idivl   -8(%rbp)
	movl    %edx, -16(%rbp)
	movl    -16(%rbp), %esi
	movl    -8(%rbp), %edi
	call    gcd
	movl    %eax, -20(%rbp)
	movl    -20(%rbp), %eax
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   gcd, .-gcd
	.text
	.globl  findlcm
	.type   findlcm, @function
findlcm:
.LFB1:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $60, %rsp
	movq    %rdi, arr
	movl    %esi, -4(%rbp)
	movl    $0, -36(%rbp)
	movl    -36(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -40(%rbp)
	movl    -40(%rbp), %eax
	cltq    
	addq    arr, %rax
	movl    (%rax), %eax
	movl    %eax, -44(%rbp)
	movl    -44(%rbp), %eax
	movl    %eax, -8(%rbp)
	movl    $1, -48(%rbp)
	movl    -48(%rbp), %eax
	movl    %eax, -12(%rbp)
.L7:
	movl    -4(%rbp), %eax
	cmpl    %eax, -12(%rbp)
	jl      .L5
	jmp     .L6
.L8:
	movl    -12(%rbp), %eax
	movl    %eax, -52(%rbp)
	incl    -12(%rbp)
	jmp     .L7
.L5:
	movl    -12(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -56(%rbp)
	movl    -56(%rbp), %eax
	cltq    
	addq    arr, %rax
	movl    (%rax), %eax
	movl    %eax, -60(%rbp)
	movl    -60(%rbp), %eax
	imull   -8(%rbp), %eax
	movl    %eax, -16(%rbp)
	movl    -12(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -20(%rbp)
	movl    -20(%rbp), %eax
	cltq    
	addq    arr, %rax
	movl    (%rax), %eax
	movl    %eax, -24(%rbp)
	movl    -8(%rbp), %esi
	movl    -24(%rbp), %edi
	call    gcd
	movl    %eax, -28(%rbp)
	movl    -16(%rbp), %eax
	cdq     
	idivl   -28(%rbp)
	movl    %eax, -32(%rbp)
	movl    -32(%rbp), %eax
	movl    %eax, -8(%rbp)
	jmp     .L8
.L6:
	movl    -8(%rbp), %eax
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   findlcm, .-findlcm
	.text
	.globl  main
	.type   main, @function
main:
.LFB2:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $556, %rsp
	movl    $100, -440(%rbp)
	movl    $1, -444(%rbp)
	movl    -444(%rbp), %eax
	movl    %eax, -408(%rbp)
	movq    $.LC0, -452(%rbp)
	movq    -452(%rbp), %rdi
	call    printStr
	movl    %eax, -456(%rbp)
	movq    $.LC1, -464(%rbp)
	movq    -464(%rbp), %rdi
	call    printStr
	movl    %eax, -468(%rbp)
	leaq    -408(%rbp), %rax
	movq    %rax, -476(%rbp)
	movq    -476(%rbp), %rdi
	call    readInt
	movl    %eax, -480(%rbp)
	movl    -480(%rbp), %eax
	movl    %eax, -424(%rbp)
	movq    $.LC2, -488(%rbp)
	movq    -488(%rbp), %rdi
	call    printStr
	movl    %eax, -492(%rbp)
	movl    $0, -496(%rbp)
	movl    -496(%rbp), %eax
	movl    %eax, -412(%rbp)
.L11:
	movl    -424(%rbp), %eax
	cmpl    %eax, -412(%rbp)
	jl      .L9
	jmp     .L10
.L12:
	movl    -412(%rbp), %eax
	movl    %eax, -500(%rbp)
	incl    -412(%rbp)
	jmp     .L11
.L9:
	movl    -412(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -504(%rbp)
	leaq    -408(%rbp), %rax
	movq    %rax, -512(%rbp)
	movq    -512(%rbp), %rdi
	call    readInt
	movl    %eax, -516(%rbp)
	movl    -504(%rbp), %eax
	cltq    
	movl    -516(%rbp), %ebx
	movl    %ebx, -400(%rbp, %rax, 1)
	jmp     .L12
.L10:
	movl    -424(%rbp), %esi
	leaq    -400(%rbp), %rdi
	call    findlcm
	movl    %eax, -520(%rbp)
	movl    -520(%rbp), %eax
	movl    %eax, -416(%rbp)
	movq    $.LC3, -528(%rbp)
	movq    -528(%rbp), %rdi
	call    printStr
	movl    %eax, -532(%rbp)
	movl    -416(%rbp), %edi
	call    printInt
	movl    %eax, -536(%rbp)
	movq    $.LC4, -544(%rbp)
	movq    -544(%rbp), %rdi
	call    printStr
	movl    %eax, -548(%rbp)
	movl    $0, -552(%rbp)
	movl    -552(%rbp), %eax
.LFE2:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
