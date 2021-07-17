## i686-elf-kernel
Kernel 32-bit x86 based on OSDev.org bares bone tutorial

## Requirements
- Cross-compiler with targeting the i686-elf architecture
- GRUB
- Xorriso
- GNU Make 4.0 or later
- QEMU (Optional for tests)

## How to compile this?
```bash

# This generate ISO
$ make all

# Will open the kernel in QEMU
$ make run
```
