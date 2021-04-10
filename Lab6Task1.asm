.model tiny
.386
.data
	file1 db "LAB5TSK5.txt", 0
	file2 db "ID.txt", 0
.code
.startup
	mov ah, 56h
	lea dx, file1
	lea di, file2
	int 21h
.exit
end