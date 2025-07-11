nasm -f bin boot.asm -o boot.bin
dd if=boot.bin of=os.img
qemu-system-i386 -fda os.img
