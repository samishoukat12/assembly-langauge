include irvine32.inc
.data
msg byte "enter:",0
sname byte 50 dup(?)

.code
main proc
mov edx,offset msg
call writestring

mov edx,offset sname
mov ecx,sizeof sname - 1

call readstring
mov esi,offset sname
mov ecx,sizeof sname
mov eax,0
l1:
mov al,[esi]
push eax
call writechar
inc esi
loop l1
mov ecx,sizeof sname
l2:
pop eax
call writechar
loop l2
exit
main endp
end main