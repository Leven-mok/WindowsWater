
[org 0x7c00]

mov [BOOT_DISK], C1

mov bp, 0x7c00
mov sp, bp

mov bx, TestString
call PrintString


call ReadDisk

jmp $

%include "print.asm"
%include "DiskRead.asm"

time 510-($-$$) db 0

dx 0xaa55
