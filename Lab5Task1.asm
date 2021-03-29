.model tiny
.data
	filename db 'Lab5Tsk1.txt', 0
	dat1 db "Omkar Garad"
	dat2 db " 2019A7PS1010G"
	dat3 db 0dh, 0ah
	handle dw ?
.code
.startup
	mov ah, 3ch
	lea dx, filename
	mov cl, 20h
	int 21h
	
	mov ah, 3dh
	lea dx, filename
	mov cl, 02h
	int 21h
	mov handle, ax
		
	mov ah, 40h
	mov bx, handle
	lea dx, dat1
	mov cl, 11
	int 21h
	
	mov ah, 40h
	mov bx, handle
	lea dx, dat2
	mov cl, 14
	int 21h
	
	mov ah, 40h
	mov bx, handle
	lea dx, dat3
	mov cl, 02
	int 21h
	
	mov ah, 40h
	mov bx, handle
	lea dx, dat1
	mov cl, 11
	int 21h
	
	mov ah, 40h
	mov bx, handle
	lea dx, dat2
	mov cl, 14
	int 21h
	
	mov bx, handle
	mov ah, 3eh
	int 21h	
.exit
end