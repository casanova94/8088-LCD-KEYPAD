;Este programa detecta la tecla A y B y enciende o apaga un led de acuerdo
;a la tecla presionada

; Definimos los puertos
PORTA EQU 00H
PORTB EQU 01H
PORTC EQU 02H
PORTCONF EQU 03H  

segment .text
use16
;-----------------------------Configuramos puertos----------------------------------------
; Palabra de configuración 10010000, puerto A entrada, puerto B y C salida
mov AL, 90H
out PORTCONF, AL

;-----------------------------Configuramos la pantalla-----------------------------------

; Hacemos enable 1 logico y establecemos LCD modo de comando
mov AL, 01H   
out PORTC, AL
;Retardo
mov CX,0FFFFH
retardo:
loop retardo
; Limpiamos pantalla 
nop
mov AL, 01H
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo2:
loop retardo2
; Almacenamos comando
mov AL, 00H
out PORTC, AL
;Retardo
mov CX,0FFFFH
retardo3:
loop retardo3
nop
mov AL, 01H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo4:
loop retardo4
;-----------------------------------------------------------------------------------
;----------------------------------- check data enable-----------------------------------
data_enable:
in AL,PORTA
mov AH,10000000b 



;---------------------------------------------------------------------------------------
;----------------------------------- Leemos teclado--------------------------------------        
in AL,PORTA   ;Leer puerto A
nop       
cmp AL,00000011b ;Comparar tecla A
je keyA  
jne sig1  
sig1:     
cmp AL,00000001b ;Comparamos tecla B
je keyB  
jne data_enable  
;------------------------------------Fin leer teclado--------------------------------------
;------------------------------------Tecla A------------------------------------------------
keyA:
;Hola mundo
;ponemos modo caracter RS = 1
mov AL, 05H
out PORTC,AL
;Retardo
mov CX,0FFFFH
retardo8:
loop retardo8
nop
;enviamos el caracter H
mov AL, 48H
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo9:
loop retardo9
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo10:
loop retardo10
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo11:
loop retardo11
;enviamos el caracter O
mov AL, 4FH
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo12:
loop retardo12
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo13:
loop retardo13
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo14:
loop retardo14
;enviamos el caracter L
mov AL, 4CH
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo15:
loop retardo15
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo16:
loop retardo16
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo17:
loop retardo17
;enviamos el caracter A
mov AL, 41H
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo18:
loop retardo18
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo19:
loop retardo19
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo20:
loop retardo20
;enviamos el caracter espacio
mov AL, 0A0H
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo21:
loop retardo21
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo22:
loop retardo22
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo23:
loop retardo23
;enviamos el caracter M
mov AL, 4DH
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo24:
loop retardo24
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo25:
loop retardo25
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo26:
loop retardo26
;enviamos el caracter U
mov AL, 55H
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo27:
loop retardo27
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo28:
loop retardo28
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo29:
loop retardo29
;enviamos el caracter N
mov AL, 4EH
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo30:
loop retardo30
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo31:
loop retardo31
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo32:
loop retardo32
;enviamos el caracter D
mov AL, 44H
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo33:
loop retardo33
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo34:
loop retardo34
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo35:
loop retardo35
;enviamos el caracter O
mov AL, 4FH
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo36:
loop retardo36
;almacenamos instruccion 
mov AL, 04H
out PORTC, AL
nop
;Retardo
mov CX,0FFFFH
retardo37:
loop retardo37
mov AL, 05H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo38:
loop retardo38
jmp data_enable
;------------------------------------Fin tecla A------------------------------------------------
;------------------------------------Tecla B------------------------------------------------
keyB:

;Borrar pantalla
; Hacemos enable 1 logico y establecemos LCD modo de comando
mov AL, 01H   
out PORTC, AL
;Retardo
mov CX,0FFFFH
retardo39:
loop retardo39
; Limpiamos pantalla 
nop
mov AL, 01H
out PORTB, AL
;Retardo
mov CX,0FFFFH
retardo40:
loop retardo40
; Almacenamos comando
mov AL, 00H
out PORTC, AL
;Retardo
mov CX,0FFFFH
retardo41:
loop retardo41
nop
mov AL, 01H 
out PORTC,AL
nop
;Retardo
mov CX,0FFFFH
retardo42:
loop retardo42
jmp data_enable
;-----------------------------------Fin tecla B--------------------------------------------

TIMES 0x7FC9 db 90H
jmp word 0xf000:0x8000