[org 0x7e00]

mov bx, ExtenedSpaceSuccess
call PrintString
jmp $

%include "print.asm"

ExtenedSpaceSuccess:
   db "Success Startup OS Core 0.7"

times 2048-($-$$) db 0
