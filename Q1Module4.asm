.model tiny
.data
alph1 db 'abcdeghijklmnopqrst'
vcnt db 0
.code
.startup
	lea di, alph1
	mov ax, 'a'
x0:	cmp [di], ax
	jz x2
	inc vcnt
	jmp x6
x2:	mov ax, 'e'
	cmp[di], ax
	jz x3
	inc vcnt
	jmp x6
x3:	mov ax, 'i'
	cmp[di], ax
	jz x4
	inc vcnt
	jmp x6
x4:	mov ax, 'o'
	cmp[di], ax
	jz x5
	inc vcnt
	jmp x6
x5:	mov ax, 'u'
	cmp[di], ax
	jz x6
	inc vcnt
x6: inc di
	dec cx
	jnz x0	
.exit
end