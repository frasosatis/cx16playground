.org $080D
.segment "STARTUP"
.segment "INIT"
.segment "ONCE"
.segment "CODE"

    jmp start

; Kernal
CHROUT            = $FFD2

; PETSCII
CLS               = $93
RETURN            = $0D

;
; simple text block; needs to end with a zero byte
;
; normal text in lower case - do not interfere with PETSCII (uppercase) here
hello: .byte "hello world on commander x16 in assembler", RETURN, RETURN
       .byte "some petscii characters just for fun:", RETURN
       .byte "a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z ", RETURN
       .byte "AA BB CC DD EE FF GG HH II JJ KK LL MM NN OO PP QQ RR SS TT UU VV WW XX YY ZZ", RETURN
       .byte 00

start:
   lda #CLS
   jsr CHROUT

   ldx #0
@hello_loop:
   lda hello,x
   beq @done_hello
   jsr CHROUT
   inx
   bra @hello_loop
@done_hello:
   lda #RETURN
   jsr CHROUT

   rts
