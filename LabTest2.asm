.model tiny
.486
.data
	user_s db 5
	user_a db ?
	user_d db 5 DUP(?)
	terml db 0dh, 0ah, '$'
.code
.startup
	lea dx, user_s
	mov ah, 0ah
	int 21h
	lea dx, terml
	mov ah, 09h
	int 21h
	std
	mov cx, 6
	lea di, user_d+5
x1:	mov ah, 02h
	mov dx, [di]
	int 21h
	dec di
	dec cx
	jnz x1
.exit
end