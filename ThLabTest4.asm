.model tiny
.486
.data
	modec db ?
	disp db "abcdefghijnmlkopqrstuvwx"
	end_col db 24
.code
.startup


	mov ah, 0fh
	int 10h
	mov modec, al
	
	mov ah, 00
	mov al, 03
	int 10h
	
	mov ah, 02h
	mov bh, 00
	mov dl, 0
	mov dh, 0
	int 10h
	
	lea si, disp
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 00001101b
	mov cx, 1
	int 10h
	
	inc dl
	inc dh
	
x1:	mov ah, 02h
	mov bh, 00
	int 10h
	
	mov ah, 09h
	lodsb
	mov bh, 00
	mov bl, 00001101b
	mov cx, 1
	int 10h
	
	inc dl
	inc dh
	cmp dh, end_col
	jnz x1
	
	
	
x2:	mov ah, 07h
	int 21h
	cmp al, '@'
	jnz x2
	
	mov al, modec
	mov ah,00
	int 10h	
.exit
end