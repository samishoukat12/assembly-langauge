include irvine32.inc
.data
msg1 byte "*****",0
msg2 byte "****",0
msg3 byte "***",0
msg4 byte "**",0
msg5 byte "*",0
.code 
main proc
mov edx,offset msg1
call writestring
call crlf
mov edx,offset msg2
call writestring
call crlf
mov edx,offset msg3
call writestring
call crlf
mov edx,offset msg4
call writestring
call crlf
mov edx,offset msg5
call writestring
call crlf
exit
main endp 
end main