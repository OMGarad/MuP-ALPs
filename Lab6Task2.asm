.model tiny
.386
.data
	filename db "ID.txt",0
.code
.startup
	mov ah, 41h
	lea dx, filename
	int 21h
.exit
end