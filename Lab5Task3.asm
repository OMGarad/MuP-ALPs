.model tiny
.486
.data
	filename db "LAB5TSK1.txt", 0
	handle dw ?
	store db 42 DUP ('$')
	b2br EQU 41
.code
.startup
	mov ah, 3dh
	lea dx, filename
	mov al, 02h
	int 21h
	mov handle, ax
	
	mov ah, 3fh
	mov bx, handle
	mov cx, b2br
	lea dx, store
	int 21h
	
	lea dx, store
	mov ah, 09h
	int 21h
	
	mov bx, handle
	mov ah, 3eh
	int 21h
.exit
end