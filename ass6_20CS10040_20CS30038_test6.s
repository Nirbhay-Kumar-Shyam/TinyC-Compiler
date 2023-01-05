	.file	"ass6_20CS10040_20CS30038_test6.c"

#	Allocation of function variables and temporaries on the stack:

#	bubbleSort
#	i: -8
#	j: -12
#	n: -4
#	t10: -16
#	t11: -20
#	t12: -24
#	t13: -28
#	t14: -32
#	t15: -36
#	t16: -40
#	t17: -44
#	t18: -48
#	t19: -52
#	t20: -60
#	t21: -64
#	t22: -68
#	t23: -72
#	t24: -80
#	t4: -84
#	t5: -88
#	t6: -92
#	t7: -96
#	t8: -100
#	t9: -104
#	main
#	arr: -400
#	err: -404
#	i: -408
#	n: -412
#	printStr: -416
#	readInt: -420
#	t35: -424
#	t36: -428
#	t37: -436
#	t38: -440
#	t39: -448
#	t40: -452
#	t41: -460
#	t42: -464
#	t43: -468
#	t44: -472
#	t45: -476
#	t46: -484
#	t47: -488
#	t49: -496
#	t50: -500
#	t52: -504
#	printArray
#	i: -8
#	printInt: -12
#	printStr: -16
#	size: -4
#	t26: -20
#	t27: -24
#	t28: -28
#	t29: -32
#	t30: -36
#	t31: -44
#	t32: -48
#	t33: -56
#	t34: -60
#	swap
#	t0: -20
#	t1: -24
#	t2: -28
#	t3: -32
#	temp: -36
#	xp: -8
#	yp: -16

	.section	.rodata
.LC0:
	.string	" "
.LC1:
	.string	"\n"
.LC2:
	.string	"Number of numbers: \n"
.LC3:
	.string	"Enter the numbers (separated by newlines): \n"
.LC4:
	.string	"The sorted elements are:\n"
	.text
	.globl  swap
	.type   swap, @function
swap:
.LFB0:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $36, %rsp
	movq    %rdi, -8(%rbp)
	movq    %rsi, -16(%rbp)
	movq    -8(%rbp), %rax
	movl    (%rax), %eax
	movl    %eax, -20(%rbp)
	movl    -20(%rbp), %eax
	movl    %eax, -36(%rbp)
	movq    -8(%rbp), %rax
	movl    (%rax), %eax
	movl    %eax, -24(%rbp)
	movq    -16(%rbp), %rax
	movl    (%rax), %eax
	movl    %eax, -28(%rbp)
	movl    -28(%rbp), %eax
	movq    -24(%rbp), %rbx
	movl    %eax, (%rbx)
	movq    -16(%rbp), %rax
	movl    (%rax), %eax
	movl    %eax, -32(%rbp)
	movl    -36(%rbp), %eax
	movq    -32(%rbp), %rbx
	movl    %eax, (%rbx)
.LFE0:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   swap, .-swap
	.text
	.globl  bubbleSort
	.type   bubbleSort, @function
bubbleSort:
.LFB1:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $104, %rsp
	movq    %rdi, arr
	movl    %esi, -4(%rbp)
	movl    $0, -84(%rbp)
	movl    -84(%rbp), %eax
	movl    %eax, -8(%rbp)
