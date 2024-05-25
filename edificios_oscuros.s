.ifndef EDIFICIOS_OSCUROS_S
.equ EDIFICIOS_OSCUROS_S, 0x00000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"

  // Edificios oscuros, tomo de referencia el frame 56, todo oscuro esta
  // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // MOV X1, 420
    // MOV X2, 219
    // MOV X3, 640
    // MOV X4, 290
    // LDR X7, =FONDO_VARANDA_0
    // BL dibujar_rectangulo       // bloque 1


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
