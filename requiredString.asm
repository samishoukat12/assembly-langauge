include irvine32.inc

.data

msg byte "here we go again",0
displayMsg byte "Actual string:",0
displayString2 byte "repeat string: ",0

.code
main proc
mov esi,0
mov ecx,sizeof msg
mov edx,offset displayMsg
call writestring
call crlf


l1:

mov al,msg[esi]

cmp al,"o"

je print
jne increment


print:
mov edx,offset displayString2
call writestring
call writechar
call crlf

increment:

inc esi

loop l1

exit 
main endp
end main


