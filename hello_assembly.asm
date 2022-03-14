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