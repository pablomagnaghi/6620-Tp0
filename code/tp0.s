	.file	1 "tp0.c"
	.section .mdebug.abi32
	.previous
	.abicalls
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	sw	$zero,24($fp)
	lw	$v0,48($fp)
	sw	$v0,28($fp)
	li	$v0,3			# 0x3
	lw	$v1,28($fp)
	beq	$v1,$v0,$L20
	lw	$v1,28($fp)
	slt	$v0,$v1,4
	beq	$v0,$zero,$L24
	li	$v0,2			# 0x2
	lw	$v1,28($fp)
	beq	$v1,$v0,$L19
	b	$L22
$L24:
	li	$v0,4			# 0x4
	lw	$v1,28($fp)
	beq	$v1,$v0,$L21
	b	$L22
$L19:
	lw	$v0,52($fp)
	addu	$v0,$v0,4
	lw	$a0,0($v0)
	la	$t9,opcionArgcDos
	jal	$ra,$t9
	sw	$v0,24($fp)
	b	$L18
$L20:
	lw	$v0,52($fp)
	addu	$v1,$v0,4
	lw	$v0,52($fp)
	addu	$v0,$v0,8
	lw	$a0,0($v1)
	lw	$a1,0($v0)
	la	$t9,opcionArgcTres
	jal	$ra,$t9
	sw	$v0,24($fp)
	b	$L18
$L21:
	lw	$v0,52($fp)
	addu	$a0,$v0,4
	lw	$v0,52($fp)
	addu	$v1,$v0,8
	lw	$v0,52($fp)
	addu	$v0,$v0,12
	lw	$a0,0($a0)
	lw	$a1,0($v1)
	lw	$a2,0($v0)
	la	$t9,opcionArgcCuatro
	jal	$ra,$t9
	sw	$v0,24($fp)
	b	$L18
$L22:
	la	$t9,mostrarH
	jal	$ra,$t9
