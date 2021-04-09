.model tiny
.486
.data
	modec db ?
	dat1 db 20h
	prev db ?
.code
.startup
	;moving the current mode of display into modec
	mov ah, 0fh
	int 10h
	mov modec, al
	
	;choosing current mode of display
	mov ah, 00
	mov al, 03
	int 10h
	
	;moving cursor
	mov ah, 02h
	mov bh, 00
	mov dl, 0
	mov dh, 0
	int 10h
	
	;fill the screen with blue
	mov ah, 09h
	mov al, dat1
	mov bh, 00
	mov bl, 00011110b
	mov cx, 13*80
	int 10h
	
	;shift cursor to 13th row
	mov ah, 02h
	mov dh, 13
	mov dl, 0
	mov bh, 00
	int 10h
	
	;fill the screen with gray
	mov ah, 09h
	mov al, dat1
	mov bh, 00
	mov cx, 13*80
	mov bl, 01111010b
	int 10h
	
	;shift cursor to start of screen- column 0, row 0
	mov ah, 02h
	mov dl, 0
	mov dh, 0
	mov bh, 0
	int 10h
	
	mov ah, 07h
	int 21h
	
	mov prev, al
	
	mov ah, 09h
	mov bl, 00011110b
	mov bh, 00
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dh, 13
	mov dl, 0
	mov bh, 0
	int 10h
	
	mov ah, 09h
	mov bh, 00
	mov bl, 01111010b
	int 10h
	
.exit
end