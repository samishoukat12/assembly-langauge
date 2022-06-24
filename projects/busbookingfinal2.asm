 include irvine32.inc
.data
msg1 byte '                                                  Welcome to Abox Travels',0                       
msg3 byte '                             Press Enter to know about our weekly bus schedule : ',0                                   
msg6 byte '                                       Do you want to continue?',0
msg7 byte '                                               1.Yes',0
msg8 byte '                                               2.No',0
msg9 byte '                                              Are you sure you wanna book this seat?',0
msg11 byte'                                              Your seat has been booked',0
msg10 byte'                                            Thank you for choosing Abox Travels :)))',0 

ch1 byte '                                               Our weekly schedule (From FSD)',0
op1 byte '                                                  1. On Monday to Islamabad at 6pm - Fair(1800)',0
op2 byte '                                                  2. On Tuesday to Lahore at 2pm - Fair(700)',0
op3 byte '                                                  3. On Wednesday to Multan at 5pm - Fair(1200)',0
op4 byte '                                                  4. On Thursday to Gujranwala at 2pm - Fair(1200)',0
op5 byte '                                                  5. On Friday To Sialkot at 7pm - Fair(1000)',0                                  
msg2 byte '                                              Enter your choice : ',0
det1 byte '                                                 Enter Your Name : ',0
det2 byte '                                                 Enter Number of Passengers : ',0
det3 byte '                                                 Enter Date (mm/dd/yyyy) : ',0
det4 byte '                                              Please provide your details',0
det5 byte '                                 Process has been done successfully!!!',0
det6 byte '                                              Total Fair price is : ',0
sname byte 20 dup(?)
sdate byte 15 dup(?)

Fair dword ?

.code
main proc

mov edx, offset msg1
call writestring
call crlf


call crlf
call crlf
call crlf
call crlf




mov edx, offset ch1
call writestring
call crlf
call crlf
call crlf

mov edx, offset op1
call writestring
call crlf

call crlf

mov edx, offset op2
call writestring
call crlf
call crlf

mov edx, offset op3
call writestring
call crlf

call crlf

mov edx, offset op4
call writestring
call crlf

call crlf

mov edx, offset op5
call writestring
call crlf

call crlf
call crlf

mov edx, offset msg2
call writestring
call readint
call crlf

choice:

cmp eax,1
je isb

cmp eax,2
je lhe

cmp eax,3
je mult

cmp eax,4
je guj

cmp eax,5
je sial

isb:

mov Fair ,1800
jmp details

lhe:
mov Fair ,700
jmp details

mult:
mov Fair ,1200
jmp details

guj:
mov Fair ,1200
jmp details

sial:
mov Fair ,1000
jmp details




;***********details****************
details:
mov edx, offset det4
call writestring
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


mov eax,ebx 
imul Fair


mov edx, offset det6
call writestring
call writedec
call crlf
call crlf

mov edx,offset msg9
call writestring
call crlf

mov edx, offset msg7
call writestring
call crlf

mov edx, offset msg8
call writestring
call crlf
mov edx, offset msg2
call writestring
call readint
call crlf


cmp eax,1
je confirm

cmp eax,2
je quit


mov edx, offset det5
call writestring
call crlf
call crlf
call crlf

mov edx, offset msg6
call writestring
call readint
call crlf

mov edx, offset msg7
call writestring
call crlf

mov edx, offset msg8
call writestring
call crlf

cmp eax,1
je confirm


cmp eax,2
je quit

;**********confirmation***********


confirm:



mov edx, offset msg11
call writestring
call crlf
call crlf
mov edx, offset msg10
call writestring
call crlf
call crlf




quit:
exit
main endp
end main
    