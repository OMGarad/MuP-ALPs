.model tiny
.486
.data
modec db ?
start_row dw 20
start_col dw 20
end_row dw 70
end_col dw 70
.code
.startup
	mov ah, 0fh
	int 10h
	mov modec, al
	
	mov ah,00
	mov al, 12h
	int 10h
	
	mov dx, start_row
x2:	mov cx, start_col
x1:	mov al, 00001110b
	mov ah, 0ch
	int 10h
	
	inc cx
	cmp cx, end_col
	jnz x1
	inc dx
	cmp dx, end_row
	jnz x2
	
x3:	mov ah, 07h
	int 21h
	cmp al, 'e'
	jnz x3
	
	mov al, modec
	mov ah, 00
	int 10h
.exit
end
