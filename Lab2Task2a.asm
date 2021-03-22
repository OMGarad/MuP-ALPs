.model tiny
.386
.data
ADDEND1 dw 1234h
ADDEND2 dw 0001h
RESULT dw 0
.code
.startup
	mov si, ADDEND1
	mov di, ADDEND2
	add di, si
	mov RESULT, di
.exit
end