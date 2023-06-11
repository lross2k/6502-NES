.export Main
.segment "CODE"

.proc Main
    ldx #$09
    stx $0600
loop:
    jsr rndrss
    jmp loop
    rts

rndrss:
    ; Read upper boundary from $0600
    ; Save random number at $0601
    ; Save last result at $0602
    ; Run 7 cycles of modifications
    ldx #$00
rndrss_loop:
    lda $8000,X
    inx
    ; Loop if the value is greater than limit
    clc
    cmp $0600
    bcs rndrss_loop
    ; Loop unless reached iteration limit
    cpx #$14
    beq rndrss_end
    ; Loop if the number equals last one
    cmp $0602 
    beq rndrss_loop 
rndrss_end:
    sta $0601
    sta $0602
    rts

.endproc

