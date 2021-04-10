.model tiny
.386
.data
	modec db ?
	enddh db 9
.code
.startup
	mov ah, 0fh
	int 10h
	mov modec, al
	
	mov ah, 00
	mov al, 03
	int 10h
	
	;first row of !
	mov ah, 02h
	mov bh, 00
	mov dl,0
	mov dh,0
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al, '!'
	mov bl, 00001110b
	mov cx, 10
	int 10h
	
	inc dh
	
	;first row of ?
x1:	mov ah, 02h
	mov bh, 00
	mov dl,0
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al, '?'
	mov bl, 00000001b
	mov cx, 10
	int 10h
	
	inc dh
	
	mov ah, 02h
	mov bh, 00
	mov dl,0
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al, '!'
	mov bl, 00001110b
	mov cx, 10
	int 10h
	
	inc dh
	cmp dh, enddh
	jnz x1
	
	mov ah, 02h
	mov bh, 00
	mov dl,0
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al, '?'
	mov bl, 00000001b
	mov cx, 10
	int 10h
	
x2:	mov ah,07h
	int 21h
	cmp al, '.'
	jnz x2
	
	mov al,modec
	mov ah,00
	int 10h
.exit
end