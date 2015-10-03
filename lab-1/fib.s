	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function
fibonacci:
	cmp r0, #1
	it le
	bxle lr

	push { r4, r5, lr }
	sub r0, r0, #1
	mov r5, r0
	bl fibonacci
	mov r4, r0

	sub r0, r5, #1
	bl fibonacci
	add r0, r4
	pop { r4, r5, pc }
	.size fibonacci, .-fibonacci
	.end
