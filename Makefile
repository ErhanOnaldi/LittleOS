all: boot.bin

boot.bin: boot.asm
	nasm -f bin boot.asm -o boot.bin

run: boot.bin
	qemu-system-i386 -drive file=boot.bin,format=raw

clean:
	rm -f boot.bin
