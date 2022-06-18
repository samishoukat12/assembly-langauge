include irvine32.inc
.data
area byte "area = ",0
pi dword 20
rad dword 30
.code
main proc 
mov eax,2
imul eax,pi
imul eax,rad
mov edx,offset area
call writestring
call writedec
call crlf
exit
main endp
end main