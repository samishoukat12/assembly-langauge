include irvine32.inc

.data

sub1 byte "enter number to check:",0
msg1 byte "A grade",0
msg2 byte "B grade",0
msg3 byte "C grade",0
msg4 byte "F grade",0

.code
main proc
mov edx,offset sub1
call writestring

call readint
A:
mov edx,offset msg1
call writestring
B:
mov edx,offset msg2
call writestring
Cn:
mov edx,offset msg3
call writestring
Fn:
mov edx,offset msg4
call writestring

cmp eax,70
jg A
cmp eax,70
jl B
cmp eax,55
jl Cn
cmp eax,35
jl Fn

exit
main endp
end main