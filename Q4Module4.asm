.model tiny
.386
.data
ARRAY db '124536'
COUNT db 6
MIN db ?
MINADDR dw ?
.code
.startup
	lea si, ARRAY
	mov cl, COUNT
	cld
	lodsb
x2:	
    cmp al, [si]
	jae x1
	mov bx, si
	mov al, [si]
x1: inc si
	dec cl
	jnz x2
	mov MIN, al
	mov MINADDR, bx
.exit
end
