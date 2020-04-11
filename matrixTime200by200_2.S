	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"matrixTime200by200.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	matrix,160000,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"[Row %dx%d] Time: %f\012\000"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
.LFB0:
	.file 1 "matrixTime200by200.c"
	.loc 1 8 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #48
	.loc 1 10 9
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 11 12
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-36]
.LBB2:
	.loc 1 12 14
	mov	r3, #0
	str	r3, [fp, #-12]
	.loc 1 12 5
	b	.L2
.L5:
.LBB3:
	.loc 1 14 18
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 14 9
	b	.L3
.L4:
	.loc 1 16 30 discriminator 3
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r1, r2, r3
	.loc 1 16 26 discriminator 3
	ldr	r0, .L11+8
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	ldr	r2, [fp, #-16]
	add	r3, r3, r2
	str	r1, [r0, r3, lsl #2]
	.loc 1 14 36 discriminator 3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	.loc 1 14 9 discriminator 1
	ldr	r3, [fp, #-16]
	cmp	r3, #199
	ble	.L4
.LBE3:
	.loc 1 12 32 discriminator 2
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	.loc 1 12 5 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #199
	ble	.L5
.LBE2:
	.loc 1 20 13
	bl	clock
	str	r0, [fp, #-40]
.LBB4:
	.loc 1 22 14
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 22 5
	b	.L6
.L9:
.LBB5:
	.loc 1 24 18
	mov	r3, #0
	str	r3, [fp, #-24]
	.loc 1 24 9
	b	.L7
.L8:
	.loc 1 26 34 discriminator 3
	ldr	r1, .L11+8
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #3
	ldr	r2, [fp, #-24]
	add	r3, r3, r2
	ldr	r3, [r1, r3, lsl #2]
	.loc 1 26 17 discriminator 3
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	.loc 1 24 36 discriminator 3
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L7:
	.loc 1 24 9 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #199
	ble	.L8
.LBE5:
	.loc 1 22 32 discriminator 2
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L6:
	.loc 1 22 5 discriminator 1
	ldr	r3, [fp, #-20]
	cmp	r3, #199
	ble	.L9
.LBE4:
	.loc 1 29 11
	bl	clock
	str	r0, [fp, #-44]
	.loc 1 31 32
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-40]
	sub	r3, r2, r3
	.loc 1 31 18
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	.loc 1 31 16
	vldr.64	d5, .L11
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [fp, #-36]
	.loc 1 32 5
	ldrd	r2, [fp, #-36]
	strd	r2, [sp]
	mov	r2, #200
	mov	r1, #200
	ldr	r0, .L11+12
	bl	printf
	.loc 1 34 12
	mov	r3, #0
	.loc 1 35 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	3
.L11:
	.word	0
	.word	1093567616
	.word	matrix
	.word	.LC0
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/arm-linux-gnueabihf/8/include/stddef.h"
	.file 3 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 4 "/usr/include/arm-linux-gnueabihf/bits/types/clock_t.h"
	.file 5 "/usr/include/time.h"
	.file 6 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
	.file 7 "/usr/include/arm-linux-gnueabihf/bits/types/FILE.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x447
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xd8
	.byte	0x17
	.4byte	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x41
	.byte	0x25
	.4byte	0x62
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x96
	.byte	0x19
	.4byte	0x88
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x97
	.byte	0x1b
	.4byte	0x70
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x9a
	.byte	0x1b
	.4byte	0x88
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaf
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0xaf
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x7
	.byte	0x13
	.4byte	0x9b
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x7
	.4byte	0xc7
	.uleb128 0x8
	.4byte	0xa9
	.4byte	0xe2
	.uleb128 0x9
	.4byte	0x31
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0x9f
	.byte	0xe
	.4byte	0xd2
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa0
	.byte	0xc
	.4byte	0x5b
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa1
	.byte	0x11
	.4byte	0x88
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa6
	.byte	0xe
	.4byte	0xd2
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0xae
	.byte	0xc
	.4byte	0x5b
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaf
	.byte	0x11
	.4byte	0x88
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x98
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.4byte	0x2b1
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.4byte	0x5b
	.byte	0
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.4byte	0xa9
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.4byte	0xa9
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.4byte	0xa9
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.4byte	0xa9
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.4byte	0xa9
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.4byte	0xa9
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.4byte	0xa9
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.4byte	0xa9
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.4byte	0xa9
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.4byte	0xa9
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.4byte	0xa9
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.4byte	0x2ca
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.4byte	0x2d0
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.4byte	0x5b
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.4byte	0x5b
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.4byte	0x7c
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.4byte	0x3f
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.4byte	0x4d
	.byte	0x46
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2d6
	.byte	0x47
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.4byte	0x2e6
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.4byte	0x8f
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.4byte	0x2f1
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.4byte	0x2fc
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.4byte	0x2d0
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.4byte	0xa7
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.4byte	0x25
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.4byte	0x5b
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x302
	.byte	0x70
	.byte	0
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.4byte	0x12a
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF52
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12a
	.uleb128 0x8
	.4byte	0xaf
	.4byte	0x2e6
	.uleb128 0x9
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2bd
	.uleb128 0xe
	.4byte	.LASF53
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2ec
	.uleb128 0xe
	.4byte	.LASF54
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f7
	.uleb128 0x8
	.4byte	0xaf
	.4byte	0x312
	.uleb128 0x9
	.4byte	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.4byte	0x31e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b1
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.4byte	0x31e
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.4byte	0x31e
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.4byte	0x5b
	.uleb128 0x8
	.4byte	0xcd
	.4byte	0x353
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x348
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.4byte	0x353
	.uleb128 0x8
	.4byte	0x5b
	.4byte	0x37a
	.uleb128 0x9
	.4byte	0x31
	.byte	0xc7
	.uleb128 0x9
	.4byte	0x31
	.byte	0xc7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.4byte	0x364
	.uleb128 0x5
	.byte	0x3
	.4byte	matrix
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	0x5b
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x443
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.ascii	"end\000"
	.byte	0x1
	.byte	0x9
	.byte	0x14
	.4byte	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.ascii	"sum\000"
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb
	.byte	0xc
	.4byte	0x443
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x414
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x13
	.ascii	"j\000"
	.byte	0x1
	.byte	0xe
	.byte	0x12
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x13
	.ascii	"j\000"
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.4byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF63
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF30:
	.ascii	"_IO_buf_end\000"
.LASF9:
	.ascii	"__quad_t\000"
.LASF38:
	.ascii	"_old_offset\000"
.LASF63:
	.ascii	"double\000"
.LASF65:
	.ascii	"matrixTime200by200.c\000"
.LASF58:
	.ascii	"sys_nerr\000"
.LASF33:
	.ascii	"_IO_save_end\000"
.LASF5:
	.ascii	"short int\000"
.LASF8:
	.ascii	"size_t\000"
.LASF43:
	.ascii	"_offset\000"
.LASF16:
	.ascii	"__tzname\000"
.LASF27:
	.ascii	"_IO_write_ptr\000"
.LASF22:
	.ascii	"_flags\000"
.LASF13:
	.ascii	"__clock_t\000"
.LASF29:
	.ascii	"_IO_buf_base\000"
.LASF42:
	.ascii	"_lock\000"
.LASF47:
	.ascii	"_freeres_buf\000"
.LASF34:
	.ascii	"_markers\000"
.LASF24:
	.ascii	"_IO_read_end\000"
.LASF21:
	.ascii	"timezone\000"
.LASF20:
	.ascii	"daylight\000"
.LASF62:
	.ascii	"totalInSec\000"
.LASF57:
	.ascii	"stderr\000"
.LASF6:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"__timezone\000"
.LASF14:
	.ascii	"char\000"
.LASF17:
	.ascii	"__daylight\000"
.LASF11:
	.ascii	"long int\000"
.LASF39:
	.ascii	"_cur_column\000"
.LASF66:
	.ascii	"/home/pi/CECS525Project4\000"
.LASF26:
	.ascii	"_IO_write_base\000"
.LASF67:
	.ascii	"_IO_FILE\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF4:
	.ascii	"signed char\000"
.LASF44:
	.ascii	"_codecvt\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF52:
	.ascii	"_IO_marker\000"
.LASF41:
	.ascii	"_shortbuf\000"
.LASF19:
	.ascii	"tzname\000"
.LASF50:
	.ascii	"_unused2\000"
.LASF23:
	.ascii	"_IO_read_ptr\000"
.LASF61:
	.ascii	"start\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF64:
	.ascii	"GNU C17 8.3.0 -mfloat-abi=hard -mfpu=vfp -mtls-dial"
	.ascii	"ect=gnu -marm -march=armv6+fp -g -O0 -pedantic-erro"
	.ascii	"rs\000"
.LASF69:
	.ascii	"main\000"
.LASF45:
	.ascii	"_wide_data\000"
.LASF46:
	.ascii	"_freeres_list\000"
.LASF48:
	.ascii	"__pad5\000"
.LASF53:
	.ascii	"_IO_codecvt\000"
.LASF3:
	.ascii	"long unsigned int\000"
.LASF28:
	.ascii	"_IO_write_end\000"
.LASF12:
	.ascii	"__off64_t\000"
.LASF10:
	.ascii	"__off_t\000"
.LASF35:
	.ascii	"_chain\000"
.LASF54:
	.ascii	"_IO_wide_data\000"
.LASF32:
	.ascii	"_IO_backup_base\000"
.LASF55:
	.ascii	"stdin\000"
.LASF37:
	.ascii	"_flags2\000"
.LASF49:
	.ascii	"_mode\000"
.LASF25:
	.ascii	"_IO_read_base\000"
.LASF15:
	.ascii	"clock_t\000"
.LASF40:
	.ascii	"_vtable_offset\000"
.LASF31:
	.ascii	"_IO_save_base\000"
.LASF59:
	.ascii	"sys_errlist\000"
.LASF36:
	.ascii	"_fileno\000"
.LASF51:
	.ascii	"FILE\000"
.LASF60:
	.ascii	"matrix\000"
.LASF56:
	.ascii	"stdout\000"
.LASF68:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
