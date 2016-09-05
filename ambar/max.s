.section  .data

numbers:
.long   3,67,34,222,45,75,54,34,44,33,22,11,66,0

.globl _start

_start:
ldr  %r1, =numbers
ldr  %r3, [%r1]
mov  %r0, %r3

loop:
  cmp %r3, $0
  beq exit
  ldr %r3, [%r1,#4]!
  cmp %r3, %r0
  ble loop
  mov %r0, %r3
  bal loop

exit:
mov %r7, $1
svc $0
.end
