include irvine32.inc
.data
area byte "area = ",0
height dword 20
wid dword +30
.code
main proc 
mov eax,height
imul eax,wid
mov edx,offset area
call writestring
call writeint
call crlf
exit
main endp
end main