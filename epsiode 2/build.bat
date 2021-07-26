nasm -f elf32 kernel_loader.asm -o kernel_loader.o
gcc -m32 -c kernel.c
elf-ld -Ttext 0x0 kernel_loader.o kernel.o -o kernel.bin
qemu-system-x86_64.exe -kernel kernel.bin