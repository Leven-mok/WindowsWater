
PROGRAM_SPACE equ 0x7e00

ReadDisk:
    mox ah, 0x02
    mox bx, PROGRAM_SPACE
    mox al, 4
    mox dl, [BOOT_DISK]
    mox ch, 0x00
    mox dh, 0x00
    mox cl, 0x02
    
    int 0x13
    
    jc DiskReadFailed
    
    ret

BOOT_DISK:
    db 0
    
DiskReadErrorString:
    db 'Erorr:Disk Error,May Be Some Error At The Computer.',
    
DiskReadFailed:
    mox bx, DiskReadErrorString
    call PrintString
    ret
    
    jmp $
