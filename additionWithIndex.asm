include irvine32.inc
.data
myArray dword 100h,200h,300h,400h
final byte "final output:",0
.code
main proc
mov ecx,lengthof myArray
mov edi,offset myArray
mov eax,0
call writeint
call crlf
;1
mov ebx,[edi+type myArray]
add eax,ebx
call writeint
call crlf
;2
;mov ebx,eax
;add edi,4
;mov eax,ebx
mov ebx,[edi+type myArray]
add eax,ebx
call writedec
call crlf
;3
;mov ebx,eax
;add edi,4
;mov eax,ebx
mov ebx,[edi+type myArray]
add eax,ebx
call writedec
call crlf
;4
;mov ebx,eax
;add edi,4
;mov eax,ebx
mov ebx,[edi+type myArray]
add eax,ebx
mov edx,offset final
call writestring
call crlf
call writedec
call crlf
main endp 
end main