; please include masm32.lib and masm32.inc for the printing part.

.Const

MaxString Equ 30 ; lenght of every line of text; this way you can give maintenance better ;-)
MaxArray Equ 2 ; three elements in array (0, 1, 2)

.Data?

.Data

LoopCounter DD 3

; main structure containing the string itself

StringStruct Struct
	MyString DB MaxString Dup(0) ; VERY important as you can't add the "0,13, etc" at the end.
StringStruct EndS

; declare array and preload text on it
; you can, of course, leave it empty and fill it at runtime

MyArray StringStruct MaxArray Dup (<"First text">, <"Second text">, <"Final text">)
; name     type          elements                     text stored

LineFeed DB 13, 10, 0 ; change line after you print it

Main Proc Private

Mov Ecx, LoopCounter ; initialize print loop
Mov Edi, 0 ; EDI is the index in order to access every element

@MyLoop:
     Push Ecx ; avoid disaster with StdOut
     Invoke StdOut, Addr (StringStruct Ptr MyArray[Edi]).MyString  ; print element at Array[Edi]
     Invoke StdOut, Addr LineFeed ; same as Enter at the end
     Pop Ecx ; restore loop counter
     Add Edi, Type StringStruct ; move EDI to the next element in array
Loop @MyLoop

	Ret
Main EndP