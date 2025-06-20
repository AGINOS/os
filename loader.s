// Multiboot header and entry point (x86 assembly)

.section .multiboot
.align 4
.long 0x1BADB002            // magic number
.long 0x0                   // flags
.long -(0x1BADB002)         // checksum

.section .text
.global _start

_start:
    cli                     // disable interrupts
    call kernel_main        // call main kernel function

.hang:
    hlt                     // halt CPU
    jmp .hang
