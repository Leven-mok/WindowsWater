[org 0x7e00]

mov bx, ExtenedSpaceSuccess
call PrintString
jmp $

%include "print.asm"

ExtenedSpaceSuccess:
   db "Success Startup OS Core 0.7"
   jmp EnterProtectedMode

EnterProtectedMode:
   cll
   jmp $
   db "Success Enter 32-Bit Mode"
   
EnableA20:
   in al, 0x92
   or al, 2
   out 0x92 al
   ret

times 2048-($-$$) db 0
