include irvine32.inc

.data
msg byte "enter",0
temp dword 0
.code
main proc
mov edx,offset msg
call writestring

call readint
mov ecx,eax

mov eax,0
mov ebx,1

l1:

mov temp,eax
add temp,ebx
call writedec
mov al," "
call writechar
mov eax,ebx
mov ebx,temp
loop l1

exit
main endp 
end main