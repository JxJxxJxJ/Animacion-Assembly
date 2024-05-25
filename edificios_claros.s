.ifndef EDIFICIOS_CLAROS_S
.equ EDIFICIOS_CLAROS_S, 0x000000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"

edificios_claros:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]    


    // MOV X1, // ...
    // MOV X2, // ...
    // MOV X3, // ...
    // MOV X4, // ...
    // LDR X7, =STEELBLUE_2
    // BL dibujar_rectangulo

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48

RET

.endif
