.model tiny
.486
.data
	
	modec db ?
	
	start_row2 dw 20
	end_row2 dw 230
	start_col2 dw 20
	end_col2 dw 130
	
	end_row1 dw 250
	end_col1 dw 150
	
	start_row3 dw 40
	start_col3 dw 40
	end_row3 dw 210
	end_col3 dw 110
	
	start_row4 dw 60
	start_col4 dw 60
	end_row4 dw 190
	end_col4 dw 90
.code
.startup

	mov ah, 0fh
	int 10h
	mov modec, al
	
	mov ah, 00
	mov al, 12h
	int 10h
	
	;outter red rectangle
	mov dx, 0
x2:	mov cx, 0
x1:	mov al, 00000100b
	mov ah, 0ch
	int 10h
	
	inc cx
	cmp cx, end_col1
	jnz x1
	
	inc dx
	cmp dx, end_row1
	jnz x2
	
	;outter green rectangle
	mov dx, start_row2
x4:	mov cx, start_col2
x3:	mov al, 00000010b
	mov ah, 0ch
	int 10h
	
	inc cx
	cmp cx, end_col2
	jnz x3
	
	inc dx
	cmp dx, end_row2
	jnz x4
	
	;next red rectangle
	mov dx, start_row3
x6:	mov cx, start_col3
x5:	mov al, 00000100b
	mov ah, 0ch
	int 10h
	
	inc cx
	cmp cx, end_col3
	jnz x5
	
	inc dx
	cmp dx, end_row3
	jnz x6
	
	;next green rectangle
	mov dx, start_row4
x8:	mov cx, start_col4
x7:	mov al, 00000010b
	mov ah, 0ch
	int 10h
	
	inc cx
	cmp cx, end_col4
	jnz x7
	
	inc dx
	cmp dx, end_row4
	jnz x8
	
x0:	mov ah, 07h
	int 21h
	cmp al, 'e'
	jnz x0
	
	mov al, modec
	mov ah,00
	int 10h
.exit
end