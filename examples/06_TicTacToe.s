; ======== Game board ========
; Consider the memory to be visualized as follows
;     00 01 02
; 00  __|__|__ 
; 10  __|__|__ 
; 20    |  |   
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
    
.endproc