.L5:
	movl    $1, -88(%rbp)
	movl    -4(%rbp), %eax
	subl    -88(%rbp), %eax
	movl    %eax, -92(%rbp)
	movl    -92(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jl      .L4
	jmp     .LFE1
.L7:
	movl    -8(%rbp), %eax
	movl    %eax, -96(%rbp)
	incl    -8(%rbp)
	jmp     .L5
.L4:
	movl    $0, -100(%rbp)
	movl    -100(%rbp), %eax
	movl    %eax, -12(%rbp)
.L8:
	movl    -4(%rbp), %eax
	subl    -8(%rbp), %eax
	movl    %eax, -104(%rbp)
	movl    $1, -16(%rbp)
	movl    -104(%rbp), %eax
	subl    -16(%rbp), %eax
	movl    %eax, -20(%rbp)
	movl    -20(%rbp), %eax
	cmpl    %eax, -12(%rbp)
	jl      .L6
	jmp     .L7
.L10:
	movl    -12(%rbp), %eax
	movl    %eax, -24(%rbp)
	incl    -12(%rbp)
	jmp     .L8
.L6:
	movl    -12(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -28(%rbp)
	movl    -28(%rbp), %eax
	cltq    
	addq    arr, %rax
	movl    (%rax), %eax
	movl    %eax, -32(%rbp)
	movl    $1, -36(%rbp)
	movl    -12(%rbp), %eax
	addl    -36(%rbp), %eax
	movl    %eax, -40(%rbp)
	movl    -40(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -44(%rbp)
	movl    -44(%rbp), %eax
	cltq    
	addq    arr, %rax
	movl    (%rax), %eax
	movl    %eax, -48(%rbp)
	movl    -48(%rbp), %eax
	cmpl    %eax, -32(%rbp)
	jg      .L9
	jmp     .L10
.L9:
	movl    -12(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -52(%rbp)
	leaq    arr, %rax
	movq    %rax, -60(%rbp)
	movl    $1, -64(%rbp)
	movl    -12(%rbp), %eax
	addl    -64(%rbp), %eax
	movl    %eax, -68(%rbp)
	movl    -68(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -72(%rbp)
	leaq    arr, %rax
	movq    %rax, -80(%rbp)
	movq    -80(%rbp), %rsi
	movq    -60(%rbp), %rdi
	call    swap
	jmp     .L10
	jmp     .L10
	jmp     .L7
.LFE1:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   bubbleSort, .-bubbleSort
	.text
	.globl  printArray
	.type   printArray, @function
printArray:
.LFB2:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $60, %rsp
	movq    %rdi, arr
	movl    %esi, -4(%rbp)
	movl    $0, -20(%rbp)
	movl    -20(%rbp), %eax
	movl    %eax, -8(%rbp)
.L13:
	movl    -4(%rbp), %eax
	cmpl    %eax, -8(%rbp)
	jl      .L11
	jmp     .L12
.L14:
	movl    -8(%rbp), %eax
	movl    %eax, -24(%rbp)
	incl    -8(%rbp)
	jmp     .L13
.L11:
	movl    -8(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -28(%rbp)
	movl    -28(%rbp), %eax
	cltq    
	addq    arr, %rax
	movl    (%rax), %eax
	movl    %eax, -32(%rbp)
	movl    -32(%rbp), %edi
	call    printInt
	movl    %eax, -36(%rbp)
	movq    $.LC0, -44(%rbp)
	movq    -44(%rbp), %rdi
	call    printStr
	movl    %eax, -48(%rbp)
	jmp     .L14
.L12:
	movq    $.LC1, -56(%rbp)
	movq    -56(%rbp), %rdi
	call    printStr
	movl    %eax, -60(%rbp)
.LFE2:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   printArray, .-printArray
	.text
	.globl  main
	.type   main, @function
main:
.LFB3:
	.cfi_startproc
	pushq   %rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq    %rsp, %rbp
	.cfi_def_cfa_register 6
	subq    $504, %rsp
	movl    $100, -424(%rbp)
	movl    $1, -428(%rbp)
	movl    -428(%rbp), %eax
	movl    %eax, -404(%rbp)
	movq    $.LC2, -436(%rbp)
	movq    -436(%rbp), %rdi
	call    printStr
	movl    %eax, -440(%rbp)
	leaq    -404(%rbp), %rax
	movq    %rax, -448(%rbp)
	movq    -448(%rbp), %rdi
	call    readInt
	movl    %eax, -452(%rbp)
	movl    -452(%rbp), %eax
	movl    %eax, -412(%rbp)
	movq    $.LC3, -460(%rbp)
	movq    -460(%rbp), %rdi
	call    printStr
	movl    %eax, -464(%rbp)
	movl    $0, -468(%rbp)
	movl    -468(%rbp), %eax
	movl    %eax, -408(%rbp)
.L17:
	movl    -412(%rbp), %eax
	cmpl    %eax, -408(%rbp)
	jl      .L15
	jmp     .L16
.L18:
	movl    -408(%rbp), %eax
	movl    %eax, -472(%rbp)
	incl    -408(%rbp)
	jmp     .L17
.L15:
	movl    -408(%rbp), %eax
	imull   $4, %eax
	movl    %eax, -476(%rbp)
	leaq    -404(%rbp), %rax
	movq    %rax, -484(%rbp)
	movq    -484(%rbp), %rdi
	call    readInt
	movl    %eax, -488(%rbp)
	movl    -476(%rbp), %eax
	cltq    
	movl    -488(%rbp), %ebx
	movl    %ebx, -400(%rbp, %rax, 1)
	jmp     .L18
.L16:
	movl    -412(%rbp), %esi
	leaq    -400(%rbp), %rdi
	call    bubbleSort
	movq    $.LC4, -496(%rbp)
	movq    -496(%rbp), %rdi
	call    printStr
	movl    %eax, -500(%rbp)
	movl    -412(%rbp), %esi
	leaq    -400(%rbp), %rdi
	call    printArray
	movl    $0, -504(%rbp)
	movl    -504(%rbp), %eax
.LFE3:
	movq    %rbp, %rsp
	popq    %rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
	.size   main, .-main
