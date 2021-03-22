.model tiny
.data
exm1 db 'aaaabbbbbcccccllllll'
omk10 db 0
name1 db 'o'
.code
.startup
	lea si, exm1
	mov cx, 20
	mov bl, 122
	sub name1, 'a'
	sub bl, name1
l1:	mov al, [si]
	cmp al, bl
	jne l2
	inc omk10
l2:	inc si
	dec cx
	jnz l1
.exit
end
