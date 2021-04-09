.model tiny
.486
.data
	modec db ?
	dat1 db 20h
.code
.startup

	mov ah, 0fh
	int 10h
	mov modec,al
	
	mov ah, 00
	mov al, 03
	int 10h
	
	;red
	mov ah, 02h
	mov dl, 0
	mov dh, 0
	mov bh, 00
	int 10h
	
	mov ah, 09h
	mov al, dat1
	mov bh, 00
	mov bl, 01000000b
	mov cx, 8*80
	int 10h
	
	;gray
	mov ah, 02h
	mov dl, 0
	mov dh, 8
	mov bh, 00
	int 10h
	
	mov ah, 09h
	mov al, dat1
	mov bh, 00
	mov bl, 01111000b
	mov cx, 9*80
	int 10h
	
	;green
	mov ah, 02h
	mov dl, 0
	mov dh, 17
	mov bh, 00
	int 10h
	
	mov ah, 09h
	mov al, dat1
	mov bh, 00
	mov bl, 00101000b
	mov cx, 8*80
	int 10h
	
x1:	mov ah, 07h
	int 21h
	cmp al, '>'
	jnz x1
	
	mov al, modec
	mov ah, 00
	int 10h
.exit
end