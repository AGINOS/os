// Linker script to place sections properly

ENTRY(_start)
SECTIONS {
    . = 1M;
    .multiboot : { *(.multiboot) }
    .text : { *(.text) }
    .rodata : { *(.rodata) }
    .data : { *(.data) }
    .bss : {
        *(.bss*)
        *(COMMON)
    }
}
