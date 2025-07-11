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
mov al, ' '
int 0x10
mov al, 'I.'
int 0x10
mov al, 's'
int 0x10
mov al, ' '
int 0x10
mov al, 'W'
int 0x10
mov al, 'h'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10
mov al, 'e'
int 0x10
mov al, '?'
int 0x10
  mov ah, 02h      ; Function: Read sectors
  mov al, 1        ; Number of sectors to read
  mov ch, 0        ; Cylinder number (first cylinder)
  mov dh, 0        ; Head number (first head)
  mov cl, 2        ; Sector number (second sector, 1-based)
  mov dl, 0x80     ; Drive number (0x80 for first hard drive)
  mov bx, 0x7E00   ; Buffer address (offset)
  mov es, bx       ; ES:BX points to buffer, must be segment:offset
  shr bx, 4        ; shift right 4 to get the segment of the buffer
  mov es, bx       ; set the segment
  and bx, 0x0FFF   ; reset the offset
  mov bx, 0x7E00   ; re-set the offset
  int 13h          ; BIOS interrupt

; + 510 Bytes
times 510-($-$$) db 0
; Code For BIOS To Recognise This Operating System As Competent
dw 0xaa55 
