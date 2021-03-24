.model tiny
.486
.data
	str1 db 0dh, 0ah, "ABCDEFGH ", 0dh, 0Ah
	dat1 db ?
	dat2 db ?
	term db '$'
.code
.startup
	mov ah, 01h
	int 21h
	mov dat1, al
	mov ah, 07h
	int 21h
	mov dat2, al
	mov ah, 02h
	mov dl, dat2
	int 21h
	lea dx, str1
	mov ah, 09h
	int 21h
.exit
end
	
	
	

	
