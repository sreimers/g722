	.syntax unified
	.arch armv7-a
	.eabi_attribute 27, 3
	.fpu neon
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.thumb
	.file	"g722_decode.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.block4,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	block4, %function
block4:
	.fnstart
.LFB15:
	.file 1 "/opt/android-ndk-r8c/projects/g722/jni/src/g722_decode.c"
	.loc 1 69 0
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
	.loc 1 76 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	.loc 1 77 0
	ldr	r4, [r3, #112]
	.loc 1 76 0
	str	r2, [r3, #172]
	.loc 1 77 0
	adds	r4, r2, r4
.LVL1:
.LBB30:
.LBB31:
	.loc 1 58 0
	sxth	r3, r4
	cmp	r4, r3
	beq	.L2
	.loc 1 60 0
	mov	r5, #-2147483648
	movw	r3, #32767
	asrs	r5, r5, #16
	cmp	r4, r3
	it	le
	movle	r3, r5
.L2:
.LBE31:
.LBE30:
	.loc 1 77 0
	movs	r5, #180
	mla	r5, r5, r1, r0
	.loc 1 80 0
	ldr	r4, [r5, #120]
.LVL2:
	.loc 1 77 0
	str	r3, [r5, #124]
	.loc 1 80 0
	adds	r4, r2, r4
.LVL3:
.LBB32:
.LBB33:
	.loc 1 58 0
	sxth	r3, r4
	cmp	r4, r3
	it	eq
	asreq	r8, r4, #15
	beq	.L4
	.loc 1 60 0
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
	.loc 1 80 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	.loc 1 85 0
	ldr	r6, [r3, #140]
	.loc 1 84 0
	ldr	r5, [r3, #164]
	ldr	r7, [r3, #168]
	.loc 1 85 0
	lsls	r6, r6, #2
	.loc 1 84 0
	asr	ip, r5, #15
.LBB34:
.LBB35:
	.loc 1 58 0
	sxth	r5, r6
.LBE35:
.LBE34:
	.loc 1 84 0
	asrs	r7, r7, #15
.LBB38:
.LBB36:
	.loc 1 58 0
	cmp	r6, r5
.LBE36:
.LBE38:
	.loc 1 80 0
	str	r4, [r3, #160]
.LVL5:
	.loc 1 84 0
	str	r8, [r3, #256]
.LVL6:
	str	ip, [r3, #260]
.LVL7:
	str	r7, [r3, #264]
.LVL8:
.LBB39:
.LBB37:
	.loc 1 58 0
	beq	.L5
	.loc 1 60 0
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
	.loc 1 87 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r6, [r3, #256]
.LVL10:
	ldr	r3, [r3, #260]
	cmp	r6, r3
	beq	.L49
.LVL11:
.L6:
	.loc 1 88 0
	asr	r9, r5, #7
.L7:
	.loc 1 92 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r4, [r3, #144]
	.loc 1 90 0 discriminator 1
	cmp	r6, r7
	.loc 1 103 0
	ldr	r5, [r3, #140]
	.loc 1 92 0
	rsb	r4, r4, r4, lsl #7
	.loc 1 90 0 discriminator 1
	ite	ne
	mvnne	ip, #127
	moveq	ip, #128
.LVL12:
	.loc 1 92 0
	lsl	r8, r4, #8
	.loc 1 100 0
	ldr	r7, [r3, #160]
	.loc 1 101 0
	ldr	r6, [r3, #164]
	.loc 1 91 0
	add	ip, ip, r9
.LVL13:
	.loc 1 92 0
	mov	r4, #-1610612736
	add	ip, ip, r8, asr #15
.LVL14:
	asrs	r4, r4, #17
	.loc 1 103 0
	rsb	r5, r5, r5, lsl #8
	.loc 1 92 0
	cmp	ip, r4
	it	ge
	movge	r4, ip
.LVL15:
	.loc 1 100 0
	asrs	r7, r7, #15
	.loc 1 101 0
	asrs	r6, r6, #15
	.loc 1 97 0
	cmp	r4, #12288
	ite	lt
	movlt	ip, r4
	movge	ip, #12288
	.loc 1 103 0
	lsls	r5, r5, #7
	.loc 1 102 0 discriminator 1
	cmp	r6, r7
	ite	ne
	mvnne	r4, #191
	moveq	r4, #192
.LVL16:
	.loc 1 105 0
	add	r5, r4, r5, asr #15
.LVL17:
.LBB40:
.LBB41:
	.loc 1 58 0
	sxth	r4, r5
.LVL18:
	cmp	r5, r4
.LVL19:
.LBE41:
.LBE40:
	.loc 1 97 0
	str	ip, [r3, #156]
	.loc 1 100 0
	str	r7, [r3, #256]
	.loc 1 101 0
	str	r6, [r3, #260]
.LBB43:
.LBB42:
	.loc 1 58 0
	beq	.L10
	.loc 1 60 0
	mov	r3, #-2147483648
	movw	r4, #32767
	asrs	r3, r3, #16
	cmp	r5, r4
	it	le
	movle	r4, r3
.L10:
.LBE42:
.LBE43:
	.loc 1 105 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	.loc 1 106 0
	ldr	r5, [r3, #156]
.LVL20:
	.loc 1 105 0
	str	r4, [r3, #152]
	.loc 1 106 0
	rsb	r5, r5, #15360
.LVL21:
.LBB44:
.LBB45:
	.loc 1 58 0
	sxth	r3, r5
	cmp	r5, r3
	beq	.L11
	.loc 1 60 0
	cmp	r5, #32768
	blt	.L50
	mvn	r3, #32512
	subs	r3, r3, #254
.LVL22:
.L12:
.LBE45:
.LBE44:
	.loc 1 109 0
	cmp	r4, r3
	bge	.L14
	b	.L47
.LVL23:
.L50:
.LBB47:
.LBB46:
	.loc 1 60 0
	mov	r3, #-2147483648
	asrs	r3, r3, #16
.L11:
.LVL24:
.LBE46:
.LBE47:
	.loc 1 107 0
	cmp	r4, r3
	ble	.L51
.LVL25:
.L47:
	.loc 1 110 0
	movs	r4, #180
	mla	r4, r4, r1, r0
	str	r3, [r4, #152]
.L14:
	.loc 1 114 0
	mov	sl, #180
	mul	sl, sl, r1
	.loc 1 68 0
	add	r3, sl, #112
	.loc 1 113 0 discriminator 1
	cmp	r2, #0
	ite	ne
	movne	ip, #128
	moveq	ip, #0
.LVL26:
	.loc 1 114 0
	add	sl, r0, sl
	asrs	r2, r2, #15
.LVL27:
	.loc 1 68 0
	adds	r3, r0, r3
.LBB48:
.LBB49:
	.loc 1 60 0
	mov	r8, #-2147483648
.LBE49:
.LBE48:
	.loc 1 114 0
	str	r2, [sl, #256]
.LVL28:
	.loc 1 115 0
	movs	r4, #1
	.loc 1 68 0
	mov	r2, r3
	.loc 1 118 0 discriminator 1
	rsb	r9, ip, #0
.LBB52:
.LBB50:
	.loc 1 60 0
	movw	r7, #32767
	asr	r8, r8, #16
.LVL29:
.L18:
.LBE50:
.LBE52:
	.loc 1 117 0
	ldr	r5, [r2, #64]
	.loc 1 119 0
	ldr	r6, [r2, #92]
	.loc 1 115 0
	adds	r4, r4, #1
	.loc 1 117 0
	asrs	r5, r5, #15
	str	r5, [r2, #148]
	.loc 1 118 0
	ldr	fp, [sl, #256]
	.loc 1 119 0
	rsb	r6, r6, r6, lsl #8
	.loc 1 118 0 discriminator 1
	cmp	r5, fp
	.loc 1 119 0
	lsl	r6, r6, #7
	.loc 1 118 0 discriminator 1
	ite	eq
	moveq	r5, ip
	movne	r5, r9
.LVL30:
	.loc 1 120 0
	add	r6, r5, r6, asr #15
.LVL31:
.LBB53:
.LBB51:
	.loc 1 58 0
	sxth	r5, r6
.LVL32:
	cmp	r6, r5
	beq	.L17
	.loc 1 60 0
	cmp	r6, r7
	ite	le
	movle	r5, r8
	movgt	r5, r7
.L17:
.LVL33:
.LBE51:
.LBE53:
	.loc 1 120 0
	str	r5, [r2, #120]
	.loc 1 115 0
	adds	r2, r2, #4
.LVL34:
	.loc 1 115 0 is_stmt 0 discriminator 1
	cmp	r4, #7
	bne	.L18
	movs	r2, #6
.LVL35:
.L19:
	.loc 1 126 0 is_stmt 1
	ldr	r5, [r3, #80]
	.loc 1 127 0
	ldr	r4, [r3, #140]
	.loc 1 126 0
	str	r5, [r3, #84]
	.loc 1 127 0
	str	r4, [r3, #112]
	.loc 1 124 0 discriminator 2
	subs	r3, r3, #4
	.loc 1 124 0 is_stmt 0 discriminator 1
	subs	r2, r2, #1
.LVL36:
	bne	.L19
.LVL37:
	.loc 1 132 0 is_stmt 1
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r6, [r3, #124]
.LVL38:
	ldr	r9, [r3, #128]
	.loc 1 133 0
	ldr	r8, [r3, #164]
	.loc 1 138 0
	lsls	r4, r6, #1
	.loc 1 134 0
	ldr	ip, [r3, #156]
.LVL39:
	.loc 1 133 0
	ldr	r7, [r3, #160]
	.loc 1 134 0
	ldr	r5, [r3, #152]
.LBB54:
.LBB55:
	.loc 1 58 0
	sxth	r2, r4
	cmp	r4, r2
.LBE55:
.LBE54:
	.loc 1 132 0
	str	r9, [r3, #132]
	.loc 1 133 0
	str	r8, [r3, #168]
	.loc 1 134 0
	str	ip, [r3, #144]
.LVL40:
	.loc 1 132 0
	str	r6, [r3, #128]
	.loc 1 133 0
	str	r7, [r3, #164]
	.loc 1 134 0
	str	r5, [r3, #140]
.LVL41:
.LBB57:
.LBB56:
	.loc 1 58 0
	beq	.L20
	.loc 1 60 0
	mov	r3, #-2147483648
	movw	r2, #32767
	asrs	r3, r3, #16
	cmp	r4, r2
	it	le
	movle	r2, r3
.L20:
.LVL42:
.LBE56:
.LBE57:
	.loc 1 140 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r4, [r3, #132]
.LVL43:
	.loc 1 139 0
	mul	r5, r2, r5
	.loc 1 140 0
	lsls	r4, r4, #1
.LBB58:
.LBB59:
	.loc 1 58 0
	sxth	r2, r4
.LVL44:
.LBE59:
.LBE58:
	.loc 1 139 0
	asrs	r5, r5, #15
.LVL45:
.LBB61:
.LBB60:
	.loc 1 58 0
	cmp	r4, r2
	beq	.L21
	.loc 1 60 0
	mov	r6, #-2147483648
	movw	r2, #32767
	asrs	r6, r6, #16
	cmp	r4, r2
	it	le
	movle	r2, r6
.L21:
.LVL46:
.LBE60:
.LBE61:
	.loc 1 141 0
	movs	r3, #180
	mla	r3, r3, r1, r0
	ldr	r3, [r3, #144]
	mul	r3, r3, r2
	.loc 1 142 0
	add	r3, r5, r3, asr #15
.LVL47:
.LBB62:
.LBB63:
	.loc 1 58 0
	sxth	r2, r3
.LVL48:
	cmp	r3, r2
	beq	.L22
	.loc 1 60 0
	mov	r4, #-2147483648
.LVL49:
	movw	r2, #32767
	asrs	r4, r4, #16
	cmp	r3, r2
	it	le
	movle	r2, r4
.L22:
.LBE63:
.LBE62:
	.loc 1 142 0
	mov	r8, #180
	mul	r8, r8, r1
	add	ip, r0, r8
	.loc 1 68 0
	mov	r3, ip
.LVL50:
	add	r4, r0, #176
.LBB65:
.LBB66:
	.loc 1 60 0
	mov	r7, #-2147483648
.LBE66:
.LBE65:
	.loc 1 142 0
	str	r2, [ip, #116]
	.loc 1 145 0
	movs	r2, #0
	str	r2, [ip, #120]
.LVL51:
	.loc 1 68 0
	adds	r3, r3, #200
	add	r8, r4, r8
.LBB69:
.LBB64:
	movs	r5, #0
.LVL52:
.LBE64:
.LBE69:
.LBB70:
.LBB67:
	.loc 1 60 0
	movw	r6, #32767
	asrs	r7, r7, #16
.LVL53:
.L24:
.LBE67:
.LBE70:
	.loc 1 148 0
	ldr	r4, [r3, #-4]!
	lsls	r4, r4, #1
.LVL54:
.LBB71:
.LBB68:
	.loc 1 58 0
	sxth	r2, r4
	cmp	r4, r2
	beq	.L23
	.loc 1 60 0
	cmp	r4, r6
	ite	le
	movle	r2, r7
	movgt	r2, r6
.L23:
.LVL55:
.LBE68:
.LBE71:
	.loc 1 149 0
	ldr	r4, [r3, #28]
.LVL56:
	.loc 1 146 0 discriminator 1
	cmp	r3, r8
	.loc 1 149 0
	mul	r2, r4, r2
.LVL57:
	add	r5, r5, r2, asr #15
	str	r5, [ip, #120]
	.loc 1 146 0 discriminator 1
	bne	.L24
.LVL58:
.LBB72:
.LBB73:
	.loc 1 58 0
	sxth	r3, r5
	cmp	r3, r5
	beq	.L25
	.loc 1 60 0
	mov	r2, #-2147483648
	movw	r3, #32767
	asrs	r2, r2, #16
	cmp	r5, r3
	it	le
	movle	r3, r2
.L25:
.LBE73:
.LBE72:
	.loc 1 151 0
	movs	r2, #180
	mla	r2, r2, r1, r0
	.loc 1 154 0
	ldr	r4, [r2, #116]
	.loc 1 151 0
	str	r3, [r2, #120]
	.loc 1 154 0
	adds	r3, r3, r4
.LVL59:
.LBB74:
.LBB75:
	.loc 1 58 0
	sxth	r2, r3
	cmp	r3, r2
	beq	.L26
	.loc 1 60 0
	mov	r4, #-2147483648
	movw	r2, #32767
	asrs	r4, r4, #16
	cmp	r3, r2
	it	le
	movle	r2, r4
.L26:
.LBE75:
.LBE74:
	.loc 1 154 0
	movs	r3, #180
.LVL60:
	mla	r0, r3, r1, r0
.LVL61:
	str	r2, [r0, #112]
	.loc 1 155 0
	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.LVL62:
.L49:
	.loc 1 87 0 discriminator 1
	negs	r5, r5
.LVL63:
	.loc 1 88 0
	cmp	r5, #32768
	it	eq
	moveq	r9, #255
	beq	.L7
	b	.L6
.LVL64:
.L51:
	.loc 1 107 0
	negs	r3, r3
.LVL65:
	b	.L12
	.cfi_endproc
.LFE15:
	.fnend
	.size	block4, .-block4
	.section	.text.WebRtc_g722_decode_init,"ax",%progbits
	.align	2
	.global	WebRtc_g722_decode_init
	.thumb
	.thumb_func
	.type	WebRtc_g722_decode_init, %function
WebRtc_g722_decode_init:
	.fnstart
.LFB16:
	.loc 1 161 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL66:
	push	{r4, r5, r6, lr}
	.save {r4, r5, r6, lr}
.LCFI1:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -4
	.cfi_offset 6, -8
	.cfi_offset 5, -12
	.cfi_offset 4, -16
	.loc 1 161 0
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	.loc 1 162 0
	cmp	r0, #0
	beq	.L61
.LVL67:
.L53:
	.loc 1 167 0
	movs	r1, #0
	mov	r0, r4
.LVL68:
	mov	r2, #488
	bl	memset(PLT)
	.loc 1 168 0
	movw	r3, #48000
	cmp	r6, r3
	beq	.L62
	.loc 1 170 0
	movw	r3, #56000
	cmp	r6, r3
	beq	.L63
	.loc 1 173 0
	movs	r3, #8
	str	r3, [r4, #12]
.L56:
	.loc 1 174 0
	lsls	r2, r5, #31
	bpl	.L58
	.loc 1 175 0
	movs	r3, #1
	str	r3, [r4, #8]
.L58:
	.loc 1 176 0
	lsls	r3, r5, #30
	bmi	.L64
	.loc 1 179 0
	movs	r3, #0
.L59:
	.loc 1 177 0
	str	r3, [r4, #4]
	.loc 1 180 0
	movs	r3, #32
	str	r3, [r4, #288]
	.loc 1 181 0
	movs	r3, #8
	str	r3, [r4, #468]
.L54:
	.loc 1 183 0
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L64:
	.loc 1 158 0
	ldr	r3, [r4, #12]
	subs	r3, r3, #8
	it	ne
	movne	r3, #1
	b	.L59
.L62:
	.loc 1 169 0
	movs	r3, #6
	str	r3, [r4, #12]
	b	.L56
.L63:
	.loc 1 171 0
	movs	r3, #7
	str	r3, [r4, #12]
	b	.L56
.LVL69:
.L61:
	.loc 1 164 0
	mov	r0, #488
.LVL70:
	bl	malloc(PLT)
	mov	r4, r0
.LVL71:
	cmp	r0, #0
	bne	.L53
	b	.L54
	.cfi_endproc
.LFE16:
	.fnend
	.size	WebRtc_g722_decode_init, .-WebRtc_g722_decode_init
	.section	.text.WebRtc_g722_decode_release,"ax",%progbits
	.align	2
	.global	WebRtc_g722_decode_release
	.thumb
	.thumb_func
	.type	WebRtc_g722_decode_release, %function
WebRtc_g722_decode_release:
	.fnstart
.LFB17:
	.loc 1 187 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL72:
	push	{r3, lr}
	.save {r3, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 14, -4
	.cfi_offset 3, -8
	.loc 1 188 0
	bl	free(PLT)
.LVL73:
	.loc 1 190 0
	movs	r0, #0
	pop	{r3, pc}
	.cfi_endproc
.LFE17:
	.fnend
	.size	WebRtc_g722_decode_release, .-WebRtc_g722_decode_release
	.section	.text.WebRtc_g722_decode,"ax",%progbits
	.align	2
	.global	WebRtc_g722_decode
	.thumb
	.thumb_func
	.type	WebRtc_g722_decode, %function
WebRtc_g722_decode:
	.fnstart
.LFB18:
	.loc 1 195 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL74:
	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.LCFI3:
	.cfi_def_cfa_offset 36
	.cfi_offset 14, -4
	.cfi_offset 11, -8
	.cfi_offset 10, -12
	.cfi_offset 9, -16
	.cfi_offset 8, -20
	.cfi_offset 7, -24
	.cfi_offset 6, -28
	.cfi_offset 5, -32
	.cfi_offset 4, -36
	.loc 1 267 0
	movs	r5, #0
	.loc 1 195 0
	.pad #28
	sub	sp, sp, #28
.LCFI4:
	.cfi_def_cfa_offset 64
	.loc 1 269 0 discriminator 1
	cmp	r3, #0
	.loc 1 195 0
	str	r3, [sp, #8]
	mov	r4, r0
	str	r1, [sp, #0]
	str	r2, [sp, #16]
	.loc 1 269 0 discriminator 1
	ble	.L67
	.loc 1 390 0
	ldr	r3, .L103
.LVL75:
	ldr	ip, .L103+4
	.loc 1 269 0 discriminator 1
	movs	r6, #0
	.loc 1 390 0
.LPIC22:
	add	r3, pc
	str	r3, [sp, #20]
	str	ip, [sp, #12]
	.loc 1 193 0
	ldr	ip, [sp, #20]
	.loc 1 269 0 discriminator 1
	movs	r3, #0
	movs	r5, #0
	str	r3, [sp, #4]
	.loc 1 193 0
	add	fp, ip, #760
	b	.L92
.LVL76:
.L101:
	.loc 1 274 0
	ldr	r1, [r4, #476]
	ldr	r3, [r4, #12]
	cmp	r1, r3
	it	ge
	ldrge	r2, [r4, #472]
	bge	.L70
	.loc 1 276 0
	ldr	ip, [sp, #16]
	ldr	r0, [r4, #472]
	ldrb	r2, [ip, r6]	@ zero_extendqisi2
	adds	r6, r6, #1
.LVL77:
	lsls	r2, r2, r1
	.loc 1 277 0
	adds	r1, r1, #8
	.loc 1 276 0
	orrs	r2, r2, r0
.LVL78:
.L70:
	.loc 1 279 0
	mov	r8, #1
	lsl	r8, r8, r3
	.loc 1 280 0
	lsrs	r0, r2, r3
	.loc 1 279 0
	add	r8, r8, #-1
	.loc 1 281 0
	subs	r1, r1, r3
	.loc 1 288 0
	cmp	r3, #6
	.loc 1 279 0
	and	r8, r2, r8
.LVL79:
	.loc 1 280 0
	str	r0, [r4, #472]
	.loc 1 281 0
	str	r1, [r4, #476]
	.loc 1 288 0
	beq	.L73
.L102:
	cmp	r3, #7
	beq	.L74
	.loc 1 294 0
	ldr	r3, .L103+8
	.loc 1 292 0
	and	r0, r8, #63
.LVL80:
	.loc 1 295 0
	and	r1, r0, #60
	.loc 1 294 0
.LPIC8:
	add	r3, pc
	.loc 1 295 0
	adds	r2, r3, r1
	.loc 1 294 0
	ldr	r0, [r3, r0, lsl #2]
.LVL81:
	.loc 1 295 0
	ldr	ip, [r2, #256]
	.loc 1 293 0
	asr	r8, r8, #6
.LVL82:
	and	r8, r8, #3
.LVL83:
.L75:
	.loc 1 326 0
	ldr	r3, [sp, #12]
	.loc 1 310 0
	ldr	r2, [r4, #288]
	.loc 1 312 0
	movw	r9, #16383
	.loc 1 326 0
.LPIC13:
	add	r3, pc
	.loc 1 324 0
	adds	r1, r3, r1
	.loc 1 326 0
	ldr	r7, [r1, #480]
	.loc 1 310 0
	mul	lr, r0, r2
.LVL84:
	.loc 1 325 0
	ldr	r1, [r4, #284]
	.loc 1 312 0
	ldr	r0, [r4, #112]
	.loc 1 321 0
	mul	r2, ip, r2
	.loc 1 326 0
	add	r3, r3, r7, lsl #2
	.loc 1 312 0
	mov	ip, #-2147483648
	.loc 1 326 0
	ldr	r3, [r3, #448]
	.loc 1 312 0
	add	r0, r0, lr, asr #15
.LVL85:
	asr	ip, ip, #17
	.loc 1 325 0
	rsb	r1, r1, r1, lsl #7
	.loc 1 312 0
	cmp	r0, ip
	it	lt
	movlt	r0, ip
.LVL86:
	cmp	r0, r9
	ite	lt
	movlt	r7, r0
	movge	r7, r9
.LVL87:
	.loc 1 321 0
	asrs	r2, r2, #15
.LVL88:
	.loc 1 327 0
	adds	r1, r3, r1, asr #7
.LVL89:
	bmi	.L76
	.loc 1 329 0
	cmp	r1, #18432
	bgt	.L77
	.loc 1 335 0
	asrs	r0, r1, #11
	.loc 1 334 0
	asrs	r3, r1, #6
	.loc 1 335 0
	rsb	r0, r0, #8
	.loc 1 331 0
	str	r1, [r4, #284]
	.loc 1 334 0
	and	r1, r3, #31
.LVL90:
	.loc 1 336 0
	adds	r3, r0, #1
	beq	.L93
.LVL91:
.L78:
	.loc 1 336 0 is_stmt 0 discriminator 2
	ldr	r3, .L103+12
.LPIC16:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #544]
	asrs	r3, r3, r0
.L79:
.LVL92:
	.loc 1 337 0 is_stmt 1
	lsls	r3, r3, #2
.LVL93:
	str	r3, [r4, #288]
	.loc 1 339 0
	mov	r0, r4
	movs	r1, #0
	bl	block4(PLT)
.LVL94:
	.loc 1 341 0
	ldr	r3, [r4, #8]
	cmp	r3, #0
	bne	.L80
.LVL95:
	.loc 1 344 0
	ldr	r1, .L103+16
	.loc 1 345 0
	ldr	r2, [r4, #468]
	.loc 1 347 0
	ldr	ip, [r4, #292]
	.loc 1 344 0
.LPIC17:
	add	r1, pc
	add	r8, r1, r8, lsl #2
.LVL96:
	.loc 1 345 0
	ldr	r9, [r8, #672]
	.loc 1 357 0
	ldr	r0, [r8, #700]
	.loc 1 356 0
	ldr	lr, [r4, #464]
	.loc 1 345 0
	mul	r2, r9, r2
	.loc 1 357 0
	add	r1, r1, r0, lsl #2
	.loc 1 345 0
	asrs	r2, r2, #15
.LVL97:
	.loc 1 347 0
	mov	r0, #-2147483648
	.loc 1 357 0
	ldr	r1, [r1, #688]
	.loc 1 347 0
	asrs	r0, r0, #17
	add	ip, r2, ip
.LVL98:
	.loc 1 356 0
	rsb	lr, lr, lr, lsl #7
	.loc 1 347 0
	cmp	ip, r0
	it	lt
	movlt	ip, r0
.LVL99:
	movw	r8, #16383
	cmp	ip, r8
	it	ge
	movge	ip, r8
	.loc 1 358 0
	adds	r1, r1, lr, asr #7
	.loc 1 347 0
	str	ip, [sp, #4]
.LVL100:
	.loc 1 358 0
	bmi	.L81
	.loc 1 360 0
	cmp	r1, #22528
	bgt	.L82
.LVL101:
	.loc 1 366 0
	asrs	r0, r1, #11
	.loc 1 365 0
	asrs	r3, r1, #6
	.loc 1 366 0
	rsb	r0, r0, #10
	.loc 1 362 0
	str	r1, [r4, #464]
	.loc 1 365 0
	and	r1, r3, #31
.LVL102:
	.loc 1 367 0
	adds	r3, r0, #1
	beq	.L94
.LVL103:
.L83:
	.loc 1 367 0 is_stmt 0 discriminator 2
	ldr	r3, .L103+20
.LPIC21:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #544]
	asrs	r0, r3, r0
.L84:
.LVL104:
	.loc 1 368 0 is_stmt 1
	lsls	r0, r0, #2
.LVL105:
	str	r0, [r4, #468]
	.loc 1 370 0
	movs	r1, #1
	mov	r0, r4
	bl	block4(PLT)
.LVL106:
.L80:
	.loc 1 373 0
	ldr	r3, [r4, #0]
	cbz	r3, .L85
	.loc 1 376 0
	ldr	ip, [sp, #4]
	adds	r3, r5, #1
	.loc 1 375 0
	lsls	r7, r7, #1
.LVL107:
	.loc 1 376 0
	lsl	r2, ip, #1
	.loc 1 375 0
	ldr	ip, [sp, #0]
	strh	r7, [ip, r5, lsl #1]	@ movhi
.LVL108:
	.loc 1 376 0
	strh	r2, [ip, r3, lsl #1]	@ movhi
	adds	r5, r5, #2
.LVL109:
.L86:
	.loc 1 269 0 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r6, r3
	bge	.L67
.LVL110:
.L92:
	.loc 1 271 0
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bne	.L101
	.loc 1 285 0
	ldr	r3, [r4, #12]
	ldr	ip, [sp, #16]
	ldrb	r8, [ip, r6]	@ zero_extendqisi2
.LVL111:
	adds	r6, r6, #1
.LVL112:
	.loc 1 288 0
	cmp	r3, #6
	bne	.L102
.L73:
	.loc 1 306 0
	ldr	r3, .L103+24
	.loc 1 304 0
	and	r1, r8, #15
.LVL113:
	.loc 1 306 0
	lsls	r1, r1, #2
.LVL114:
.LPIC12:
	add	r3, pc
	adds	r3, r3, r1
	ldr	r0, [r3, #256]
	.loc 1 305 0
	asr	r8, r8, #4
.LVL115:
	and	r8, r8, #3
.LVL116:
	.loc 1 307 0
	mov	ip, r0
	b	.L75
.LVL117:
.L85:
	.loc 1 380 0
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L87
	.loc 1 382 0
	ldr	r3, [sp, #0]
	lsls	r7, r7, #1
.LVL118:
	strh	r7, [r3, r5, lsl #1]	@ movhi
	.loc 1 269 0 discriminator 1
	ldr	r3, [sp, #8]
	.loc 1 382 0
	adds	r5, r5, #1
.LVL119:
	.loc 1 269 0 discriminator 1
	cmp	r6, r3
	blt	.L92
.LVL120:
.L67:
	.loc 1 408 0
	mov	r0, r5
	add	sp, sp, #28
	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
.LVL121:
.L77:
	.loc 1 331 0
	mov	r3, #18432
	str	r3, [r4, #284]
.LVL122:
	.loc 1 334 0
	movs	r1, #0
.LVL123:
.L93:
	.loc 1 336 0 discriminator 1
	ldr	r3, .L103+28
.LPIC15:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r3, [r3, #544]
	lsls	r3, r3, #1
	b	.L79
.LVL124:
.L74:
	.loc 1 298 0
	and	r2, r8, #31
.LVL125:
	.loc 1 300 0
	ldr	r3, .L103+32
	.loc 1 301 0
	asrs	r1, r2, #1
	.loc 1 299 0
	asr	r8, r8, #5
.LVL126:
	.loc 1 300 0
.LPIC10:
	add	r3, pc
	.loc 1 301 0
	lsls	r1, r1, #2
	.loc 1 300 0
	add	r2, r3, r2, lsl #2
.LVL127:
	.loc 1 301 0
	adds	r3, r3, r1
	.loc 1 299 0
	and	r8, r8, #3
.LVL128:
	.loc 1 300 0
	ldr	r0, [r2, #320]
.LVL129:
	.loc 1 301 0
	ldr	ip, [r3, #256]
	.loc 1 302 0
	b	.L75
.LVL130:
.L76:
	.loc 1 331 0
	movs	r3, #0
	str	r3, [r4, #284]
.LVL131:
	.loc 1 335 0
	movs	r0, #8
	.loc 1 334 0
	movs	r1, #0
	b	.L78
.LVL132:
.L87:
	.loc 1 193 0
	add	r2, r4, #20
	movs	r3, #22
.L88:
	.loc 1 388 0
	ldr	r1, [r2, #4]!
	.loc 1 387 0 discriminator 1
	subs	r3, r3, #1
	.loc 1 388 0
	str	r1, [r2, #-8]
	.loc 1 387 0 discriminator 1
	bne	.L88
	.loc 1 389 0
	ldr	ip, [sp, #4]
	.loc 1 393 0
	movs	r1, #0
	.loc 1 392 0
	movs	r0, #0
	.loc 1 389 0
	add	r3, ip, r7
	.loc 1 390 0
	rsb	r7, ip, r7
.LVL133:
	ldr	ip, [sp, #20]
	.loc 1 389 0
	str	r3, [r4, #104]
	.loc 1 390 0
	str	r7, [r4, #108]
.LVL134:
	mov	r3, r4
	add	r2, ip, #712
	add	r7, ip, #764
	.loc 1 392 0
	mov	sl, r6
	mov	r8, r5
	mov	r9, r4
.LVL135:
.L89:
	.loc 1 396 0
	ldr	ip, [r2, #4]!
	ldr	r5, [r3, #16]
	.loc 1 397 0
	ldr	r6, [r3, #20]
	ldr	r4, [r7, #-4]!
	adds	r3, r3, #8
	.loc 1 394 0 discriminator 1
	cmp	r2, fp
	.loc 1 396 0
	mla	r1, ip, r5, r1
.LVL136:
	.loc 1 397 0
	mla	r0, r4, r6, r0
.LVL137:
	.loc 1 394 0 discriminator 1
	bne	.L89
	.loc 1 402 0
	asrs	r0, r0, #11
.LVL138:
.LBB76:
.LBB77:
	.loc 1 57 0
	uxth	r2, r0
.LVL139:
	mov	r5, r8
	.loc 1 58 0
	sxth	r3, r2
.LBE77:
.LBE76:
	.loc 1 402 0
	lsls	r7, r5, #1
.LBB79:
.LBB78:
	.loc 1 58 0
	cmp	r0, r3
	mov	r6, sl
	mov	r4, r9
	beq	.L90
	.loc 1 60 0
	movw	r2, #32767
.LVL140:
	.loc 1 61 0
	cmp	r0, r2
	it	le
	movle	r2, #32768
.L90:
.LBE78:
.LBE79:
	.loc 1 403 0
	asrs	r1, r1, #11
.LVL141:
	.loc 1 402 0
	ldr	ip, [sp, #0]
.LBB80:
.LBB81:
	.loc 1 57 0
	uxth	r3, r1
	.loc 1 58 0
	sxth	r0, r3
.LVL142:
.LBE81:
.LBE80:
	.loc 1 402 0
	strh	r2, [ip, r7]	@ movhi
.LVL143:
	adds	r2, r5, #1
.LBB83:
.LBB82:
	.loc 1 58 0
	cmp	r1, r0
	beq	.L91
	.loc 1 60 0
	movw	r3, #32767
.LVL144:
	.loc 1 61 0
	cmp	r1, r3
	it	le
	movle	r3, #32768
.L91:
.LBE82:
.LBE83:
	.loc 1 403 0
	ldr	ip, [sp, #0]
	adds	r5, r5, #2
.LVL145:
	strh	r3, [ip, r2, lsl #1]	@ movhi
	b	.L86
.LVL146:
.L82:
	.loc 1 362 0
	mov	r3, #22528
	str	r3, [r4, #464]
.LVL147:
	.loc 1 365 0
	movs	r1, #0
.LVL148:
.L94:
	.loc 1 367 0 discriminator 1
	ldr	r3, .L103+36
.LPIC20:
	add	r3, pc
	add	r3, r3, r1, lsl #2
	ldr	r0, [r3, #544]
	lsls	r0, r0, #1
	b	.L84
.L81:
.LVL149:
	.loc 1 362 0
	str	r3, [r4, #464]
.LVL150:
	.loc 1 366 0
	movs	r0, #10
	.loc 1 365 0
	movs	r1, #0
	b	.L83
.L104:
	.align	2
.L103:
	.word	.LANCHOR0-(.LPIC22+4)
	.word	.LANCHOR0-(.LPIC13+4)
	.word	.LANCHOR0-(.LPIC8+4)
	.word	.LANCHOR0-(.LPIC16+4)
	.word	.LANCHOR0-(.LPIC17+4)
	.word	.LANCHOR0-(.LPIC21+4)
	.word	.LANCHOR0-(.LPIC12+4)
	.word	.LANCHOR0-(.LPIC15+4)
	.word	.LANCHOR0-(.LPIC10+4)
	.word	.LANCHOR0-(.LPIC20+4)
	.cfi_endproc
.LFE18:
	.fnend
	.size	WebRtc_g722_decode, .-WebRtc_g722_decode
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	qm6.3064, %object
	.size	qm6.3064, 256
	.text
