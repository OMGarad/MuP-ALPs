.model tiny
.486
.data
	dat1 db ?
	count equ 10
	terml db 0dh,0ah,0dh,0ah, '$'
.code
.startup
	mov cx, COUNT
x1:	mov ah, 07h
	int 21h
	mov dat1, al
	stosb
	dec cx
	jnz x1
	mov cx,10
	cld
x2:	mov ah, 02h
	mov dl, [di-10]
	int 21h
	inc di
	lea dx, terml
	mov ah,09h
	int 21h
	dec cx
	jnz x2
.exit
end
