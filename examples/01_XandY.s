.export Main
.segment "CODE"

.proc Main
 ; Start by loading the value 5 into both the X and Y registers
 ldx #5
 ldy #5

 ; Increment the value of X twice
 inx
 inx

 ; Decrement the value of X one
 dex

 ; Decrement the value of Y twice
 dey
 dey

 ; Increment the value of Y once
 iny

 ; Since we ran 2 increments and 1 decrement of X, it should now equal 6
 ; Since we ran 2 decrements and 1 increment of Y, it should now equal 4
 rts
.endproc

