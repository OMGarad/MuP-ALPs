.model tiny
.486
.data
ARRAY1 dw 1234h, 1111h, 8888h, 7777h, 0A12h, 0B12h, 9876h, 9999h
COUNT EQU 10
NEG1 db 0
.code
.startup
	lea si, ARRAY1
	mov cx, COUNT
	mov ax, 8000h
l1:	mov bx, [si]
	cmp ax, bx
	ja l2
	inc NEG1
l2:	add si,2
	dec cx
	jnz l1
.exit
end