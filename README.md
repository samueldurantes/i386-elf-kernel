# i386-elf-kernel
Kernel 32-bit x86 based on OSDev.org bares bone tutorial

## Requirements
- Cross-compiler with targeting the ix86-elf architecture
- GRUB
- Xorriso
- GNU Make 4.0 or later
- QEMU (Optional for tests)

## Usage
The command following generates an `.iso` file that contain kernel.
```bash
$ make all
```

After the `.iso` file has been generated, you can running with QEMU like this:
```bash
$ qemu-system-i386 -cdrom tupity.iso
```

You can also use `make run` for quick start.
