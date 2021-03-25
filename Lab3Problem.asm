.model tiny
.486
.data
	str1 db "Enter username: $", 0dh, 0ah
	user db "OMGarad"
	passwd db "omk123"
	user_s db 9
	user_a db ?
	user_d db 9 DUP(?)
	
	str2 db 0dh, 0ah, "Enter password: $", 0dh, 0ah
	passwd_d db 6 DUP(?)  ;As we don't want the password to be displayed we initialize in this way
	str3 db 0dh, 0ah, "Hello $"
.code
.startup
	lea dx, str1
	mov ah, 09h
	int 21h
	
	lea dx, user_s
	mov ah, 0ah
	int 21h
	
	mov cl, user_a
	mov ch, 0h
	lea si, user
	lea di, user_d
repe cmpsb
	jnz ex
	
	lea dx, str2 
	mov ah, 09h
	int 21h
	
	mov cx, 6
	lea di, passwd_d
	
x1:	mov ah, 07h
	int 21h
	stosb  ; value stored in al is shifted to di register, and di is incremented
	loop x1
	
	mov cx, 6
	lea si, passwd
	lea di, passwd_d
repe cmpsb
	jnz ex
	
	lea dx, str3
	mov ah, 09h
	int 21h
ex:
.exit
end
	