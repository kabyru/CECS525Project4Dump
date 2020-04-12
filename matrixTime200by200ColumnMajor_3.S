	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"matrixTime200by200ColumnMajor.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
.LFB11:
	.file 1 "matrixTime200by200ColumnMajor.c"
	.loc 1 8 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 9 5 view .LVU1
	.loc 1 10 5 view .LVU2
.LVL0:
	.loc 1 11 5 view .LVU3
	.loc 1 12 5 view .LVU4
.LBB2:
	.loc 1 12 10 view .LVU5
	.loc 1 12 10 is_stmt 0 view .LVU6
	ldr	r0, .L8+8
.LBE2:
	.loc 1 8 1 view .LVU7
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r1, #200
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
.LVL1:
.L2:
	.loc 1 8 1 view .LVU8
	sub	r3, r1, #200
.LVL2:
	.loc 1 8 1 view .LVU9
	mov	r2, r0
.LVL3:
.L3:
.LBB4:
.LBB3:
	.loc 1 16 13 is_stmt 1 discriminator 3 view .LVU10
	.loc 1 16 26 is_stmt 0 discriminator 3 view .LVU11
	str	r3, [r2, #4]!
.LVL4:
	.loc 1 16 26 discriminator 3 view .LVU12
	add	r3, r3, #1
.LVL5:
	.loc 1 14 9 discriminator 3 view .LVU13
	cmp	r3, r1
	bne	.L3
.LVL6:
	.loc 1 14 9 discriminator 3 view .LVU14
	add	r1, r3, #1
.LVL7:
	.loc 1 14 9 discriminator 3 view .LVU15
.LBE3:
	.loc 1 12 5 discriminator 2 view .LVU16
	cmp	r1, #400
	add	r0, r0, #800
	bne	.L2
.LBE4:
	.loc 1 20 5 is_stmt 1 view .LVU17
	.loc 1 20 13 is_stmt 0 view .LVU18
	bl	clock
.LVL8:
	.loc 1 20 13 view .LVU19
	mov	r4, r0
.LVL9:
	.loc 1 22 5 is_stmt 1 view .LVU20
	.loc 1 22 10 view .LVU21
	.loc 1 29 5 view .LVU22
	.loc 1 29 11 is_stmt 0 view .LVU23
	bl	clock
.LVL10:
	.loc 1 31 5 is_stmt 1 view .LVU24
	.loc 1 32 5 view .LVU25
	.loc 1 31 16 is_stmt 0 view .LVU26
	vldr.64	d5, .L8
	.loc 1 32 5 view .LVU27
	mov	r2, #200
	mov	r1, r2
	.loc 1 31 32 view .LVU28
	sub	r4, r0, r4
.LVL11:
	.loc 1 32 5 view .LVU29
	ldr	r0, .L8+12
.LVL12:
	.loc 1 31 18 view .LVU30
	vmov	s15, r4	@ int
	vcvt.f64.s32	d7, s15
	.loc 1 31 16 view .LVU31
	vdiv.f64	d6, d7, d5
.LVL13:
	.loc 1 32 5 view .LVU32
	vstr.64	d6, [sp]
	bl	printf
.LVL14:
	.loc 1 34 5 is_stmt 1 view .LVU33
	.loc 1 35 1 is_stmt 0 view .LVU34
	mov	r0, #0
	add	sp, sp, #8
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.L9:
	.align	3
.L8:
	.word	0
	.word	1093567616
	.word	matrix-4
	.word	.LC0
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.comm	matrix,160000,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"[Column %dx%d] Time: %f\012\000"
	.text
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
	.4byte	0x492
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd8
	.byte	0x17
	.4byte	0x3f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x41
	.byte	0x25
	.4byte	0x69
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x96
	.byte	0x19
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x97
	.byte	0x1b
	.4byte	0x77
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x9a
	.byte	0x1b
	.4byte	0x8f
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.uleb128 0x7
	.4byte	0xb6
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x7
	.byte	0x13
	.4byte	0xa2
	.uleb128 0x6
	.byte	0x4
	.4byte	0xbd
	.uleb128 0x7
	.4byte	0xce
	.uleb128 0x8
	.4byte	0xb0
	.4byte	0xe9
	.uleb128 0x9
	.4byte	0x3f
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x5
	.byte	0x9f
	.byte	0xe
	.4byte	0xd9
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa0
	.byte	0xc
	.4byte	0x2c
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa1
	.byte	0x11
	.4byte	0x8f
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0xa6
	.byte	0xe
	.4byte	0xd9
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0xae
	.byte	0xc
	.4byte	0x2c
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0xaf
	.byte	0x11
	.4byte	0x8f
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x98
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.4byte	0x2b8
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x6
	.byte	0x33
	.byte	0x7
	.4byte	0x2c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.4byte	0xb0
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.byte	0x9
	.4byte	0xb0
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x38
	.byte	0x9
	.4byte	0xb0
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x39
	.byte	0x9
	.4byte	0xb0
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3a
	.byte	0x9
	.4byte	0xb0
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3b
	.byte	0x9
	.4byte	0xb0
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3c
	.byte	0x9
	.4byte	0xb0
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.4byte	0xb0
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x40
	.byte	0x9
	.4byte	0xb0
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x41
	.byte	0x9
	.4byte	0xb0
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x42
	.byte	0x9
	.4byte	0xb0
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x44
	.byte	0x16
	.4byte	0x2d1
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x46
	.byte	0x14
	.4byte	0x2d7
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x48
	.byte	0x7
	.4byte	0x2c
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x49
	.byte	0x7
	.4byte	0x2c
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x4a
	.byte	0xb
	.4byte	0x83
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x4d
	.byte	0x12
	.4byte	0x4d
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4e
	.byte	0xf
	.4byte	0x5b
	.byte	0x46
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2dd
	.byte	0x47
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x6
	.byte	0x51
	.byte	0xf
	.4byte	0x2ed
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x6
	.byte	0x59
	.byte	0xd
	.4byte	0x96
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x5b
	.byte	0x17
	.4byte	0x2f8
	.byte	0x58
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x5c
	.byte	0x19
	.4byte	0x303
	.byte	0x5c
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x6
	.byte	0x5d
	.byte	0x14
	.4byte	0x2d7
	.byte	0x60
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x5e
	.byte	0x9
	.4byte	0xae
	.byte	0x64
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x5f
	.byte	0xa
	.4byte	0x33
	.byte	0x68
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x6
	.byte	0x60
	.byte	0x7
	.4byte	0x2c
	.byte	0x6c
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x309
	.byte	0x70
	.byte	0
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x7
	.byte	0x7
	.byte	0x19
	.4byte	0x131
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x6
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF53
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2cc
	.uleb128 0x6
	.byte	0x4
	.4byte	0x131
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x2ed
	.uleb128 0x9
	.4byte	0x3f
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c4
	.uleb128 0xe
	.4byte	.LASF54
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2f3
	.uleb128 0xe
	.4byte	.LASF55
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2fe
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x319
	.uleb128 0x9
	.4byte	0x3f
	.byte	0x27
	.byte	0
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0x89
	.byte	0xe
	.4byte	0x325
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b8
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.byte	0x8a
	.byte	0xe
	.4byte	0x325
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.byte	0x8b
	.byte	0xe
	.4byte	0x325
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x9
	.byte	0x1a
	.byte	0xc
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0xd4
	.4byte	0x35a
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x34f
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x9
	.byte	0x1b
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x381
	.uleb128 0x9
	.4byte	0x3f
	.byte	0xc7
	.uleb128 0x9
	.4byte	0x3f
	.byte	0xc7
	.byte	0
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.4byte	0x36b
	.uleb128 0x5
	.byte	0x3
	.4byte	matrix
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x47c
	.uleb128 0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	0xc2
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x13
	.ascii	"end\000"
	.byte	0x1
	.byte	0x9
	.byte	0x14
	.4byte	0xc2
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.ascii	"sum\000"
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x2c
	.byte	0
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.byte	0xb
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0
	.4byte	0x42e
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.4byte	0x2c
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x16
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x13
	.ascii	"j\000"
	.byte	0x1
	.byte	0xe
	.byte	0x12
	.4byte	0x2c
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x44a
	.uleb128 0x18
	.ascii	"j\000"
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0x2c
	.uleb128 0x19
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL8
	.4byte	0x47c
	.uleb128 0x1a
	.4byte	.LVL10
	.4byte	0x47c
	.uleb128 0x1b
	.4byte	.LVL14
	.4byte	0x488
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x5
	.byte	0x48
	.byte	0x10
	.uleb128 0x1e
	.4byte	.LASF65
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x14c
	.byte	0xc
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x2117
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU20
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU29
.LLST0:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU24
	.uleb128 .LVU30
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU29
	.uleb128 .LVU32
	.uleb128 .LVU33
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0xa
	.byte	0x9e
	.uleb128 0x8
	.4byte	0
	.4byte	0
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x16
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0xf4
	.uleb128 0x25
	.byte	0x8
	.4byte	0
	.4byte	0x412e8480
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x8
	.byte	0x90
	.uleb128 0x4c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU19
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0x71
	.sleb128 -200
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x4
	.byte	0x71
	.sleb128 -200
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x4
	.byte	0x73
	.sleb128 -199
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU8
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU15
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xc8
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xc9
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0xc9
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF31:
	.ascii	"_IO_buf_end\000"
.LASF10:
	.ascii	"__quad_t\000"
.LASF39:
	.ascii	"_old_offset\000"
.LASF0:
	.ascii	"double\000"
.LASF59:
	.ascii	"sys_nerr\000"
.LASF34:
	.ascii	"_IO_save_end\000"
.LASF67:
	.ascii	"matrixTime200by200ColumnMajor.c\000"
.LASF9:
	.ascii	"size_t\000"
.LASF44:
	.ascii	"_offset\000"
.LASF17:
	.ascii	"__tzname\000"
.LASF28:
	.ascii	"_IO_write_ptr\000"
.LASF23:
	.ascii	"_flags\000"
.LASF14:
	.ascii	"__clock_t\000"
.LASF30:
	.ascii	"_IO_buf_base\000"
.LASF48:
	.ascii	"_freeres_buf\000"
.LASF6:
	.ascii	"short int\000"
.LASF35:
	.ascii	"_markers\000"
.LASF25:
	.ascii	"_IO_read_end\000"
.LASF22:
	.ascii	"timezone\000"
.LASF21:
	.ascii	"daylight\000"
.LASF63:
	.ascii	"totalInSec\000"
.LASF58:
	.ascii	"stderr\000"
.LASF7:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"__timezone\000"
.LASF43:
	.ascii	"_lock\000"
.LASF18:
	.ascii	"__daylight\000"
.LASF12:
	.ascii	"long int\000"
.LASF65:
	.ascii	"printf\000"
.LASF40:
	.ascii	"_cur_column\000"
.LASF68:
	.ascii	"/home/pi/CECS525Project4\000"
.LASF27:
	.ascii	"_IO_write_base\000"
.LASF69:
	.ascii	"_IO_FILE\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"signed char\000"
.LASF45:
	.ascii	"_codecvt\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF53:
	.ascii	"_IO_marker\000"
.LASF42:
	.ascii	"_shortbuf\000"
.LASF20:
	.ascii	"tzname\000"
.LASF51:
	.ascii	"_unused2\000"
.LASF24:
	.ascii	"_IO_read_ptr\000"
.LASF62:
	.ascii	"start\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF15:
	.ascii	"char\000"
.LASF71:
	.ascii	"main\000"
.LASF46:
	.ascii	"_wide_data\000"
.LASF47:
	.ascii	"_freeres_list\000"
.LASF49:
	.ascii	"__pad5\000"
.LASF54:
	.ascii	"_IO_codecvt\000"
.LASF4:
	.ascii	"long unsigned int\000"
.LASF64:
	.ascii	"clock\000"
.LASF29:
	.ascii	"_IO_write_end\000"
.LASF13:
	.ascii	"__off64_t\000"
.LASF11:
	.ascii	"__off_t\000"
.LASF36:
	.ascii	"_chain\000"
.LASF55:
	.ascii	"_IO_wide_data\000"
.LASF33:
	.ascii	"_IO_backup_base\000"
.LASF56:
	.ascii	"stdin\000"
.LASF38:
	.ascii	"_flags2\000"
.LASF50:
	.ascii	"_mode\000"
.LASF26:
	.ascii	"_IO_read_base\000"
.LASF16:
	.ascii	"clock_t\000"
.LASF41:
	.ascii	"_vtable_offset\000"
.LASF32:
	.ascii	"_IO_save_base\000"
.LASF60:
	.ascii	"sys_errlist\000"
.LASF37:
	.ascii	"_fileno\000"
.LASF52:
	.ascii	"FILE\000"
.LASF61:
	.ascii	"matrix\000"
.LASF57:
	.ascii	"stdout\000"
.LASF66:
	.ascii	"GNU C17 8.3.0 -mfloat-abi=hard -mfpu=vfp -mtls-dial"
	.ascii	"ect=gnu -marm -march=armv6+fp -g -O3 -pedantic-erro"
	.ascii	"rs\000"
.LASF70:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
