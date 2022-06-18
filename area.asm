include irvine32.inc
.data 
ar byte "area=",0
.code
main proc
mov eax,2
imul eax,3
imul eax,10
mov edx,offset ar
call writestring
call writeint
exit 
main endp
end main