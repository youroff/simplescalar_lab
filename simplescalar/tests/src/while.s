	.file	1 "tests/src/while.c"

 # GNU C 2.6.3 [AL 1.1, MM 40, tma 0.1] SimpleScalar running sstrix compiled by GNU C

 # Cc1 defaults:
 # -mgas -mgpOPT

 # Cc1 arguments (-G value = 8, Cpu = default, ISA = 1):
 # -quiet -dumpbase -g -o

gcc2_compiled.:
__gnu_compiled_c:
	.text
	.align	2
	.globl	main

	.text
	.def	main;	.val	main;	.scl	2;	.type	0x24;	.endef

	.loc	1 6
	.ent	main
main:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, extra= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	jal	__main

	.loc	1 7
	.def	i;	.val	-16;	.scl	1;	.type	0x5;	.endef
	.def	j;	.val	-12;	.scl	1;	.type	0x5;	.endef

	.loc	1 9
	sw	$0,16($fp)

	.loc	1 10
$L2:
	lw	$2,16($fp)
	slt	$3,$2,10000
	beq	$3,$0,$L3

	.loc	1 12
	lw	$3,16($fp)
	addu	$2,$3,1
	move	$3,$2
	sw	$3,16($fp)

	.loc	1 13
	j	$L2
$L3:

	.loc	1 15
	move	$2,$0

	.loc	1 16
	move	$sp,$fp			# sp not trusted here
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addu	$sp,$sp,32
	j	$31
	.end	main
