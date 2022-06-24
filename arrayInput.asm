include irvine32.inc

.data

myArray dword 5 dup(?)

.code
main proc
mov esi,offset myArray
mov ecx,5
mov eax,0


input:
call readint
mov [esi],eax
push eax
add esi,type myArray
loop input


mov ecx,5
fromStack:
pop eax
call writedec
loop fromStack

exit 
main endp
end main
