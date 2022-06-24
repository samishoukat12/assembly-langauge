include irvine32.inc
.data

.code
main proc
mov ecx,100

disp:
mov eax,26
call randomrange
mov dh,al
mov eax,80
call randomrange
mov dl,al
call gotoxy
mov al,'x'
call writechar
mov eax,300
call delay
loop disp
exit 
main endp
end main
