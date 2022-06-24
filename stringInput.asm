include irvine32.inc
.data

msg byte "enter line",0
msgD byte "result",0

.code 
main proc 
mov edx,offset msg
call writestring
call crlf
call readstring
call crlf
call writestring

exit 
main endp 
end main