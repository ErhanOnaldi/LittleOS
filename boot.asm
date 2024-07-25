; boot.asm
[bits 16]
[org 0x7c00]

mov ax, 0x07C0
mov ds, ax
mov es, ax
mov fs, ax
mov gs, ax

call 0x0000:0x7e00

jmp $

times 510-($-$$) db 0
dw 0xAA55
