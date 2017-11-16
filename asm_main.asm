;
; file: asm_main.asm

%include "asm_io.inc"
%define ARRAY_SIZE 5
;
; initialized data is put in the .data segment
;
segment .data
array1: db 1,2,3,4,5
; uninitialized data is put in the .bss segment
;
segment .bss
;
; code is put in the .text segment
;
segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha
; *********** Start  Assignment Code *******************
	xor eax, eax
	mov ebx, array1
	mov ecx, ARRAY_SIZE 
loop1:
	mov al,[ebx]
	call print_int
	inc ebx
	call print_nl
	loop loop1

; *********** End Assignment Code **********************

        popa
        mov     eax, 0       ; return back to the C program
        leave                     
        ret


