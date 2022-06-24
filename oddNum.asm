include irvine32.inc
.data
msg byte "odd numbers",0
num dword 50

.code
main proc 
mov eax,1
mov ecx,24
l1:

add eax,2
call writedec
call crlf
loop l1

exit 
main endp
end main