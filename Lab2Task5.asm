.model tiny
.486
.data
ORG 0000h
ARRAY1 dd 12345678h, 23456789h, 00000000h, 11111111h, 22222222h, 33333333h, 44444444h, 55555555h, 66666666h, 77777777h
ORG 0014h
ARRAY2 dd 10 DUP(?)
COUNT EQU 10
.code
.startup
	lea si, ARRAY1
	lea di, ARRAY2
	mov cx, COUNT
	cld
	rep movsd
.exit
end
