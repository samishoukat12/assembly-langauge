include irvine32.inc
.data 
msg byte "enter string",0
dMsg byte "result",0
.code 
main proc
mov esi,offset msg
mov ecx,sizeof msg

mov eax,0

toStack:
mov al,[esi]
push eax
inc esi
loop tostack

mov ecx,sizeof msg

fromStack:
pop eax
call writechar

loop fromStack

exit 
main endp
end main