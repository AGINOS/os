// Simple kernel in C (basic VGA output)

void putc(char c) {
    static unsigned short *vga = (unsigned short *)0xB8000;
    static int pos = 0;
    vga[pos++] = (unsigned short)(0x07 << 8 | c);  // light gray on black
}

void puts(const char *s) {
    while (*s) putc(*s++);
}

void kernel_main() {
    puts("AGINOS x86 booted.\n\n");
    puts("Welcome to AGINOS!");
    while (1);
}
