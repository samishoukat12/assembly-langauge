include irvine32.inc
.data 
array dword 100h,200h,300h,400h

.code
main proc
mov esi,offset array
mov ecx,lengthof array


mov eax,0

l1:

add eax,[esi+type array]
call crlf

call crlf

loop l1

call writedec

exit 
main endp
end main
