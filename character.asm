include irvine32.inc
.data
chr1 byte 'A',0
chr2 byte 'B ',0
sum byte 'sum = ',0
.code
main proc 
mov edx,offset sum
call writestring
mov edx,offset chr1
call writestring
mov edx,offset chr2
call writestring
call crlf
exit
main endp 
end main