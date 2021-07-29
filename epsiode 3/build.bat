cls
@echo off
nasm -f elf32 kernel_loader.asm -o kernel_loader.o
gcc -I. -m32 -c *.c
ld kernel_loader.o  *.o  -o all.o
objcopy -F elf32-i386 all.o kernel.bin
del *.o
qemu-system-x86_64.exe -kernel kernel.bin