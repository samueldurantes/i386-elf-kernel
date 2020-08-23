all:
	i686-elf-as src/boot.s -o boot.o
	i686-elf-gcc -c src/kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	i686-elf-gcc -T linker.ld -o tupity.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
	cp tupity.bin isodir/boot/tupity.bin
	grub-mkrescue -o tupity.iso isodir

run:
	qemu-system-i386 -cdrom tupity.iso

clean:
	rm ./*.o
	rm ./*.bin
	rm ./isodir/boot/*.bin
	rm ./*.iso
