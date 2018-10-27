section .text
strlen:

  .loop
puts:
  ; string stored on rsi
  mov rax, 1
  call strlen
 syscall
