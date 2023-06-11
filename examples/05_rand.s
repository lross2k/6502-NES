.export Main
.segment "CODE"

.proc Main
    ldx #$09
    stx $0600
loop:
    jsr rndrss
    jmp loop

rndrss:
    ; Read upper boundary from $0600
    ; Save random number at $0601
    ; Save last result at $0602
    ldx #$00
rndrss_loop:
    lda $8000,X
    and $0600
    inx
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

