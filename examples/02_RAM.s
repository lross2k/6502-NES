; Learning to use NES RAM, which goes from $0000 to $07FF
; RAM also has 3 mirrors which point to the same memory locations
; $0800 - $0FFF
; $1000 - $17FF
; $1800 - $1FFF
.export Main
.segment "CODE"

.proc Main
  ; Initialize some ZeroPage memory
  ; loads #10 onto X, then stores it to CPU memory $00 and $01
  ldx #10
  stx $00
  stx $01

  ; Modify the memory locations directly
  ; modify $00 and $01 directly on the CPU
  inc $00
  dec $01

  ; Store the values elsewhere in RAM
  ; load $00 onto X, then store it in $0300
  ldx $00
  stx $0300
  ; load $01 onto X, then store it in $0301
  ldx $01
  stx $0301

  rts
.endproc

