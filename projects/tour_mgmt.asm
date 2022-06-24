include irvine32.inc
.data
msg1 byte '                                      Tourism Package Managemnt System',0
msg2 byte '                       NOTE: CORONA VACCINATION CERTIFICATES ARE NECESSARY FOR TRAVEL PURPOSES',0
msg3 byte '                                            Enter your choice : ',0
msg4 byte '                                   Enter 1- For International Tour Packages',0
msg5 byte '         	                      Enter 2- For Local Tour Packages',0 
msg6 byte '                                       Do you want to continue?',0
msg7 byte '                                       1.Yes',0
msg8 byte '                                       2.No',0
msg9 byte '                                    Are you sure you wanna book this tour?',0

ch1 byte '                                          Pakistan Tour Packages',0
ch2 byte '                                          International Tour Packages',0
op1 byte '                                    1. Murree Tour Package - amount(20K)',0
op2 byte '                                    2. Naran Kaghan Tour Package - amount(30K)',0
op3 byte '                                    3. Hunza Valley Tour Package - amount(30K)',0
op4 byte '                                    4. Chitral Valley Tour Package - amount (35K)',0
op5 byte '                                    5. Skardu Tour Package - amount(35K)',0
op6 byte '                                    1. England Tour Package - amount (300K)',0
op7 byte '                                    2. Australia Tour  Package - amount(350K)',0
op8 byte '                                    3. Germany Tour Package - amount(200K)',0
op9 byte '                                    4. Turkey Tour Package - amount(250K)',0
op10 byte'                                    5. Dubai Tour Package - amount(180K)',0

st1 byte '                                       5 Days, 4 Nights',0
st2 byte '                                       3 Days, 2 Nights',0
st3 byte '                                       7 Days, 6 Nights',0
st4 byte '                                       12 Days, 13 Nights',0

det1 byte '                                         Enter Your Name : ',0
det2 byte '                                         Enter Number of Passengers : ',0
det3 byte '                                         Enter Date (DD/MM/YYYY) : ',0
det4 byte '                                      PLEASE PROVIDE YOUR DETAILS',0
det5 byte '                                 Process has been done successfully!!!',0
det6 byte '                                 Total amount is : ',0
unit byte 'K',0
sname byte 20 dup(?)2
sdate byte 15 dup(?)

amount dword ?

.code
main proc

mov edx, offset msg1
call writestring
call crlf
call crlf
call crlf

mov edx, offset msg2
call writestring
call crlf
call crlf
call crlf
call crlf
call crlf


choice:

mov edx, offset msg4
call writestring
call crlf

mov edx, offset msg5
call writestring
call crlf

mov edx, offset msg3
call writestring
call readint
call crlf

cmp eax,1
je international

cmp eax,2
je Pak


;***************Tour Packages**************
Pak:

mov edx, offset ch1
call writestring
call crlf
call crlf
call crlf

mov edx, offset op1
call writestring
call crlf
mov edx, offset st2
call writestring
call crlf
call crlf

mov edx, offset op2
call writestring
call crlf
mov edx, offset st1
call writestring
call crlf
call crlf

mov edx, offset op3
call writestring
call crlf
mov edx, offset st3
call writestring
call crlf
call crlf

mov edx, offset op4
call writestring
call crlf
mov edx, offset st3
call writestring
call crlf
call crlf

mov edx, offset op5
call writestring
call crlf
mov edx, offset st1
call writestring
call crlf
call crlf
call crlf

mov edx, offset msg3
call writestring
call readint
call crlf

cmp eax,1
mov amount ,20
je cnfrm

cmp eax,2
mov amount ,30
je cnfrm

cmp eax,3
mov amount ,30
je cnfrm

cmp eax,4
mov amount ,35
je cnfrm

cmp eax,5
mov amount ,35
je cnfrm


international:
mov edx, offset ch2
call writestring
call crlf
call crlf
call crlf

mov edx, offset op6
call writestring
call crlf
mov edx, offset st4
call writestring
call crlf
call crlf

mov edx, offset op7
call writestring
call crlf
mov edx, offset st4
call writestring
call crlf
call crlf

mov edx, offset op8
call writestring
call crlf
mov edx, offset st1
call writestring
call crlf
call crlf

mov edx, offset op9
call writestring
call crlf
mov edx, offset st3
call writestring
call crlf
call crlf

mov edx, offset op10
call writestring
call crlf
mov edx, offset st1
call writestring
call crlf
call crlf
call crlf

mov edx, offset msg3
call writestring
call readint
call crlf

cmp eax,1
mov amount ,300
je cnfrm

cmp eax,2
mov amount ,350
je cnfrm

cmp eax,3
mov amount ,200
je cnfrm

cmp eax,4
mov amount ,250
je cnfrm

cmp eax,5
mov amount ,180
je cnfrm




;***********details****************
details:
mov edx, offset det4
call writestring
call crlf
call crlf
call crlf
call crlf

mov edx, offset det1
call writestring
mov esi, offset sname
mov ecx, lengthof sname
call readstring
call crlf

mov edx, offset det2
call writestring
call readint
mov ebx,eax
call crlf

mov edx, offset det3
call writestring
mov esi, offset sdate
mov ecx, lengthof sdate
call readstring
call crlf
call crlf
call crlf


mov eax,ebx
imul amount


mov edx, offset det6
call writestring
call writedec
mov edx, offset unit
call writestring

call crlf
call crlf
call crlf


mov edx, offset det5
call writestring
call crlf
call crlf
call crlf

mov edx, offset msg6
call writestring
call crlf

mov edx, offset msg7
call writestring
call crlf

mov edx, offset msg8
call writestring
call crlf

mov edx, offset msg3
call writestring

call readint

cmp eax,1
je choice

cmp eax,2
je quit

;**********confirmation***********


cnfrm:
mov edx, offset msg9
call writestring
call crlf

mov edx, offset msg7
call writestring
call crlf

mov edx, offset msg8
call writestring
call crlf

mov edx, offset msg3
call writestring

call readint

cmp eax,1
je details 

cmp eax,2
je choice

cmp eax,3
je quit


quit:
exit
main endp
end main