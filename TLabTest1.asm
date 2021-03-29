.model tiny
.486
.data
	sttr db "aaaaaaAAAAAAbbbbbbCCDDDEopOPtT"
	count EQU 30
	min db 'Z'
.code
.startup
	lea si, sttr
	mov cx, COUNT
	mov al, min
	mov bl, 32
x1:	cmp [si], al
	jl x2
	sub [si], bl
x2:	inc si
	dec cx
	jnz x1
.exit
end