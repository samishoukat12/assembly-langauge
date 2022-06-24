include irvine32.inc
.data
cols dword 1
msg byte "A",0
.code
main proc
mov ecx,5

outer:

mov ebx,ecx
mov ecx,cols
inner:
mov al,msg
call writechar
mov al," "
call writechar
inc msg
loop inner
call crlf
inc cols
mov ecx,ebx
loop outer

exit

main endp
end main
