.export Main
.segment "CODE"

.proc Main
  ; Initialize some RAM
  ldx #$B2 ; Using # to declare a NUMBER, not an ADDRESS
           ; then $B2 is the HEX number 178
  stx $00
  ldx #$F5 ; HEX number 245
  stx $01

  ; Add $00 and $01
  lda $00 ; Load A (Accumulator)
  clc     ; Clear Carry
  adc $01 ; Add with Carry

  ; Store the first byte of the result to $02
  sta $02 ; Store Accumulator onto $02

  ; Add the carry bit to zero and store it into $03
  lda #0  ; Load Accumulator with 0
  adc #0  ; Accumulator = Carry + 0
  sta $03 ; Store Accumulator onto $03

  rts
.endproc

