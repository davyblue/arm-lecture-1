	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global swap
	.type swap, function

swap:
	mov	r3, r0, lsr #8
	orr	r0, r3, r0, asl #8
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	bx	lr
	
	.size swap, .-swap
	.end
