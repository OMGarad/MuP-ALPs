.model tiny
.486
.data
	ARRAY dd 12345678h, 23456789h, 88888888h, 00000000h, 11111111h, 77777777h
	COUNT EQU 6
	RESULT dd 0
.code
.startup
	lea si, ARRAY
	mov cx, COUNT
l2:	mov eax, [si]  ;Make sure that this is present in the loop
				   ;We need to make sure that eax gets the next value of si
	mov RESULT, eax
	cmp eax, RESULT
	jle l1
	mov RESULT, eax
l1:	add si, 4
	dec cx
	jnz l2
.exit
end