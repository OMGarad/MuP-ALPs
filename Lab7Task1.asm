.model tiny
.486
.data
	modec db ?
	disp db "DOLL"
.code
.startup

	;storing the current value of display
	mov ah, 0fh
	int 10h
	mov modec, al
	
	;setting the value of display
	mov ah, 00
	mov al, 03
	int 10h
	
	;display D
	;setting the cursor
	mov ah, 02h
	mov dl, 38
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character 
	lea si, disp
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001111b
	mov cx, 1
	int 10h
	
	;display O
	;setting the cursor
	mov ah, 02h
	mov dl, 39
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character 
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001111b
	mov cx, 1
	int 10h
	
	;display L
	;setting the cursor
	mov ah, 02h
	mov dl, 40
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character 
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001111b
	mov cx, 1
	int 10h
	
	;display L
	;setting the cursor
	mov ah, 02h
	mov dl, 41
	mov dh, 13
	mov bh, 00
	int 10h
	
	;displaying the character 
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 10001111b
	mov cx, 1
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