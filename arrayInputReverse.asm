include irvine32.inc
.data
array dword 5 dup(?)
msg1 byte "enter values:",0
.code
main proc
mov ecx,lengthof array
mov esi,offset array



scanning:
mov edx,offset msg1
call writestring
call readint
mov [esi],eax
add esi,type array
loop scanning



mov ecx,lengthof array
mov esi,offset array

reverse:
mov eax,[esi]
push eax
add esi,type array
loop reverse



mov ecx,lengthof array
mov esi,offset array


fromStack:
pop eax
call writedec
mov al," "
call writechar
loop fromStack

exit
main endp
end main
