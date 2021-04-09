.model tiny
.486
.data
	filename db 'LAB5TSK1.txt', 0
	hostel db "DH-1", 0dh, 0ah
	room_no db "306-L", 0dh, 0ah
	handle dw ?
.code
.startup
	mov ah, 3dh
	lea dx, filename
	mov al, 02h
	int 21h
	mov handle, ax
	
	mov ah, 42h
	mov bx, handle
	mov al, 02h
	mov cx, 0000
	mov dx, 0000
	int 21h
	
	mov ah, 40h
	mov bx, handle
	lea dx, hostel
	mov cx, 13
	int 21h
	
	mov bx, handle
	mov ah, 3eh
	int 21h
.exit
end
