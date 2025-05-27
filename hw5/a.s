	.file	"a.cpp"
	.text
	.globl	head
	.bss
	.align 8
head:
	.space 8
	.globl	current
	.align 8
current:
	.space 8
	.globl	n
	.align 4
n:
	.space 4
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "cls\0"
	.align 8
.LC1:
	.ascii "*This program only stores integer data*\0"
.LC2:
	.ascii "1.Query Data\0"
.LC3:
	.ascii "2.Add Data\0"
.LC4:
	.ascii "3.Modify Data\0"
.LC5:
	.ascii "4.Delete Data\0"
.LC6:
	.ascii "5.Exit\0"
.LC7:
	.ascii "Please enter your choice:\0"
.LC8:
	.ascii "%d\0"
.LC9:
	.ascii "pause\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB177:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
.L11:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	system
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	ja	.L13
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L4(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L4:
	.long	.L13-.L4
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
.L8:
	call	_Z7Inquirev
	jmp	.L9
.L7:
	call	_Z3Newv
	jmp	.L9
.L6:
	call	_Z6Revisev
	jmp	.L9
.L5:
	call	_Z6Deletev
	jmp	.L9
.L3:
	movl	$0, %eax
	jmp	.L12
.L13:
	nop
.L9:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	system
	jmp	.L11
.L12:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC10:
	.ascii "Data not found\0"
.LC11:
	.ascii "%3d.%-6d %c\0"
	.text
	.globl	_Z7Inquirev
	.def	_Z7Inquirev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7Inquirev
_Z7Inquirev:
.LFB178:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	.L15
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L16
.L15:
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	movl	$10, %ecx
	call	putchar
	movl	$1, -4(%rbp)
	jmp	.L17
.L20:
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L18
	movl	$10, %ecx
	jmp	.L19
.L18:
	movl	$32, %ecx
.L19:
	movq	current(%rip), %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
	addl	$1, -4(%rbp)
.L17:
	movl	n(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L20
.L16:
	movl	$10, %ecx
	call	putchar
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.ascii "Enter the number of data to add: \0"
.LC13:
	.ascii "Enter the data:\0"
.LC14:
	.ascii "1.Add new data\0"
.LC15:
	.ascii "2.Insert new data\0"
.LC16:
	.ascii "3.Return to menu\0"
.LC17:
	.ascii "Please select an option: \0"
	.align 8
.LC18:
	.ascii "Enter position and amount of data to insert: \0"
.LC19:
	.ascii "%d%d\0"
.LC20:
	.ascii "%d. Position not found\12\0"
	.text
	.globl	_Z3Newv
	.def	_Z3Newv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z3Newv
_Z3Newv:
.LFB179:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	head(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	.L22
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-20(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$16, %ecx
	call	_Znwy
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, head(%rip)
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	call	_Z7New_seti
	movl	-20(%rbp), %eax
	movl	%eax, n(%rip)
	call	_Z7Inquirev
	jmp	.L38
.L22:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-28(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-28(%rbp), %eax
	cmpl	$3, %eax
	je	.L37
	cmpl	$3, %eax
	jg	.L25
	cmpl	$1, %eax
	je	.L26
	cmpl	$2, %eax
	je	.L27
	jmp	.L25
.L26:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-20(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, -12(%rbp)
	jmp	.L28
.L29:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L28:
	movl	n(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
	movl	$16, %ecx
	call	_Znwy
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, current(%rip)
	movq	current(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	call	_Z7New_seti
	movl	n(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, n(%rip)
	call	_Z7Inquirev
	jmp	.L23
.L27:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-20(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	jle	.L30
	movl	-24(%rbp), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jle	.L31
.L30:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	system
	call	main
	jmp	.L23
.L31:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, -16(%rbp)
	jmp	.L33
.L34:
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
	addl	$1, -16(%rbp)
.L33:
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jl	.L34
	movl	-24(%rbp), %eax
	cmpl	$1, %eax
	jne	.L35
	movq	current(%rip), %rax
	movq	%rax, -8(%rbp)
	movl	$16, %ecx
	call	_Znwy
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	%rax, head(%rip)
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	jmp	.L36
.L35:
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$16, %ecx
	call	_Znwy
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	current(%rip), %rdx
	movq	%rax, 8(%rdx)
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
.L36:
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	call	_Z7New_seti
	movq	current(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	n(%rip), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, n(%rip)
	call	_Z7Inquirev
	jmp	.L23
.L25:
	call	_Z3Newv
	jmp	.L23
.L37:
	nop
.L23:
.L38:
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z7New_seti
	.def	_Z7New_seti;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z7New_seti
_Z7New_seti:
.LFB180:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L40
	movq	current(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movq	current(%rip), %rax
	movq	$0, 8(%rax)
	jmp	.L39
.L40:
	movq	current(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	$16, %ecx
	call	_Znwy
	movl	$0, (%rax)
	movq	$0, 8(%rax)
	movq	current(%rip), %rdx
	movq	%rax, 8(%rdx)
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
	movl	16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	call	_Z7New_seti
	nop
.L39:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "Enter the number of items to modify: \0"
	.align 8
.LC22:
	.ascii "Select the data positions to modify: \0"
	.align 8
.LC23:
	.ascii "Enter new values for positions (\0"
.LC24:
	.ascii "%d. \0"
.LC25:
	.ascii "%d.):\12\0"
	.text
	.globl	_Z6Revisev
	.def	_Z6Revisev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6Revisev
_Z6Revisev:
.LFB181:
	pushq	%rbp
	.seh_pushreg	%rbp
	movl	$40080, %eax
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	40080
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movl	$0, 39948(%rbp)
	call	_Z7Inquirev
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	.L43
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	system
	jmp	.L60
.L43:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	39916(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, 39944(%rbp)
	jmp	.L45
.L48:
	leaq	-96(%rbp), %rax
	movl	39944(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	39944(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jle	.L46
	movl	39944(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jle	.L47
.L46:
	movl	39944(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	39916(%rbp), %eax
	subl	$1, %eax
	movl	%eax, 39916(%rbp)
	subl	$1, 39944(%rbp)
.L47:
	addl	$1, 39944(%rbp)
.L45:
	movl	39916(%rbp), %eax
	cmpl	%eax, 39944(%rbp)
	jl	.L48
	movl	$0, 39940(%rbp)
	jmp	.L49
.L53:
	movl	$0, 39936(%rbp)
	jmp	.L50
.L52:
	movl	39940(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	39936(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jge	.L51
	movl	39940(%rbp), %eax
	cmpl	39936(%rbp), %eax
	je	.L51
	movl	39940(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %eax
	movl	%eax, 39920(%rbp)
	movl	39936(%rbp), %eax
	cltq
	movl	-96(%rbp,%rax,4), %edx
	movl	39940(%rbp), %eax
	cltq
	movl	%edx, -96(%rbp,%rax,4)
	movl	39936(%rbp), %eax
	cltq
	movl	39920(%rbp), %edx
	movl	%edx, -96(%rbp,%rax,4)
.L51:
	addl	$1, 39936(%rbp)
.L50:
	movl	39936(%rbp), %eax
	cmpl	39940(%rbp), %eax
	jle	.L52
	addl	$1, 39940(%rbp)
.L49:
	movl	39916(%rbp), %eax
	cmpl	%eax, 39940(%rbp)
	jl	.L53
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, 39932(%rbp)
	jmp	.L54
.L55:
	movl	39932(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	printf
	addl	$1, 39932(%rbp)
.L54:
	movl	39916(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, 39932(%rbp)
	jl	.L55
	movl	39916(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	leaq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, 39928(%rbp)
	jmp	.L56
.L59:
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	movl	$1, 39924(%rbp)
	jmp	.L57
.L58:
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
	addl	$1, 39924(%rbp)
.L57:
	movl	39948(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-96(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, 39924(%rbp)
	jl	.L58
	movq	current(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	addl	$1, 39948(%rbp)
	addl	$1, 39928(%rbp)
.L56:
	movl	39916(%rbp), %eax
	cmpl	%eax, 39928(%rbp)
	jl	.L59
	call	_Z7Inquirev
.L60:
	nop
	addq	$40080, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC26:
	.ascii "No data to delete\0"
	.align 8
.LC27:
	.ascii "1.Delete specific values (multiple)\0"
	.align 8
.LC28:
	.ascii "2.Delete specific value (single)\0"
	.align 8
.LC29:
	.ascii "3.Delete by positions (multiple)\0"
.LC30:
	.ascii "4.Delete by position (single)\0"
.LC31:
	.ascii "5.Return\0"
.LC32:
	.ascii "Select deletion method: \0"
	.align 8
.LC33:
	.ascii "Enter number of values to delete: \0"
.LC34:
	.ascii "Enter value to delete: \0"
.LC35:
	.ascii "\345\210\252\351\231\244\345\276\214:\0"
	.align 8
.LC36:
	.ascii "Enter number of positions to delete: \0"
.LC37:
	.ascii "Enter position to delete: \0"
	.text
	.globl	_Z6Deletev
	.def	_Z6Deletev;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z6Deletev
_Z6Deletev:
.LFB182:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$1, -4(%rbp)
	movl	n(%rip), %eax
	testl	%eax, %eax
	jne	.L62
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	system
	jmp	.L72
.L62:
	call	_Z7Inquirev
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC29(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-8(%rbp), %eax
	cmpl	$5, %eax
	ja	.L64
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L66(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L66(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L66:
	.long	.L64-.L66
	.long	.L70-.L66
	.long	.L69-.L66
	.long	.L68-.L66
	.long	.L67-.L66
	.long	.L71-.L66
	.text
.L70:
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
.L69:
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	_Z11Delete_set1i
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	_Z7Inquirev
	jmp	.L63
.L68:
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
.L67:
	leaq	.LC37(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	-4(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %r8d
	movl	$0, %edx
	movl	%eax, %ecx
	call	_Z11Delete_set2iii
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	_Z7Inquirev
	jmp	.L63
.L64:
	call	_Z6Deletev
	jmp	.L63
.L71:
	nop
.L63:
.L72:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC38:
	.ascii "%d. can't not found\12\0"
	.text
	.globl	_Z11Delete_set1i
	.def	_Z11Delete_set1i;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11Delete_set1i
_Z11Delete_set1i:
.LFB183:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	head(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	$1, -20(%rbp)
	jmp	.L74
.L81:
	movq	current(%rip), %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L75
	cmpl	$1, -20(%rbp)
	jne	.L76
	movq	head(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, head(%rip)
	movq	current(%rip), %rax
	testq	%rax, %rax
	je	.L77
	movl	$16, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L77:
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	subl	$1, -20(%rbp)
	movl	n(%rip), %eax
	subl	$1, %eax
	movl	%eax, n(%rip)
	movq	current(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L78
.L76:
	movq	current(%rip), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	current(%rip), %rax
	testq	%rax, %rax
	je	.L79
	movl	$16, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L79:
	addl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, current(%rip)
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
.L78:
	movl	$1, -8(%rbp)
	jmp	.L80
.L75:
	movq	current(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	current(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
.L80:
	addl	$1, -20(%rbp)
.L74:
	movl	n(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L81
	cmpl	$0, -8(%rbp)
	jne	.L82
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC38(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L82:
	movl	n(%rip), %eax
	subl	-4(%rbp), %eax
	movl	%eax, n(%rip)
	cmpl	$1, 16(%rbp)
	je	.L73
	movl	16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	call	_Z11Delete_set1i
	nop
.L73:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	_Z11Delete_set2iii
	.def	_Z11Delete_set2iii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z11Delete_set2iii
_Z11Delete_set2iii:
.LFB184:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movq	head(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	head(%rip), %rax
	movq	%rax, current(%rip)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	jle	.L87
	movl	-16(%rbp), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jle	.L88
.L87:
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC38(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	32(%rbp), %eax
	leal	-1(%rax), %edx
	movl	16(%rbp), %eax
	leal	-1(%rax), %ecx
	movl	24(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	call	_Z11Delete_set2iii
	jmp	.L86
.L88:
	movl	16(%rbp), %eax
	cmpl	32(%rbp), %eax
	je	.L90
	movl	-16(%rbp), %eax
	subl	24(%rbp), %eax
	movl	%eax, -16(%rbp)
.L90:
	movl	-16(%rbp), %eax
	cmpl	$1, %eax
	jne	.L91
	movq	head(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, head(%rip)
	jmp	.L92
.L91:
	movl	$1, -12(%rbp)
	jmp	.L93
.L94:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L93:
	movl	-16(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L94
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, current(%rip)
	movq	current(%rip), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L92:
	movq	current(%rip), %rax
	testq	%rax, %rax
	je	.L95
	movl	$16, %edx
	movq	%rax, %rcx
	call	_ZdlPvy
.L95:
	movl	n(%rip), %eax
	subl	$1, %eax
	movl	%eax, n(%rip)
	cmpl	$1, 16(%rbp)
	je	.L86
	movl	24(%rbp), %eax
	leal	1(%rax), %edx
	movl	16(%rbp), %eax
	subl	$1, %eax
	movl	32(%rbp), %ecx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	_Z11Delete_set2iii
	nop
.L86:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (Rev3, Built by MSYS2 project) 13.2.0"
	.def	system;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
