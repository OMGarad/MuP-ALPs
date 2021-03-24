.model tiny
.386
.data
ARRAY db '87654321'
COUNT db 8
.code
.startup
	lea di, ARRAY
	mov cl, COUNT
	cld
	mov dl, cl
	mov al, [di]
x2:	scasb 
	jnz x1
	dec di
	mov al, [di]
x1:	dec cl
	jnz x2
	   
	

.exit
end
