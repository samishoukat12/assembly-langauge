include irvine32.inc
.data
msg byte "enter number: ",0
dmsg byte "factorial is",0
.code
main proc
mov edx,offset msg
call writestring
call readint

mov ecx,eax
mov eax,1

l1:
imul ecx
loop l1
call writedec
call crlf
exit 
main endp
end main
