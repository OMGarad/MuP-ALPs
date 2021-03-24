.model tiny
.data
ARRAY db '1111678'
COUNT db 8
CODE1 db '1'
RESULT db 0
.code
.startup
	lea di, ARRAY
	mov cl, COUNT
	mov al, CODE1
x1:	scasb 
	jnz x2
	inc RESULT
x2: dec cl
	jnz x1
.exit
end
