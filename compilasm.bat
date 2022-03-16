nasm bootloader.asm -f bin -o bootloader.flp

nasm ExtenedProgram.asm -f bin -o ExtendedProgram.bin

copy /b bootloader.bin+ExtenedProgram.bin bootloader.flp

pause
