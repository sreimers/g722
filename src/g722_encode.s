	.syntax unified
	.arch armv7-a
	.fpu neon
block4:
	.fnstart
.LFB15:
	.file 1 "/opt/android-ndk-r8c/projects/g722/jni/src/g722_encode.c"
	.loc 1 66 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	push	{r4, r5, r6, r7, r8, r9, sl, fp}
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
.LCFI0:
	.cfi_def_cfa_offset 32
	.cfi_offset 11, -4
	.cfi_offset 10, -8
	.cfi_offset 9, -12
	.cfi_offset 8, -16
	.cfi_offset 7, -20
	.cfi_offset 6, -24
	.cfi_offset 5, -28
	.cfi_offset 4, -32
	.loc 1 73 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	.loc 1 74 0
	ldr	r4, [r3, #112]
	.loc 1 73 0
	str	r2, [r3, #172]
	.loc 1 74 0
	adds	r4, r2, r4
.LVL1:
.LBB30:
.LBB31:
	.loc 1 57 0
	sxth	r3, r4
	cmp	r4, r3
	beq	.L2
	.loc 1 59 0
	mov	r5, #-2147483648
	movw	r3, #32767
	asrs	r5, r5, #16
	cmp	r4, r3
	it	le
	movle	r3, r5
.L2:
.LBE31:
.LBE30:
	.loc 1 74 0
	movs	r5, #180
	mla	r5, r5, r1, r0
	.loc 1 77 0
	ldr	r4, [r5, #120]
.LVL2:
	.loc 1 74 0
	str	r3, [r5, #124]
	.loc 1 77 0
	adds	r4, r2, r4
.LVL3:
.LBB32:
.LBB33:
	.loc 1 57 0
	sxth	r3, r4
	cmp	r4, r3
	it	eq
	asreq	r8, r4, #15
	beq	.L4
	.loc 1 59 0
	movw	r3, #32767
	cmp	r4, r3
	itete	gt
	movgt	r4, r3
.LVL4:
	movle	r4, #-2147483648
	movgt	r8, #0
	movle	r8, #-1
	it	le
	asrle	r4, r4, #16
.L4:
.LBE33:
.LBE32:
	.loc 1 77 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	.loc 1 82 0
	ldr	r6, [r3, #140]
	.loc 1 81 0
	ldr	r5, [r3, #164]
	ldr	r7, [r3, #168]
	.loc 1 82 0
	lsls	r6, r6, #2
	.loc 1 81 0
	asr	ip, r5, #15
.LBB34:
.LBB35:
	.loc 1 57 0
	sxth	r5, r6
.LBE35:
.LBE34:
	.loc 1 81 0
	asrs	r7, r7, #15
.LBB38:
.LBB36:
	.loc 1 57 0
	cmp	r6, r5
.LBE36:
.LBE38:
	.loc 1 77 0
	str	r4, [r3, #160]
.LVL5:
	.loc 1 81 0
	str	r8, [r3, #256]
.LVL6:
	str	ip, [r3, #260]
.LVL7:
	str	r7, [r3, #264]
.LVL8:
.LBB39:
.LBB37:
	.loc 1 57 0
	beq	.L5
	.loc 1 59 0
	mov	r3, #-2147483648
	movw	r5, #32767
	asrs	r3, r3, #16
	cmp	r6, r5
	it	le
	movle	r5, r3
.L5:
.LVL9:
.LBE37:
.LBE39:
	.loc 1 84 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r6, [r3, #256]
.LVL10:
	ldr	r3, [r3, #260]
	cmp	r6, r3
	beq	.L49
.LVL11:
.L6:
	.loc 1 85 0
	asr	r9, r5, #7
.L7:
	.loc 1 88 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r4, [r3, #144]
	.loc 1 87 0 discriminator 1
	cmp	r6, r7
	.loc 1 99 0
	ldr	r5, [r3, #140]
	.loc 1 88 0
	rsb	r4, r4, r4, lsl #7
	.loc 1 87 0 discriminator 1
	ite	ne
	mvnne	ip, #127
	moveq	ip, #128
	.loc 1 88 0
	lsl	r8, r4, #8
	.loc 1 96 0
	ldr	r7, [r3, #160]
	.loc 1 97 0
	ldr	r6, [r3, #164]
	.loc 1 87 0 discriminator 3
	add	ip, ip, r9
.LVL12:
	.loc 1 88 0
	mov	r4, #-1610612736
	add	ip, ip, r8, asr #15
.LVL13:
	asrs	r4, r4, #17
	.loc 1 99 0
	rsb	r5, r5, r5, lsl #8
	.loc 1 88 0
	cmp	ip, r4
	it	ge
	movge	r4, ip
.LVL14:
	.loc 1 96 0
	asrs	r7, r7, #15
	.loc 1 97 0
	asrs	r6, r6, #15
	.loc 1 93 0
	cmp	r4, #12288
	ite	lt
	movlt	ip, r4
	movge	ip, #12288
	.loc 1 99 0
	lsls	r5, r5, #7
	.loc 1 98 0 discriminator 1
	cmp	r6, r7
	ite	ne
	mvnne	r4, #191
	moveq	r4, #192
.LVL15:
	.loc 1 101 0
	add	r5, r4, r5, asr #15
.LVL16:
.LBB40:
.LBB41:
	.loc 1 57 0
	sxth	r4, r5
.LVL17:
	cmp	r5, r4
.LVL18:
.LBE41:
.LBE40:
	.loc 1 93 0
	str	ip, [r3, #156]
	.loc 1 96 0
	str	r7, [r3, #256]
	.loc 1 97 0
	str	r6, [r3, #260]
.LBB43:
.LBB42:
	.loc 1 57 0
	beq	.L10
	.loc 1 59 0
	mov	r3, #-2147483648
	movw	r4, #32767
	asrs	r3, r3, #16
	cmp	r5, r4
	it	le
	movle	r4, r3
.L10:
.LBE42:
.LBE43:
	.loc 1 101 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	.loc 1 102 0
	ldr	r5, [r3, #156]
.LVL19:
	.loc 1 101 0
	str	r4, [r3, #152]
	.loc 1 102 0
	rsb	r5, r5, #15360
.LVL20:
.LBB44:
.LBB45:
	.loc 1 57 0
	sxth	r3, r5
	cmp	r5, r3
	beq	.L11
	.loc 1 59 0
	cmp	r5, #32768
	blt	.L50
	mvn	r3, #32512
	subs	r3, r3, #254
.LVL21:
.L12:
.LBE45:
.LBE44:
	.loc 1 105 0
	cmp	r4, r3
	bge	.L14
	b	.L47
.LVL22:
.L50:
.LBB47:
.LBB46:
	.loc 1 59 0
	mov	r3, #-2147483648
	asrs	r3, r3, #16
.L11:
.LVL23:
.LBE46:
.LBE47:
	.loc 1 103 0
	cmp	r4, r3
	ble	.L51
.LVL24:
.L47:
	.loc 1 106 0
	movs	r4, #180
	mla	r4, r4, r1, r0
	str	r3, [r4, #152]
.L14:
	.loc 1 110 0
	mov	sl, #180
	mul	sl, sl, r1
	.loc 1 65 0
	add	r3, sl, #112
	.loc 1 109 0 discriminator 1
	cmp	r2, #0
	ite	ne
	movne	ip, #128
	moveq	ip, #0
.LVL25:
	.loc 1 110 0
	add	sl, r0, sl
	asrs	r2, r2, #15
.LVL26:
	.loc 1 65 0
	adds	r3, r0, r3
.LBB48:
.LBB49:
	.loc 1 59 0
	mov	r8, #-2147483648
.LBE49:
.LBE48:
	.loc 1 110 0
	str	r2, [sl, #256]
.LVL27:
	.loc 1 111 0
	movs	r4, #1
	.loc 1 65 0
	mov	r2, r3
	.loc 1 114 0 discriminator 1
	rsb	r9, ip, #0
.LBB52:
.LBB50:
	.loc 1 59 0
	movw	r7, #32767
	asr	r8, r8, #16
.LVL28:
.L18:
.LBE50:
.LBE52:
	.loc 1 113 0
	ldr	r5, [r2, #64]
	.loc 1 115 0
	ldr	r6, [r2, #92]
	.loc 1 111 0
	adds	r4, r4, #1
	.loc 1 113 0
	asrs	r5, r5, #15
	str	r5, [r2, #148]
	.loc 1 114 0
	ldr	fp, [sl, #256]
	.loc 1 115 0
	rsb	r6, r6, r6, lsl #8
	.loc 1 114 0 discriminator 1
	cmp	r5, fp
	.loc 1 115 0
	lsl	r6, r6, #7
	.loc 1 114 0 discriminator 1
	ite	eq
	moveq	r5, ip
	movne	r5, r9
.LVL29:
	.loc 1 116 0
	add	r6, r5, r6, asr #15
.LVL30:
.LBB53:
.LBB51:
	.loc 1 57 0
	sxth	r5, r6
.LVL31:
	cmp	r6, r5
	beq	.L17
	.loc 1 59 0
	cmp	r6, r7
	ite	le
	movle	r5, r8
	movgt	r5, r7
.L17:
.LVL32:
.LBE51:
.LBE53:
	.loc 1 116 0
	str	r5, [r2, #120]
	.loc 1 111 0
	adds	r2, r2, #4
.LVL33:
	.loc 1 111 0 is_stmt 0 discriminator 1
	cmp	r4, #7
	bne	.L18
	movs	r2, #6
.LVL34:
.L19:
	.loc 1 122 0 is_stmt 1
	ldr	r5, [r3, #80]
	.loc 1 123 0
	ldr	r4, [r3, #140]
	.loc 1 122 0
	str	r5, [r3, #84]
	.loc 1 123 0
	str	r4, [r3, #112]
	.loc 1 120 0 discriminator 2
	subs	r3, r3, #4
	.loc 1 120 0 is_stmt 0 discriminator 1
	subs	r2, r2, #1
.LVL35:
	bne	.L19
.LVL36:
	.loc 1 128 0 is_stmt 1
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r6, [r3, #124]
.LVL37:
	ldr	r9, [r3, #128]
	.loc 1 129 0
	ldr	r8, [r3, #164]
	.loc 1 134 0
	lsls	r4, r6, #1
	.loc 1 130 0
	ldr	ip, [r3, #156]
.LVL38:
	.loc 1 129 0
	ldr	r7, [r3, #160]
	.loc 1 130 0
	ldr	r5, [r3, #152]
.LBB54:
.LBB55:
	.loc 1 57 0
	sxth	r2, r4
	cmp	r4, r2
.LBE55:
.LBE54:
	.loc 1 128 0
	str	r9, [r3, #132]
	.loc 1 129 0
	str	r8, [r3, #168]
	.loc 1 130 0
	str	ip, [r3, #144]
.LVL39:
	.loc 1 128 0
	str	r6, [r3, #128]
	.loc 1 129 0
	str	r7, [r3, #164]
	.loc 1 130 0
	str	r5, [r3, #140]
.LVL40:
.LBB57:
.LBB56:
	.loc 1 57 0
	beq	.L20
	.loc 1 59 0
	mov	r3, #-2147483648
	movw	r2, #32767
	asrs	r3, r3, #16
	cmp	r4, r2
	it	le
	movle	r2, r3
.L20:
.LVL41:
.LBE56:
.LBE57:
	.loc 1 136 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r4, [r3, #132]
.LVL42:
	.loc 1 135 0
	mul	r5, r2, r5
	.loc 1 136 0
	lsls	r4, r4, #1
.LBB58:
.LBB59:
	.loc 1 57 0
	sxth	r2, r4
.LVL43:
.LBE59:
.LBE58:
	.loc 1 135 0
	asrs	r5, r5, #15
.LVL44:
.LBB61:
.LBB60:
	.loc 1 57 0
	cmp	r4, r2
	beq	.L21
	.loc 1 59 0
	mov	r6, #-2147483648
	movw	r2, #32767
	asrs	r6, r6, #16
	cmp	r4, r2
	it	le
	movle	r2, r6
.L21:
.LVL45:
.LBE60:
.LBE61:
	.loc 1 137 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r3, [r3, #144]
	mul	r3, r3, r2
	.loc 1 138 0
	add	r3, r5, r3, asr #15
.LVL46:
.LBB62:
.LBB63:
	.loc 1 57 0
	sxth	r2, r3
.LVL47:
	cmp	r3, r2
	beq	.L22
	.loc 1 59 0
	mov	r4, #-2147483648
.LVL48:
	movw	r2, #32767
	asrs	r4, r4, #16
	cmp	r3, r2
	it	le
	movle	r2, r4
.L22:
.LBE63:
.LBE62:
	.loc 1 138 0
	mov	r8, #180
	mul	r8, r8, r1
	add	ip, r0, r8
	.loc 1 65 0
	mov	r3, ip
.LVL49:
	add	r4, r0, #176
.LBB65:
.LBB66:
	.loc 1 59 0
	mov	r7, #-2147483648
.LBE66:
.LBE65:
	.loc 1 138 0
	str	r2, [ip, #116]
	.loc 1 141 0
	movs	r2, #0
	str	r2, [ip, #120]
.LVL50:
	.loc 1 65 0
	adds	r3, r3, #200
	add	r8, r4, r8
.LBB69:
.LBB64:
	movs	r5, #0
.LVL51:
.LBE64:
.LBE69:
.LBB70:
.LBB67:
	.loc 1 59 0
	movw	r6, #32767
	asrs	r7, r7, #16
.LVL52:
.L24:
.LBE67:
.LBE70:
	.loc 1 144 0
	ldr	r4, [r3, #-4]!
	lsls	r4, r4, #1
.LVL53:
.LBB71:
.LBB68:
	.loc 1 57 0
	sxth	r2, r4
	cmp	r4, r2
	beq	.L23
	.loc 1 59 0
	cmp	r4, r6
	ite	le
	movle	r2, r7
	movgt	r2, r6
.L23:
.LVL54:
.LBE68:
.LBE71:
	.loc 1 145 0
	ldr	r4, [r3, #28]
.LVL55:
	.loc 1 142 0 discriminator 1
	cmp	r3, r8
	.loc 1 145 0
	mul	r2, r4, r2
.LVL56:
	add	r5, r5, r2, asr #15
	str	r5, [ip, #120]
	.loc 1 142 0 discriminator 1
	bne	.L24
.LVL57:
.LBB72:
.LBB73:
	.loc 1 57 0
	sxth	r3, r5
	cmp	r3, r5
	beq	.L25
	.loc 1 59 0
	mov	r2, #-2147483648
	movw	r3, #32767
	asrs	r2, r2, #16
	cmp	r5, r3
	it	le
	movle	r3, r2
.L25:
.LBE73:
.LBE72:
	.loc 1 147 0
	movs	r2, #180
	mla	r2, r2, r1, r0
	.loc 1 150 0
	ldr	r4, [r2, #116]
	.loc 1 147 0
	str	r3, [r2, #120]
	.loc 1 150 0
	adds	r3, r3, r4
.LVL58:
.LBB74:
.LBB75:
	.loc 1 57 0
	sxth	r2, r3
	cmp	r3, r2
	beq	.L26
	.loc 1 59 0
	mov	r4, #-2147483648
	movw	r2, #32767
	asrs	r4, r4, #16
	cmp	r3, r2
	it	le
	movle	r2, r4
.L26:
.LBE75:
.LBE74:
	.loc 1 150 0
	movs	r3, #180
.LVL59:
	mla	r0, r3, r1, r0
.LVL60:
	str	r2, [r0, #112]
	.loc 1 151 0
	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.LVL61:
.L49:
	.loc 1 84 0 discriminator 1
	negs	r5, r5
.LVL62:
	.loc 1 85 0
	cmp	r5, #32768
	it	eq
	moveq	r9, #255
	beq	.L7
	b	.L6
.LVL63:
.L51:
	.loc 1 103 0
	negs	r3, r3
.LVL64:
	b	.L12
	.cfi_endproc
.LFE15:
	.fnend
	.size	block4, .-block4

	.section	.text.WebRtc_g722_encode_init,"ax",%progbits
	.align	2
	.global	WebRtc_g722_encode_init
	.thumb_func
WebRtc_g722_encode_init:
	.fnstart
.LFB16:
	.loc 1 156 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL65:
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
.LCFI1:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.cfi_offset 6, -8
	.cfi_offset 5, -12
	.cfi_offset 4, -16
	.loc 1 156 0
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	.loc 1 157 0
	cmp	r0, #0
	beq	.L61
.LVL66:
.L53:
	.loc 1 162 0
	movs	r1, #0
	mov	r0, r4
.LVL67:
	mov	r2, #488
	bl	memset(PLT)
	.loc 1 163 0
	movw	r3, #48000
	cmp	r6, r3
	beq	.L62
	.loc 1 165 0
	movw	r3, #56000
	cmp	r6, r3
	beq	.L63
	.loc 1 168 0
	movs	r3, #8
	str	r3, [r4, #12]
.L56:
	.loc 1 169 0
	lsls	r2, r5, #31
	bpl	.L58
	.loc 1 170 0
	movs	r3, #1
	str	r3, [r4, #8]
.L58:
	.loc 1 171 0
	lsls	r3, r5, #30
	bmi	.L64
	.loc 1 174 0
	movs	r3, #0
.L59:
	.loc 1 172 0
	str	r3, [r4, #4]
	.loc 1 175 0
	movs	r3, #32
	str	r3, [r4, #288]
	.loc 1 176 0
	movs	r3, #8
	str	r3, [r4, #468]
.L54:
	.loc 1 178 0
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L64:
	.loc 1 154 0
	ldr	r3, [r4, #12]
	subs	r3, r3, #8
	it	ne
	movne	r3, #1
	b	.L59
.L62:
	.loc 1 164 0
	movs	r3, #6
	str	r3, [r4, #12]
	b	.L56
.L63:
	.loc 1 166 0
	movs	r3, #7
	str	r3, [r4, #12]
	b	.L56
.LVL68:
.L61:
	.loc 1 159 0
	mov	r0, #488
.LVL69:
	bl	malloc(PLT)
	mov	r4, r0
.LVL70:
	cmp	r0, #0
	bne	.L53
	b	.L54
	.cfi_endproc
.LFE16:
	.fnend
	.size	WebRtc_g722_encode_init, .-WebRtc_g722_encode_init

	.section	.text.WebRtc_g722_encode_release,"ax",%progbits
	.align	2
	.global	WebRtc_g722_encode_release
	.thumb
	.thumb_func
	.type	WebRtc_g722_encode_release, %function
WebRtc_g722_encode_release:
	.fnstart
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0

	push	{r3, lr}
	.save	{r3, lr}

	bl	free(PLT)

	movs	r0, #0
	pop	{r3, pc}
	.cfi_endproc
	.fnend
	.size	WebRtc_g722_encode_release, .-WebRtc_g722_encode_release

	.section	.text.WebRtc_g722_encode,"ax",%progbits
	.align	2
	.global	WebRtc_g722_encode
	.thumb
	.thumb_func
	.type	WebRtc_g722_encode, %function
WebRtc_g722_encode:
	.fnstart
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0

	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}

	cmp	r3, #0
	sub	sp, sp, #28
	str	r3, [sp, #4]
	mov	r4, r0
	str	r1, [sp, #16]
	mov	fp, r2
	it	le
	movle	r8, #0
	.loc 1 292 0 discriminator 1
	ble	.L67
	.loc 1 313 0
	ldr	r3, .L117
.LVL74:
	.loc 1 292 0 discriminator 1
	mov	r8, #0
	mov	r9, #0
	.loc 1 313 0
	str	r3, [sp, #20]
	ldr	r3, .L117+4
	.loc 1 292 0 discriminator 1
	movs	r5, #0
	str	r3, [sp, #8]
	ldr	r3, .L117+8
	str	r3, [sp, #12]
	.loc 1 313 0
	ldr	r3, [sp, #20]
.LPIC8:
	add	r3, pc
	str	r3, [sp, #20]
	.loc 1 205 0
	add	r6, r3, #44
.LVL75:
.L100:
	.loc 1 294 0
	ldr	r3, [r4, #0]
	cmp	r3, #0
	beq	.L68
	.loc 1 297 0
	ldrsh	r9, [fp, r5, lsl #1]
	adds	r5, r5, #1
	asr	r9, r9, #1
.LVL76:
	.loc 1 296 0
	mov	lr, r9
.LVL77:
.L69:
	.loc 1 340 0
	ldr	r3, [r4, #112]
	rsb	lr, r3, lr
.LVL78:
.LBB76:
.LBB77:
	.loc 1 57 0
	sxth	r3, lr
	cmp	lr, r3
	beq	.L73
.LVL79:
.L116:
	.loc 1 59 0
	movw	r7, #32767
	cmp	lr, r7
	.loc 1 340 0
	itt	le
	movle	lr, #-2147483648
.LVL80:
	asrle	lr, lr, #16
	.loc 1 59 0
	ble	.L74
	.loc 1 340 0
	mov	lr, r7
.L74:
.LVL81:
.LBE77:
.LBE76:
	.loc 1 343 0
	ldr	r1, [sp, #8]
	ldr	r2, [r4, #288]
	.loc 1 345 0
	movs	r3, #1
	.loc 1 343 0
.LPIC11:
	add	r1, pc
	adds	r1, r1, #48
	b	.L77
.LVL82:
.L111:
	.loc 1 345 0
	adds	r3, r3, #1
.LVL83:
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmp	r3, #30
	beq	.L76
.LVL84:
.L77:
	.loc 1 347 0 is_stmt 1
	ldr	r0, [r1, #4]!
.LVL85:
	mul	r0, r2, r0
	.loc 1 348 0
	cmp	r7, r0, asr #12
	bge	.L111
.L76:
	.loc 1 351 0
	cmp	lr, #0
	blt	.L112
	.loc 1 351 0 is_stmt 0 discriminator 2
	ldr	r1, .L117+12
.LVL86:
.LPIC13:
	add	r1, pc
	add	r3, r1, r3, lsl #2
	ldr	r7, [r3, #304]
.LVL87:
.L79:
	.loc 1 355 0 is_stmt 1
	ldr	r1, [sp, #12]
	bic	r3, r7, #3
.LPIC14:
	add	r1, pc
	adds	r3, r1, r3
	.loc 1 361 0
	ldr	lr, [r3, #528]
	.loc 1 356 0
	ldr	r0, [r3, #432]
	.loc 1 360 0
	ldr	r3, [r4, #284]
	.loc 1 361 0
	add	r1, r1, lr, lsl #2
	.loc 1 356 0
	mul	r2, r0, r2
	.loc 1 361 0
	ldr	r1, [r1, #496]
	.loc 1 360 0
	rsb	r3, r3, r3, lsl #7
	.loc 1 356 0
	asrs	r2, r2, #15
.LVL88:
	.loc 1 361 0
	add	r1, r1, r3, asr #7
	.loc 1 362 0
	cmp	r1, #0
	.loc 1 361 0
	str	r1, [r4, #284]
	.loc 1 362 0
	blt	.L113
	.loc 1 364 0
	cmp	r1, #18432
	ble	.L82
	.loc 1 365 0
	mov	r3, #18432
	str	r3, [r4, #284]
.LVL89:
	.loc 1 368 0
	movs	r1, #0
.LVL90:
.L83:
	.loc 1 370 0 discriminator 1
	ldr	r3, .L117+16
.LPIC17:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #592]
	lsls	r3, r3, #1
.L84:
.LVL91:
	.loc 1 371 0
	lsls	r3, r3, #2
.LVL92:
	str	r3, [r4, #288]
	.loc 1 373 0
	mov	r0, r4
	movs	r1, #0
	bl	block4(PLT)
.LVL93:
	.loc 1 375 0
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L85
	.loc 1 378 0
	ldr	r3, [r4, #12]
	orr	r7, r7, #192
.LVL94:
	rsb	r2, r3, #8
	asrs	r7, r7, r2
.LVL95:
.L86:
	.loc 1 414 0
	ldr	r2, [r4, #4]
	cbz	r2, .L98
	.loc 1 417 0
	ldr	r2, [r4, #484]
	ldr	r1, [r4, #480]
	lsls	r7, r7, r2
.LVL96:
	.loc 1 418 0
	adds	r3, r2, r3
	.loc 1 417 0
	orrs	r7, r7, r1
	.loc 1 419 0
	cmp	r3, #7
	.loc 1 417 0
	str	r7, [r4, #480]
	.loc 1 418 0
	str	r3, [r4, #484]
	.loc 1 419 0
	ble	.L99
	.loc 1 421 0
	ldr	r3, [sp, #16]
	strb	r7, [r3, r8]
	.loc 1 422 0
	ldr	r2, [r4, #484]
	.loc 1 423 0
	ldr	r3, [r4, #480]
	.loc 1 421 0
	add	r8, r8, #1
.LVL97:
	.loc 1 422 0
	subs	r2, r2, #8
	.loc 1 423 0
	lsrs	r3, r3, #8
	.loc 1 422 0
	str	r2, [r4, #484]
	.loc 1 423 0
	str	r3, [r4, #480]
.LVL98:
.L99:
	.loc 1 292 0 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r5, r3
	blt	.L100
.LVL99:
.L67:
	.loc 1 432 0
	mov	r0, r8
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
.LVL100:
.L98:
	.loc 1 428 0
	ldr	r3, [sp, #16]
	strb	r7, [r3, r8]
	add	r8, r8, #1
.LVL101:
	b	.L99
.LVL102:
.L85:
	.loc 1 383 0
	ldr	r3, [r4, #292]
	rsb	r3, r3, r9
.LVL103:
.LBB79:
.LBB80:
	.loc 1 57 0
	sxth	r2, r3
	cmp	r3, r2
	beq	.L87
	.loc 1 59 0
	movw	r0, #32767
	cmp	r3, r0
	.loc 1 383 0
	itt	gt
	movgt	r3, r0
.LVL104:
	movgt	r0, r3
	.loc 1 59 0
	bgt	.L88
	.loc 1 383 0
	mov	r3, #-2147483648
	asrs	r3, r3, #16
.L88:
.LVL105:
.LBE80:
.LBE79:
	.loc 1 387 0
	ldr	r2, [r4, #468]
.LVL106:
	mov	r1, #564
	mul	r1, r1, r2
	.loc 1 388 0 discriminator 1
	cmp	r0, r1, asr #12
	ite	lt
	movlt	r1, #1
	movge	r1, #2
.LVL107:
	.loc 1 389 0
	cmp	r3, #0
	blt	.L114
	.loc 1 389 0 is_stmt 0 discriminator 2
	ldr	r3, .L117+20
.LPIC20:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	sl, [r3, #732]
.L92:
.LVL108:
	.loc 1 392 0 is_stmt 1
	ldr	r3, .L117+24
	.loc 1 397 0
	ldr	r1, [r4, #464]
.LVL109:
	.loc 1 392 0
.LPIC21:
	add	r3, pc
	add	r0, r3, sl, lsl #2
.LVL110:
	.loc 1 398 0
	ldr	lr, [r0, #772]
	.loc 1 393 0
	ldr	r0, [r0, #744]
	.loc 1 397 0
	rsb	r1, r1, r1, lsl #7
	.loc 1 398 0
	add	r3, r3, lr, lsl #2
	.loc 1 393 0
	mul	r2, r0, r2
	.loc 1 398 0
	ldr	r3, [r3, #760]
	.loc 1 393 0
	asrs	r2, r2, #15
.LVL111:
	.loc 1 398 0
	add	r1, r3, r1, asr #7
	.loc 1 399 0
	cmp	r1, #0
	.loc 1 398 0
	str	r1, [r4, #464]
	.loc 1 399 0
	blt	.L115
	.loc 1 401 0
	cmp	r1, #22528
	ble	.L95
	.loc 1 402 0
	mov	r3, #22528
	str	r3, [r4, #464]
.LVL112:
	.loc 1 405 0
	movs	r1, #0
.LVL113:
.L96:
	.loc 1 407 0 discriminator 1
	ldr	r3, .L117+28
.LPIC24:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #592]
	lsls	r3, r3, #1
.L97:
.LVL114:
	.loc 1 408 0
	lsls	r3, r3, #2
.LVL115:
	str	r3, [r4, #468]
	.loc 1 410 0
	mov	r0, r4
	movs	r1, #1
	bl	block4(PLT)
.LVL116:
	.loc 1 411 0
	ldr	r3, [r4, #12]
	orr	r7, r7, sl, lsl #6
.LVL117:
	rsb	r2, r3, #8
	asrs	r7, r7, r2
.LVL118:
	b	.L86
.LVL119:
.L68:
	.loc 1 301 0
	ldr	r3, [r4, #8]
	cbz	r3, .L70
	.loc 1 304 0
	ldrsh	lr, [fp, r5, lsl #1]
	.loc 1 340 0
	ldr	r3, [r4, #112]
	.loc 1 304 0
	adds	r5, r5, #1
	asr	lr, lr, #1
.LVL120:
	.loc 1 340 0
	rsb	lr, r3, lr
.LVL121:
.LBB81:
.LBB78:
	.loc 1 57 0
	sxth	r3, lr
	cmp	lr, r3
	bne	.L116
.LVL122:
.L73:
.LBE78:
.LBE81:
	.loc 1 343 0
	mvn	r7, lr
	cmp	lr, r7
	it	ge
	movge	r7, lr
	b	.L74
.LVL123:
.L82:
	.loc 1 369 0
	asrs	r0, r1, #11
	rsb	r0, r0, #8
	.loc 1 368 0
	asrs	r1, r1, #6
	.loc 1 370 0
	adds	r3, r0, #1
	.loc 1 368 0
	and	r1, r1, #31
.LVL124:
	.loc 1 370 0
	beq	.L83
.LVL125:
.L81:
	.loc 1 370 0 is_stmt 0 discriminator 2
	ldr	r3, .L117+32
.LPIC18:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #592]
	asrs	r3, r3, r0
	b	.L84
.LVL126:
.L112:
	.loc 1 351 0 is_stmt 1 discriminator 1
	ldr	r1, .L117+36
.LVL127:
.LPIC12:
	add	r1, pc
	add	r3, r1, r3, lsl #2
	ldr	r7, [r3, #176]
.LVL128:
	b	.L79
.LVL129:
.L113:
	.loc 1 363 0
	movs	r3, #0
	str	r3, [r4, #284]
.LVL130:
	.loc 1 369 0
	movs	r0, #8
	.loc 1 368 0
	movs	r1, #0
	b	.L81
.LVL131:
.L70:
	.loc 1 205 0
	add	r2, r4, #20
	movs	r3, #22
.L71:
	.loc 1 311 0
	ldr	r1, [r2, #4]!
	.loc 1 310 0 discriminator 1
	subs	r3, r3, #1
	.loc 1 311 0
	str	r1, [r2, #-8]
	.loc 1 310 0 discriminator 1
	bne	.L71
	.loc 1 312 0
	ldrsh	r1, [fp, r5, lsl #1]
	.loc 1 313 0
	adds	r2, r5, #1
	ldr	r0, [sp, #20]
	.loc 1 312 0
	str	r1, [r4, #104]
.LVL132:
	.loc 1 313 0
	ldrsh	r1, [fp, r2, lsl #1]
	adds	r5, r5, #2
.LVL133:
	subs	r2, r0, #4
	str	r1, [r4, #108]
	mov	r3, r4
	add	r0, r0, #48
	.loc 1 317 0
	movs	r1, #0
	.loc 1 316 0
	mov	r9, #0
	mov	ip, r5
	mov	sl, r4
	mov	lr, r6
.LVL134:
.L72:
	.loc 1 320 0
	ldr	r6, [r2, #4]!
	ldr	r5, [r3, #16]
	.loc 1 321 0
	ldr	r7, [r3, #20]
	ldr	r4, [r0, #-4]!
	adds	r3, r3, #8
	.loc 1 318 0 discriminator 1
	cmp	r2, lr
	.loc 1 320 0
	mla	r1, r6, r5, r1
.LVL135:
	.loc 1 321 0
	mla	r9, r4, r7, r9
.LVL136:
	.loc 1 318 0 discriminator 1
	bne	.L72
	mov	r6, lr
	.loc 1 326 0
	add	lr, r9, r1
	.loc 1 327 0
	rsb	r9, r1, r9
.LVL137:
	mov	r5, ip
	mov	r4, sl
	.loc 1 326 0
	asr	lr, lr, #14
.LVL138:
	.loc 1 327 0
	asr	r9, r9, #14
.LVL139:
	b	.L69
.LVL140:
.L95:
	.loc 1 406 0
	asrs	r0, r1, #11
	rsb	r0, r0, #10
	.loc 1 405 0
	asrs	r1, r1, #6
	.loc 1 407 0
	adds	r3, r0, #1
	.loc 1 405 0
	and	r1, r1, #31
.LVL141:
	.loc 1 407 0
	beq	.L96
.LVL142:
.L94:
	.loc 1 407 0 is_stmt 0 discriminator 2
	ldr	r3, .L117+40
.LPIC25:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #592]
	asrs	r3, r3, r0
	b	.L97
.LVL143:
.L87:
	.loc 1 386 0 is_stmt 1
	mvns	r0, r3
	cmp	r3, r0
	it	ge
	movge	r0, r3
	b	.L88
.LVL144:
.L115:
	.loc 1 400 0
	movs	r3, #0
	str	r3, [r4, #464]
.LVL145:
	.loc 1 406 0
	movs	r0, #10
	.loc 1 405 0
	movs	r1, #0
	b	.L94
.LVL146:
.L114:
	.loc 1 389 0 discriminator 1
	ldr	r3, .L117+44
.LPIC19:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	sl, [r3, #720]
	b	.L92
.L118:
	.align	2
.L117:
	.word	.LANCHOR0-(.LPIC8+4)
	.word	.LANCHOR0-(.LPIC11+4)
	.word	.LANCHOR0-(.LPIC14+4)
	.word	.LANCHOR0-(.LPIC13+4)
	.word	.LANCHOR0-(.LPIC17+4)
	.word	.LANCHOR0-(.LPIC20+4)
	.word	.LANCHOR0-(.LPIC21+4)
	.word	.LANCHOR0-(.LPIC24+4)
	.word	.LANCHOR0-(.LPIC18+4)
	.word	.LANCHOR0-(.LPIC12+4)
	.word	.LANCHOR0-(.LPIC25+4)
	.word	.LANCHOR0-(.LPIC19+4)
	.cfi_endproc
.LFE18:
	.fnend
	.size	WebRtc_g722_encode, .-WebRtc_g722_encode
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	qmf_coeffs.3060, %object
	.size	qmf_coeffs.3060, 48
	.text
