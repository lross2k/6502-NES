seed = $11

.export Main
.segment "CODE"

.proc Main
loop:
    jsr rndrss
    ldx #0
    jmp loop

    rts

rndrss:
    ; ROM data starts at $8000
    ; Read upper boundary from $0600
    ; Save random number at $0601
    ; Apply bitmask 10101010
    ; Run 7 cycles of modifications
    ldx #$07
rndrss_loop:
    lda $8000,X
    and #%10101010
    sta $0601
    dex
    jmp rndrss_loop
    rts

galois8:
    ldy #8
    lda seed+0
:
    asl
    bcc :+
    eor #$1D
:
    dey
    bne :--
    sta seed+0
    cmp #0
    rts

.endproc

