include irvine32.inc
.data
msg byte "feh value",0
iniu byte "input value= ",0
in2 byte "input value",0
.code
main proc
mov edx,offset msg
call writestring
call readint
mov edx,offset iniu
call writestring
call readint
mov edx,offset msg
call writestring
call writeint
call DUMPREGS
exit
main endp
end main