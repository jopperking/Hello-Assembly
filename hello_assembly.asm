; Bismillah

Title 'Hello Assembly'

.Model Small ; set small model of assembly program

.Stack 32

.data
    ; add data
    MessageHello DB 'Hello Assembly','$'
    pkey db "press any key...$"
    
.Code
    Main proc
        ; set segment registers:
        mov Ax,@data
        mov DS,AX ;move AX address to segment register(DS)
        
        lea dx,MessageHello ; load address of the output hello string message in to data register
        
        ; print hello message (output string at ds:dx) :
        mov AH,09
        int 21H
        
        ; printing new line
        mov dl, 10
        mov ah, 02h ;  call the interrupt with function code 2 in AH
        int 21h
        
        ;Carriage Return
        mov dl, 13
        mov ah, 02h
        int 21h

        ; printing new line
        mov dl, 10
        mov ah, 02h
        int 21h
        
        lea dx, pkey ; load address of the output end string message in to data register   
        
        ; print end message (output string at ds:dx): 
        mov ah, 9
        int 21h
        
        ; wait for any key.... 
        mov ah, 1
        int 21h
        
        ; exit to operating system.
        mov AX,4C00H              
        int 21H
        
    Main endp 
    
end Main