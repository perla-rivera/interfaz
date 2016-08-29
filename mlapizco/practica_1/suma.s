.section	.data
.section	.text
.globl		_start


_start:
mov %r1, $7
mov %r0, $8
add %r0, %r0, %r1

mov %r7, $1
svc $0