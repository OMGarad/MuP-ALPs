.model tiny
.486
.data
	modec db ?
	end_col db 25
.code
.startup

	mov ah,0fh
	int 10h
	mov modec,al
	
	mov ah, 00
	mov al, 03
	int 10h
	
	;top row of ~
	mov ah, 02h
	mov bh,00
	mov dl,0
	mov dh,0
	int 10h
	
	
	mov ah, 09h
	mov bh,00
	mov al,'~'
	mov bl, 00001101b
	mov cx,1*80
	int 10h
	
	;bottom row of ~
	mov ah, 02h
	mov bh,00
	mov dl,0
	mov dh,24
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al,'~'
	mov bl, 00001101b
	mov cx,1*80
	int 10h
	
	;2nd row of ~
    mov ah, 02h
	mov bh,00
	mov dl,0
	mov dh,1
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al,'~'
	mov bl, 00001101b
	mov cx,1
	int 10h
	
	;2nd row of ~
	mov ah, 02h
	mov bh,00
	mov dl,79
	mov dh,1
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al,'~'
	mov bl, 00001101b
	mov cx,1
	int 10h
	
	inc dh
	
	;loop of ~
x1:	mov ah, 02h
	mov bh,00
	mov dl,0
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al,'~'
	mov bl, 00001101b
	mov cx,1
	int 10h
	
	mov ah, 02h
	mov bh,00
	mov dl,79
	int 10h
	
	mov ah, 09h
	mov bh,00
	mov al,'~'
	mov bl, 00001101b
	mov cx,1
	int 10h
	
	inc dh
	cmp dh, end_col
	jnz x1
	
x2:	mov ah,07h
	int 21h
	cmp al,'?'
	jnz x2
	
	mov al, modec
	mov ah, 00
	int 10h
	
.exit
end