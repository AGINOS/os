all: kernel.bin

kernel.bin: loader.o kernel.o
	i686-elf-ld -T linker.ld -o kernel.bin loader.o kernel.o

loader.o: loader.s
	nasm -f elf32 loader.s -o loader.o

kernel.o: kernel.c
	i686-elf-gcc -ffreestanding -m32 -c kernel.c -o kernel.o

clean:
	rm -f *.o *.bin