$L18:
	lw	$v0,24($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	main
	.size	main, .-main
	.rdata
	.align	2
$LC0:
	.ascii	"-V\000"
	.align	2
$LC1:
	.ascii	"-h\000"
	.align	2
$LC2:
	.ascii	"tp0 Version 19/04/2011\n\000"
	.align	2
$LC3:
	.ascii	"ERROR: Los argumentos validos son -V o -h\n\000"
	.text
	.align	2
	.globl	opcionArgcDos
	.ent	opcionArgcDos
opcionArgcDos:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	lhu	$v0,$LC0
	sh	$v0,24($fp)
	lbu	$v0,$LC0+2
	sb	$v0,26($fp)
	lhu	$v0,$LC1
	sh	$v0,32($fp)
	lbu	$v0,$LC1+2
	sb	$v0,34($fp)
	addu	$a0,$fp,24
	lw	$a1,64($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L26
	la	$a0,$LC2
	la	$t9,printf
	jal	$ra,$t9
	sw	$zero,40($fp)
	b	$L25
$L26:
	addu	$v0,$fp,32
	move	$a0,$v0
	lw	$a1,64($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L27
	la	$t9,mostrarH
	jal	$ra,$t9
	sw	$zero,40($fp)
	b	$L25
$L27:
	la	$a0,$LC3
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,40($fp)
$L25:
	lw	$v0,40($fp)
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	opcionArgcDos
	.size	opcionArgcDos, .-opcionArgcDos
	.data
	.align	2
$LC4:
	.word	dString1
	.word	sString1
	.rdata
	.align	2
$LC5:
	.ascii	"ERROR: La opcion -ds debe recibir 2 cadenas\000"
	.text
	.align	2
	.globl	opcionArgcTres
	.ent	opcionArgcTres
opcionArgcTres:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	sw	$zero,24($fp)
	sw	$zero,28($fp)
	lw	$v0,$LC4
	sw	$v0,32($fp)
	lw	$v0,$LC4+4
	sw	$v0,36($fp)
	addu	$v0,$fp,28
	lw	$a0,64($fp)
	move	$a1,$v0
	addu	$a2,$fp,24
	la	$t9,obtenerOpcion
	jal	$ra,$t9
	lw	$v0,24($fp)
	beq	$v0,$zero,$L29
	lw	$v1,28($fp)
	li	$v0,2			# 0x2
	beq	$v1,$v0,$L30
	lw	$v0,28($fp)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v0,$v0,8
	lw	$v0,0($v0)
	lw	$a0,68($fp)
	move	$t9,$v0
	jal	$ra,$t9
	sw	$v0,40($fp)
	b	$L28
$L30:
	la	$a0,$LC5
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,40($fp)
	b	$L28
$L29:
	lw	$a0,64($fp)
	lw	$a1,68($fp)
	la	$t9,string1String2
	jal	$ra,$t9
	sw	$v0,40($fp)
$L28:
	lw	$v0,40($fp)
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	opcionArgcTres
	.size	opcionArgcTres, .-opcionArgcTres
	.data
	.align	2
$LC6:
	.word	sString1String2
	.word	dsString1String2
	.rdata
	.align	2
$LC7:
	.ascii	"ERROR: La opcion -d debe recibir 1 cadena\000"
	.align	2
$LC8:
	.ascii	"ERROR: Sintaxis invalida\000"
	.text
	.align	2
	.globl	opcionArgcCuatro
	.ent	opcionArgcCuatro
opcionArgcCuatro:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	sw	$a2,72($fp)
	sw	$zero,24($fp)
	sw	$zero,28($fp)
	lw	$v0,$LC6
	sw	$v0,32($fp)
	lw	$v0,$LC6+4
	sw	$v0,36($fp)
	addu	$v0,$fp,28
	lw	$a0,64($fp)
	move	$a1,$v0
	addu	$a2,$fp,24
	la	$t9,obtenerOpcion
	jal	$ra,$t9
	lw	$v0,24($fp)
	beq	$v0,$zero,$L32
	lw	$v0,28($fp)
	beq	$v0,$zero,$L33
	lw	$v0,28($fp)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v0,$v0,4
	lw	$v0,0($v0)
	lw	$a0,68($fp)
	lw	$a1,72($fp)
	move	$t9,$v0
	jal	$ra,$t9
	sw	$v0,40($fp)
	b	$L31
$L33:
	la	$a0,$LC7
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,40($fp)
	b	$L31
$L32:
	la	$a0,$LC8
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,40($fp)
$L31:
	lw	$v0,40($fp)
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	opcionArgcCuatro
	.size	opcionArgcCuatro, .-opcionArgcCuatro
	.rdata
	.align	2
$LC9:
	.ascii	"-d\000"
	.align	2
$LC10:
	.ascii	"-s\000"
	.align	2
$LC11:
	.ascii	"-ds\000"
	.text
	.align	2
	.globl	obtenerOpcion
	.ent	obtenerOpcion
obtenerOpcion:
	.frame	$fp,64,$ra		# vars= 24, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,64
	.cprestore 16
	sw	$ra,56($sp)
	sw	$fp,52($sp)
	sw	$gp,48($sp)
	move	$fp,$sp
	sw	$a0,64($fp)
	sw	$a1,68($fp)
	sw	$a2,72($fp)
	lhu	$v0,$LC9
	sh	$v0,24($fp)
	lbu	$v0,$LC9+2
	sb	$v0,26($fp)
	lhu	$v0,$LC10
	sh	$v0,32($fp)
	lbu	$v0,$LC10+2
	sb	$v0,34($fp)
	lw	$v0,$LC11
	sw	$v0,40($fp)
	addu	$a0,$fp,24
	lw	$a1,64($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L35
	lw	$v0,72($fp)
	li	$v1,1			# 0x1
	sw	$v1,0($v0)
	lw	$v0,68($fp)
	sw	$zero,0($v0)
	b	$L34
$L35:
	addu	$v0,$fp,32
	move	$a0,$v0
	lw	$a1,64($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L37
	lw	$v1,72($fp)
	li	$v0,1			# 0x1
	sw	$v0,0($v1)
	lw	$v1,68($fp)
	li	$v0,1			# 0x1
	sw	$v0,0($v1)
	b	$L34
$L37:
	addu	$v0,$fp,40
	move	$a0,$v0
	lw	$a1,64($fp)
	la	$t9,strcmp
	jal	$ra,$t9
	bne	$v0,$zero,$L34
	lw	$v1,72($fp)
	li	$v0,1			# 0x1
	sw	$v0,0($v1)
	lw	$v1,68($fp)
	li	$v0,2			# 0x2
	sw	$v0,0($v1)
$L34:
	move	$sp,$fp
	lw	$ra,56($sp)
	lw	$fp,52($sp)
	addu	$sp,$sp,64
	j	$ra
	.end	obtenerOpcion
	.size	obtenerOpcion, .-obtenerOpcion
	.align	2
	.globl	dString1
	.ent	dString1
dString1:
	.frame	$fp,1088,$ra		# vars= 1048, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,1088
	.cprestore 16
	sw	$ra,1080($sp)
	sw	$fp,1076($sp)
	sw	$gp,1072($sp)
	move	$fp,$sp
	sw	$a0,1088($fp)
	sw	$zero,28($fp)
	lw	$a0,1088($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,32($fp)
	addu	$v0,$fp,40
	move	$a0,$v0
	la	$t9,inicializarArrayBoolean
	jal	$ra,$t9
	sw	$zero,28($fp)
$L41:
	lw	$v0,28($fp)
	lw	$v1,32($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L44
	b	$L42
$L44:
	lw	$v1,1088($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v1,$v0,16
	li	$v0,1			# 0x1
	sw	$v0,0($v1)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L41
$L42:
	.set	noreorder
	nop
	.set	reorder
$L45:
	lw	$v0,__sF+4
	addu	$v0,$v0,-1
	sw	$v0,__sF+4
	bgez	$v0,$L48
	la	$a0,__sF
	la	$t9,__srget
	jal	$ra,$t9
	sw	$v0,1068($fp)
	b	$L49
$L48:
	la	$v0,__sF
	lw	$v1,0($v0)
	move	$a0,$v1
	lbu	$a0,0($a0)
	sw	$a0,1068($fp)
	addu	$v1,$v1,1
	sw	$v1,0($v0)
$L49:
	lw	$v1,1068($fp)
	sw	$v1,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L47
	b	$L46
$L47:
	lw	$v0,24($fp)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v0,$v0,16
	lw	$v0,0($v0)
	bne	$v0,$zero,$L45
	lw	$a0,24($fp)
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L45
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,1064($fp)
	b	$L40
$L46:
	sw	$zero,1064($fp)
$L40:
	lw	$v0,1064($fp)
	move	$sp,$fp
	lw	$ra,1080($sp)
	lw	$fp,1076($sp)
	addu	$sp,$sp,1088
	j	$ra
	.end	dString1
	.size	dString1, .-dString1
	.align	2
	.globl	sString1
	.ent	sString1
sString1:
	.frame	$fp,1096,$ra		# vars= 1056, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,1096
	.cprestore 16
	sw	$ra,1088($sp)
	sw	$fp,1084($sp)
	sw	$gp,1080($sp)
	move	$fp,$sp
	sw	$a0,1096($fp)
	sw	$zero,24($fp)
	sw	$zero,28($fp)
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,32($fp)
	addu	$v0,$fp,40
	move	$a0,$v0
	la	$t9,inicializarArrayBoolean
	jal	$ra,$t9
	lw	$a0,1096($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,1064($fp)
	sw	$zero,24($fp)
$L53:
	lw	$v0,24($fp)
	lw	$v1,1064($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L56
	b	$L54
$L56:
	lw	$v1,1096($fp)
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v1,$v0,16
	li	$v0,1			# 0x1
	sw	$v0,0($v1)
	lw	$v0,24($fp)
	addu	$v0,$v0,1
	sw	$v0,24($fp)
	b	$L53
$L54:
	lw	$v1,32($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L57
	lw	$v0,__sF+4
	addu	$v0,$v0,-1
	sw	$v0,__sF+4
	bgez	$v0,$L59
	la	$a0,__sF
	la	$t9,__srget
	jal	$ra,$t9
	sw	$v0,1072($fp)
	b	$L60
$L59:
	la	$v0,__sF
	lw	$v1,0($v0)
	move	$a0,$v1
	lbu	$a0,0($a0)
	sw	$a0,1072($fp)
	addu	$v1,$v1,1
	sw	$v1,0($v0)
$L60:
	lw	$v1,1072($fp)
	sw	$v1,28($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L58
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,1068($fp)
	b	$L52
$L58:
	lw	$a0,28($fp)
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L61
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,1068($fp)
	b	$L52
$L61:
	lw	$v0,28($fp)
	sw	$v0,32($fp)
$L57:
	.set	noreorder
	nop
	.set	reorder
$L62:
	lw	$v0,__sF+4
	addu	$v0,$v0,-1
	sw	$v0,__sF+4
	bgez	$v0,$L65
	la	$a0,__sF
	la	$t9,__srget
	jal	$ra,$t9
	sw	$v0,1076($fp)
	b	$L66
$L65:
	la	$v0,__sF
	lw	$v1,0($v0)
	move	$a0,$v1
	lbu	$a0,0($a0)
	sw	$a0,1076($fp)
	addu	$v1,$v1,1
	sw	$v1,0($v0)
$L66:
	lw	$v1,1076($fp)
	sw	$v1,28($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L64
	b	$L63
$L64:
	lw	$v0,28($fp)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v0,$v0,16
	lw	$v0,0($v0)
	beq	$v0,$zero,$L68
	lw	$v1,32($fp)
	lw	$v0,28($fp)
	bne	$v1,$v0,$L68
	b	$L62
$L68:
	lw	$a0,28($fp)
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L69
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,1068($fp)
	b	$L52
$L69:
	lw	$v0,28($fp)
	sw	$v0,32($fp)
	b	$L62
$L63:
	sw	$zero,1068($fp)
$L52:
	lw	$v0,1068($fp)
	move	$sp,$fp
	lw	$ra,1088($sp)
	lw	$fp,1084($sp)
	addu	$sp,$sp,1096
	j	$ra
	.end	sString1
	.size	sString1, .-sString1
	.align	2
	.globl	string1String2
	.ent	string1String2
string1String2:
	.frame	$fp,328,$ra		# vars= 288, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,328
	.cprestore 16
	sw	$ra,320($sp)
	sw	$fp,316($sp)
	sw	$gp,312($sp)
	move	$fp,$sp
	sw	$a0,328($fp)
	sw	$a1,332($fp)
	addu	$v0,$fp,40
	move	$a0,$v0
	li	$a1,256			# 0x100
	la	$t9,bzero
	jal	$ra,$t9
	lw	$a0,328($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,296($fp)
	lw	$a0,332($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,300($fp)
	lw	$v1,296($fp)
	lw	$v0,300($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L71
	lw	$v0,296($fp)
	sw	$v0,32($fp)
	b	$L72
$L71:
	lw	$v0,300($fp)
	sw	$v0,32($fp)
$L72:
	sw	$zero,28($fp)
$L73:
	lw	$v0,28($fp)
	lw	$v1,32($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L76
	b	$L74
$L76:
	lw	$v1,328($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	addu	$v0,$fp,40
	addu	$a0,$v0,$v1
	lw	$v1,332($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L73
$L74:
	lw	$v1,32($fp)
	lw	$v0,300($fp)
	bne	$v1,$v0,$L77
	lw	$v0,300($fp)
	sw	$v0,28($fp)
$L78:
	lw	$v0,28($fp)
	lw	$v1,296($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L81
	b	$L77
$L81:
	lw	$v1,328($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	addu	$v0,$fp,40
	addu	$a0,$v0,$v1
	lw	$v1,332($fp)
	lw	$v0,300($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L78
$L77:
	.set	noreorder
	nop
	.set	reorder
$L82:
	lw	$v0,__sF+4
	addu	$v0,$v0,-1
	sw	$v0,__sF+4
	bgez	$v0,$L85
	la	$a0,__sF
	la	$t9,__srget
	jal	$ra,$t9
	sw	$v0,308($fp)
	b	$L86
$L85:
	la	$v0,__sF
	lw	$v1,0($v0)
	move	$a0,$v1
	lbu	$a0,0($a0)
	sw	$a0,308($fp)
	addu	$v1,$v1,1
	sw	$v1,0($v0)
$L86:
	lw	$v1,308($fp)
	sw	$v1,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L84
	b	$L83
$L84:
	addu	$v1,$fp,40
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	bne	$v0,$zero,$L87
	lw	$a0,24($fp)
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L82
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,304($fp)
	b	$L70
$L87:
	addu	$v1,$fp,40
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	move	$a0,$v0
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L82
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,304($fp)
	b	$L70
$L83:
	sw	$zero,304($fp)
$L70:
	lw	$v0,304($fp)
	move	$sp,$fp
	lw	$ra,320($sp)
	lw	$fp,316($sp)
	addu	$sp,$sp,328
	j	$ra
	.end	string1String2
	.size	string1String2, .-string1String2
	.align	2
	.globl	sString1String2
	.ent	sString1String2
sString1String2:
	.frame	$fp,328,$ra		# vars= 288, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,328
	.cprestore 16
	sw	$ra,320($sp)
	sw	$fp,316($sp)
	sw	$gp,312($sp)
	move	$fp,$sp
	sw	$a0,328($fp)
	sw	$a1,332($fp)
	sw	$zero,24($fp)
	sw	$zero,28($fp)
	li	$v0,-1			# 0xffffffffffffffff
	sw	$v0,32($fp)
	sw	$zero,36($fp)
	addu	$v0,$fp,40
	move	$a0,$v0
	li	$a1,256			# 0x100
	la	$t9,bzero
	jal	$ra,$t9
	lw	$a0,328($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,296($fp)
	lw	$a0,332($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,300($fp)
	lw	$v1,296($fp)
	lw	$v0,300($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L92
	lw	$v0,296($fp)
	sw	$v0,36($fp)
	b	$L93
$L92:
	lw	$v0,300($fp)
	sw	$v0,36($fp)
$L93:
	sw	$zero,28($fp)
$L94:
	lw	$v0,28($fp)
	lw	$v1,36($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L97
	b	$L95
$L97:
	lw	$v1,328($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	addu	$v0,$fp,40
	addu	$a0,$v0,$v1
	lw	$v1,332($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L94
$L95:
	lw	$v1,36($fp)
	lw	$v0,300($fp)
	bne	$v1,$v0,$L98
	lw	$v0,300($fp)
	sw	$v0,28($fp)
$L99:
	lw	$v0,28($fp)
	lw	$v1,296($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L102
	b	$L98
$L102:
	lw	$v1,328($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	addu	$v0,$fp,40
	addu	$a0,$v0,$v1
	lw	$v1,332($fp)
	lw	$v0,300($fp)
	addu	$v0,$v1,$v0
	addu	$v0,$v0,-1
	lbu	$v0,0($v0)
	sb	$v0,0($a0)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L99
$L98:
	.set	noreorder
	nop
	.set	reorder
$L103:
	lw	$v0,__sF+4
	addu	$v0,$v0,-1
	sw	$v0,__sF+4
	bgez	$v0,$L106
	la	$a0,__sF
	la	$t9,__srget
	jal	$ra,$t9
	sw	$v0,308($fp)
	b	$L107
$L106:
	la	$v0,__sF
	lw	$v1,0($v0)
	move	$a0,$v1
	lbu	$a0,0($a0)
	sw	$a0,308($fp)
	addu	$v1,$v1,1
	sw	$v1,0($v0)
$L107:
	lw	$v1,308($fp)
	sw	$v1,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L105
	b	$L104
$L105:
	addu	$v1,$fp,40
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	bne	$v0,$zero,$L108
	addu	$v1,$fp,40
	lw	$v0,32($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($v0)
	lw	$v0,24($fp)
	beq	$v1,$v0,$L103
	lw	$a0,24($fp)
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L110
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,304($fp)
	b	$L91
$L110:
	lw	$v0,24($fp)
	sw	$v0,32($fp)
	b	$L103
$L108:
	addu	$v1,$fp,40
	lw	$v0,24($fp)
	addu	$a0,$v1,$v0
	addu	$v1,$fp,40
	lw	$v0,32($fp)
	addu	$v0,$v1,$v0
	lb	$v1,0($a0)
	lb	$v0,0($v0)
	beq	$v1,$v0,$L103
	addu	$v1,$fp,40
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	move	$a0,$v0
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L113
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,304($fp)
	b	$L91
$L113:
	lw	$v0,24($fp)
	sw	$v0,32($fp)
	b	$L103
$L104:
	sw	$zero,304($fp)
$L91:
	lw	$v0,304($fp)
	move	$sp,$fp
	lw	$ra,320($sp)
	lw	$fp,316($sp)
	addu	$sp,$sp,328
	j	$ra
	.end	sString1String2
	.size	sString1String2, .-sString1String2
	.align	2
	.globl	dsString1String2
	.ent	dsString1String2
dsString1String2:
	.frame	$fp,2120,$ra		# vars= 2080, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,2120
	.cprestore 16
	sw	$ra,2112($sp)
	sw	$fp,2108($sp)
	sw	$gp,2104($sp)
	move	$fp,$sp
	sw	$a0,2120($fp)
	sw	$a1,2124($fp)
	sw	$zero,32($fp)
	addu	$v0,$fp,40
	move	$a0,$v0
	la	$t9,inicializarArrayBoolean
	jal	$ra,$t9
	addu	$v0,$fp,1064
	move	$a0,$v0
	la	$t9,inicializarArrayBoolean
	jal	$ra,$t9
	lw	$a0,2120($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,2088($fp)
	lw	$a0,2124($fp)
	la	$t9,strlen
	jal	$ra,$t9
	sw	$v0,2092($fp)
	sw	$zero,28($fp)
$L115:
	lw	$v0,28($fp)
	lw	$v1,2088($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L118
	b	$L116
$L118:
	lw	$v1,2120($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v1,$v0,16
	li	$v0,1			# 0x1
	sw	$v0,0($v1)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L115
$L116:
	sw	$zero,28($fp)
$L119:
	lw	$v0,28($fp)
	lw	$v1,2092($fp)
	slt	$v0,$v0,$v1
	bne	$v0,$zero,$L122
	b	$L120
$L122:
	lw	$v1,2124($fp)
	lw	$v0,28($fp)
	addu	$v0,$v1,$v0
	lb	$v0,0($v0)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v1,$v0,1040
	li	$v0,1			# 0x1
	sw	$v0,0($v1)
	lw	$v0,28($fp)
	addu	$v0,$v0,1
	sw	$v0,28($fp)
	b	$L119
$L120:
	.set	noreorder
	nop
	.set	reorder
$L123:
	lw	$v0,__sF+4
	addu	$v0,$v0,-1
	sw	$v0,__sF+4
	bgez	$v0,$L126
	la	$a0,__sF
	la	$t9,__srget
	jal	$ra,$t9
	sw	$v0,2100($fp)
	b	$L127
$L126:
	la	$v0,__sF
	lw	$v1,0($v0)
	move	$a0,$v1
	lbu	$a0,0($a0)
	sw	$a0,2100($fp)
	addu	$v1,$v1,1
	sw	$v1,0($v0)
$L127:
	lw	$v1,2100($fp)
	sw	$v1,24($fp)
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L125
	b	$L124
$L125:
	lw	$v0,24($fp)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v0,$v0,16
	lw	$v0,0($v0)
	bne	$v0,$zero,$L123
	lw	$v0,24($fp)
	sll	$v1,$v0,2
	addu	$v0,$fp,24
	addu	$v0,$v1,$v0
	addu	$v0,$v0,1040
	lw	$v0,0($v0)
	beq	$v0,$zero,$L130
	lw	$v1,32($fp)
	lw	$v0,24($fp)
	bne	$v1,$v0,$L130
	b	$L123
$L130:
	lw	$a0,24($fp)
	la	$a1,__sF+88
	la	$t9,__sputc
	jal	$ra,$t9
	move	$v1,$v0
	li	$v0,-1			# 0xffffffffffffffff
	bne	$v1,$v0,$L131
	la	$t9,errorPorEscritura
	jal	$ra,$t9
	sw	$v0,2096($fp)
	b	$L114
$L131:
	lw	$v0,24($fp)
	sw	$v0,32($fp)
	b	$L123
$L124:
	sw	$zero,2096($fp)
$L114:
	lw	$v0,2096($fp)
	move	$sp,$fp
	lw	$ra,2112($sp)
	lw	$fp,2108($sp)
	addu	$sp,$sp,2120
	j	$ra
	.end	dsString1String2
	.size	dsString1String2, .-dsString1String2
	.align	2
	.globl	inicializarArrayBoolean
	.ent	inicializarArrayBoolean
inicializarArrayBoolean:
	.frame	$fp,24,$ra		# vars= 8, regs= 2/0, args= 0, extra= 8
	.mask	0x50000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,24
	.cprestore 0
	sw	$fp,20($sp)
	sw	$gp,16($sp)
	move	$fp,$sp
	sw	$a0,24($fp)
	sw	$zero,8($fp)
$L133:
	lw	$v0,8($fp)
	slt	$v0,$v0,256
	bne	$v0,$zero,$L136
	b	$L132
$L136:
	lw	$v0,8($fp)
	sll	$v1,$v0,2
	lw	$v0,24($fp)
	addu	$v0,$v1,$v0
	sw	$zero,0($v0)
	lw	$v0,8($fp)
	addu	$v0,$v0,1
	sw	$v0,8($fp)
	b	$L133
$L132:
	move	$sp,$fp
	lw	$fp,20($sp)
	addu	$sp,$sp,24
	j	$ra
	.end	inicializarArrayBoolean
	.size	inicializarArrayBoolean, .-inicializarArrayBoolean
	.rdata
	.align	2
$LC12:
	.ascii	"Usage:\n\000"
	.align	2
$LC13:
	.ascii	"tp0 -h\n\000"
	.align	2
$LC14:
	.ascii	"tp0 -V\n\000"
	.align	2
$LC15:
	.ascii	"tp0 [options] string1 string2\n\000"
	.align	2
$LC16:
	.ascii	"tp0 [options] string1\n\000"
	.align	2
$LC17:
	.ascii	"Options:\n\000"
	.align	2
$LC18:
	.ascii	"-V, --version\n\000"
	.align	2
$LC19:
	.ascii	"-h, --help\n\000"
	.align	2
$LC20:
	.ascii	"-d, --delete\n\000"
	.align	2
$LC21:
	.ascii	"-s, --squeeze\n\000"
	.text
	.align	2
	.globl	mostrarH
	.ent	mostrarH
mostrarH:
	.frame	$fp,40,$ra		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$ra,32($sp)
	sw	$fp,28($sp)
	sw	$gp,24($sp)
	move	$fp,$sp
	la	$a0,$LC12
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC13
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC14
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC15
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC16
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC17
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC18
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC19
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC20
	la	$t9,printf
	jal	$ra,$t9
	la	$a0,$LC21
	la	$t9,printf
	jal	$ra,$t9
	move	$sp,$fp
	lw	$ra,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$ra
	.end	mostrarH
	.size	mostrarH, .-mostrarH
	.rdata
	.align	2
$LC22:
	.ascii	"ERROR: ocurre un error de escritura\000"
	.text
	.align	2
	.globl	errorPorEscritura
	.ent	errorPorEscritura
errorPorEscritura:
	.frame	$fp,40,$ra		# vars= 0, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,40
	.cprestore 16
	sw	$ra,32($sp)
	sw	$fp,28($sp)
	sw	$gp,24($sp)
	move	$fp,$sp
	la	$a0,$LC22
	la	$t9,perror
	jal	$ra,$t9
	li	$v0,-1			# 0xffffffffffffffff
	move	$sp,$fp
	lw	$ra,32($sp)
	lw	$fp,28($sp)
	addu	$sp,$sp,40
	j	$ra
	.end	errorPorEscritura
	.size	errorPorEscritura, .-errorPorEscritura
	.align	2
	.ent	__sputc
__sputc:
	.frame	$fp,48,$ra		# vars= 8, regs= 3/0, args= 16, extra= 8
	.mask	0xd0000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$t9
	.set	reorder
	subu	$sp,$sp,48
	.cprestore 16
	sw	$ra,40($sp)
	sw	$fp,36($sp)
	sw	$gp,32($sp)
	move	$fp,$sp
	sw	$a0,48($fp)
	sw	$a1,52($fp)
	lw	$v1,52($fp)
	lw	$v0,52($fp)
	lw	$v0,8($v0)
	addu	$v0,$v0,-1
	sw	$v0,8($v1)
	bgez	$v0,$L3
	lw	$v0,52($fp)
	lw	$v1,52($fp)
	lw	$a0,8($v0)
	lw	$v0,24($v1)
	slt	$v0,$a0,$v0
	bne	$v0,$zero,$L2
	lb	$v1,48($fp)
	li	$v0,10			# 0xa
	bne	$v1,$v0,$L3
	b	$L2
$L3:
	lw	$a1,52($fp)
	lw	$v1,0($a1)
	lbu	$a0,48($fp)
	move	$v0,$v1
	sb	$a0,0($v0)
	andi	$v0,$a0,0x00ff
	addu	$v1,$v1,1
	sw	$v1,0($a1)
	sw	$v0,24($fp)
	b	$L1
$L2:
	lw	$a0,48($fp)
	lw	$a1,52($fp)
	la	$t9,__swbuf
	jal	$ra,$t9
	sw	$v0,24($fp)
$L1:
	lw	$v0,24($fp)
	move	$sp,$fp
	lw	$ra,40($sp)
	lw	$fp,36($sp)
	addu	$sp,$sp,48
	j	$ra
	.end	__sputc
	.size	__sputc, .-__sputc
	.ident	"GCC: (GNU) 3.3.3 (NetBSD nb3 20040520)"
