include irvine32.inc
.data
source byte "sami",0

target byte sizeof source dup(0)

.code
main proc

mov esi,0
mov ecx,sizeof source


mov eax,0

l1:
mov al,source[esi]
mov target[esi],al
call writechar
inc esi
loop l1

exit 
main endp
end main