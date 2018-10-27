section .text
strlen:
  xor rdx, rdx
  dec rdx          ; This compensates for the INC that is happening first.
.next:
  inc rdx
  cmp byte [rsi + rdx], 0 ; check for NULL descriptor.
  jne .next
  ret

fputs:
  ; string passed through rsi
  call strlen      ; Result is in RDX

  mov rax, 1
  syscall
  
puts:
  mov rdi, 1
  call fputs
