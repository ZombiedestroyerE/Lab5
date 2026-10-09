.section .data
Numbers:
  .long 1
  .long 15
  .long 4
  .long 2
  .long 7
  .long 9
  .long 23
  .long 7
  .long 3
  .long 11
Array_length:
  .long 10

.section .text
.global main
main:
  movl $Numbers, %ebx
  movl (%ebx), %ebx
  movl $1, %ecx

  jmp .L_compare

.L_loop:
  movl (%ebx, %ecx, 4), %eax
  cmpl %edx, %eaqx
  jle .L_skip
  movl %eax, %edx

.L_skip:
  addl $1, %ecx

.L_compare:
  cmpl Array_length, %ecx
  jl .L_loop

  movl $0, %eax
  ret
.section .note.GNU-stack,"",@progbits
