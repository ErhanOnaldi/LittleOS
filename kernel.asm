; kernel.asm
[bits 32]

section .text
global start

start:
    mov esi, message
print:
    lodsb
    test al, al
    jz halt
    mov ah, 0x0E
    int 0x10
    jmp print

halt:
    hlt

message db 'Hello, World!', 0
