include irvine32.inc

.data

star byte "*",0
cols dword 1

.code
main proc
mov ecx,5
outer:
mov ebx,ecx
mov ecx,cols

inner:
mov al,star
call writechar

loop inner
call crlf
inc cols
mov ecx,ebx
loop outer

exit 
main endp
end main