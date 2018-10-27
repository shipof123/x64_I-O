section .text
strlen:
  xor rdx, rdx
  .loop:
  cmp [rsi + rdx], 0
  je .exit
  inc rdx
  jmp .loop
  .exit:
  ret ; value in rdx

puts:
  ; string passed through rsi
  mov rax, 1
  call strlen
  syscall
