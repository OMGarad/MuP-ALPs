.model tiny
.486
.data
	modec db ?
	disp db "Omkar"
.code
.startup
	mov ah, 0fh
	int 10h
	mov modec, al  ; storing the current mode of display
	
	;setting mode of display
	mov ah, 00
	mov al, 03
	int 10h
	
	;setting position of cursor
	mov ah, 02h
	mov dl, 38
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character1
	lea si, disp
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001001b
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dl, 39
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character2
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001001b
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dl, 40
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character3
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001001b
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dl, 41
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character4
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001001b
	mov cx, 1
	int 10h
	
	mov ah, 02h
	mov dl, 42
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character5
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001001b
	mov cx, 1
    int 10h	
	
	mov ah, 02h
	mov dl, 42
	mov dh, 13
	mov bh, 00
	int 10h
	
x2:	mov ah, 07h
	int 21h
	cmp al, 'e'
	jnz x2
	mov al, modec
	mov ah, 00
	int 10h
.exit
end