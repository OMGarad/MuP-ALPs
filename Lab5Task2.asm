.model tiny
.data
	filename db 'Lab5Tsk1.txt', 0
	dat1 db 0dh, 0ah, "DH-1"
	dat2 db 0dh, 0ah, "306-L"
	handle dw ?
.code
.startup
	;Open the file
	mov ah, 3dh
	lea dx, filename
	mov cl, 02h
	int 21h
	mov handle, ax
	
	mov ah, 42h
	mov bx, handle
	mov al, 02h
	mov cx, 0000
	mov bx, 0000
	int 21h
	
	mov ah, 40h
	mov bx, handle
	lea dx, dat1
	mov cl, 6
	int 21h
	
	mov ah, 40h
	mov bx, handle
	lea dx, dat2
	mov cl, 7
	int 21h
	
	mov bx, handle
	mov ah, 3eh
	int 21h	
.exit
end