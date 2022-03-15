
mov ah, 0x0e

mov al, 'H'

int 0x10

jmp $


time 510-(#-$$) db 0

dw 0x55aa
