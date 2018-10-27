section .text
strlen:
  xor rdx, rdx
  dec rdx          ; This compensates for the INC that is happening first.
.next:
  inc rdx
  cmp byte [rsi + rdx], 0
  jne .next
  ret

puts:
  ; string passed through rsi
  call strlen      ; Result is in RDX

  mov rax, 1
  syscall
