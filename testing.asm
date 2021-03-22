.model tiny
.486
.data
ARRAY dd 12345678h, 44444444h, 55555555h
CODE EQU 44444444h
COUNT EQU 3
RESULT db 0 
.code
.startup
	lea si, ARRAY
	mov cx, COUNT
l1:	mov eax, [si]
	cmp eax, CODE
	jne l2
	inc RESULT
l2:	add si,4
	dec cx
	jnz l1
.exit
end