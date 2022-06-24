include irvine32.inc
.data 
msg1 byte "enter Name: ",0
msg2 byte "welcome: ",0
sname byte 50 dup(?)

.code
main proc
mov edx,offset msg1
call writestring

mov edx,offset sname
mov ecx,sizeof sname - 1
call readstring
mov edx,offset msg2
call writestring
;mov edx,offset sname
;call writestring
mov esi,offset sname
mov ecx,sizeof sname
mov eax,0
disp:
mov al,[esi]
call writechar
inc esi
mov eax,2000
call delay
loop disp
exit 
main endp
end main