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