include irvine32.inc

.data

msg byte "sami",0

.code
main proc
mov esi,0
mov ecx,sizeof msg
mov eax,0

reverse:
mov al,msg[esi]

cmp al,"a"

je match

jne increment

match:
push eax

;call writechar


increment:
inc esi





loop reverse

mov ecx,sizeof msg
fromStack:
pop eax
call writechar
call crlf
loop fromStack



exit 
main endp
end main



