bits 32
org 101000h
mov eax,21cd4cffh
mov eax,1
mov edi,0b8000h
mov ecx,32
fors:
	call STR32
	add eax,eax
	add edi,80
	dec ecx
	cmp ecx,0
	jnz fors	
ret
ret
ret
STR32:                
          push eax                
          push ebx                
          push ecx                
          push edx                
          push edi                
          push esi                
          push ebp                
          mov ebp,1000000000
          STR321:                
                    xor edx,edx
                    xor ecx,ecx
                    mov ebx,ebp
                    clc                 
                    div ebx                
                    mov esi,edx
                    mov ah,'0'
                    clc                
                    add al,ah
                    ds
                    mov [edi],al
                    inc edi
                    mov al,17h                
                    mov [edi],al
                    inc edi                
                    mov eax,ebp
                    xor edx,edx
                    xor ecx,ecx
                    mov ebx,10
                    clc                
                    div ebx                
                    mov ebp,eax
                    mov eax,esi
                    cmp ebp,0
                    jnz STR321
                          
          pop ebp                
          pop esi                
          pop edi                
          pop edx                
          pop ecx                
          pop ebx                
          pop eax                
          ret                
	ret
