; It Loops... Do I Have To Explain,
loop:
    jmp loop 

; + 510 Bytes
times 510-($-$$) db 0
; Code For BIOS To Recognise This Operating System As Competent
dw 0xaa55 
