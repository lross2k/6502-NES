; ======== Game board ========
; Consider the memory to be visualized as follows
;  00 01 02
;  __|__|__ 
;  03 04 05
;  __|__|__ 
;  06 07 08
;    |  |   
; Where we will consider values as
; $00 is empty
; $01 is X
; $02 is O
;
; ======== Rules ========
; If any 3 cells are of the same symbol, said 
; player will win the game
;
; If no cells are left empty, but no player won
; the game ends in a draw
;
.export Main
.segment "CODE"

.proc Main
io_loop:
     ; Read controller 1 to make decisions
     lda $4016
     and #%10000000 ; Mask button A
     sta $00
     lda $4016
     and #%01000000 ; Mask button B
     sta $01
     lda $4016
     and #%00100000 ; Mask button SELECT
     sta $02
     lda $4016
     and #%00010000 ; Mask button START
     sta $03
     lda $4016
     and #%00001000 ; Mask button UP
     sta $04
     lda $4016
     and #%00000100 ; Mask button DOWN
     sta $05
     lda $4016
     and #%00000010 ; Mask button LEFT
     sta $06
     lda $4016
     and #%00000001 ; Mask button RIGHT
     sta $07
     jmp io_loop
    
.endproc

