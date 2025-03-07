.686
.model flat,stdcall
option casemap:none
;===================
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib
;===================


	LN = 1000
.data
	buffer dq 0	
		   db 0


.code
start:
	
	mov eax,614D5341h
	mov ecx,72657473h
	mov edx,00002179h
	;-------------
	;mov eax,6E72614Ch ;nr aL
	;mov ecx,21616361h ;0a ca
	;mov dx,0000h        ;!\n
	
	
	mov dword ptr[buffer+0],eax
	mov dword ptr[buffer+4],ecx
	mov word ptr[buffer+8],dx
	;--------------u
	mov esi,offset buffer
	;--------------
	mov eax,dword ptr[buffer+0]
	mov dx,word   ptr  [buffer+4]
	mov cl,byte   ptr  [buffer+6]
	
	;--------------
	;mov eax,0
	;mov al,byte ptr[buffer]
	movzx eax,byte ptr[buffer]
	movzx edx,word ptr[buffer]
	
	
	;--------------
	push LN
	;----------
	call Sleep
	;----------
	push 0
	;-----------

	call ExitProcess
	;------------




end start
