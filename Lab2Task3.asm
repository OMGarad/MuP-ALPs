.model tiny
.486
.data
ARRAY1 db 01h,02h,03h,04h,05h,6,7, 0Ah, 8, 9
COUNT EQU 10
CHECK db 0Ah
.code
.startup
	lea si, ARRAY1
	mov al, CHECK
	mov cx, COUNT
l1:	mov bl, [si]
	cmp bl, al
	jne l2
	mov bl, 69
	mov [si], bl
l2:	inc si
	dec cx
	jnz l1
.exit
end