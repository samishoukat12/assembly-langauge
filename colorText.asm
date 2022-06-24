include irvine32.inc
.data
msg byte "pakistan",0
.code
main proc
mov edx,offset msg
mov ecx,4
disp:
mov eax,16
call randomrange
call settextcolor
call writestring
call crlf
loop disp
exit 
main endp
end main