; $0100 will be the health of player
.export Main
.segment "CODE"

.proc Main
  ; Set the values
  ldx #100  ; Load X with #100
  ldy #00   ; Load Y with #00
  stx $0100 ; Store health onto $0000

; Start code loop
loop:
  ; Hit the player
  ldx $0100 ; Load $0000 onto X
  dex       ; Decrement X by 1
  stx $0100 ; Store the health back

  lda $0100 ; Load health onto accumulator
  cmp #00   ; Compare health to 0
  beq loop  ; Repeat loop

; End the code instead
end:
  ldy #42
  rts

.endproc

