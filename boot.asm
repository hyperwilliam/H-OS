mov ah, 0x0e ; i forgor
mov al, 'T'
int 0x10
mov al, 'h'
int 0x10
mov al, 'e'
int 0x10
mov al, ' '
int 0x10
mov al, 'S'
int 0x10
mov al, 'e'
int 0x10
mov al, 'c'
int 0x10
mov al, 'r'
int 0x10
mov al, 'e'
int 0x10
mov al, 't'
int 0x10
mov al, '.'
int 0x10
mov al, '.'
int 0x10
mov al, '?'
int 0x10
; + 510 Bytes
times 510-($-$$) db 0
; Code For BIOS To Recognise This Operating System As Competent
dw 0xaa55 
