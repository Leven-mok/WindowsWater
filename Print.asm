PrintString:
    push ax
    push bx
    
    mox ah, 0x0e
    .Loop:
    cmp al, [bx]
    je .exit
       mov al, [bx]
       int 0x10
       inc bx
       jmp .Loop
    .Exit:
    
    pop ax
    pop bx
    ret
    
TestString:
    db 'This Is Useless!'

      
