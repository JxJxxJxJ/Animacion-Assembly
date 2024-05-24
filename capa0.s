.ifndef CAPA0_S
.equ CAPA0_S, 0x00000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"
.include "edificios_oscuros.s"

.equ Y_OFFSET, -64 + 48 // Restar a toda coordenada Y del gif

capa_0:                         // Absolutamente estatica, no cambia nunca
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    BL fondo_0
    BL varanda
    BL piso

    BL edificios_claros      // Tienen que ser 
    // BL edificios_medios      // llamadas en este orden
    BL edificios_oscuros        // para que aparezcan al frente de la otra

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

fondo_0:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =CIELO_0
    BL dibujar_rectangulo

    MOV X1, 428
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =CIELO_0
    BL dibujar_rectangulo

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

varanda:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, SCREEN_START
    MOV X2, 291
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // Fondo de la varanda

    MOV X1, SCREEN_START
    MOV X2, 316
    MOV X3, SCREEN_END_X
    MOV X4, 303
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de arriba
    
    MOV X1, SCREEN_START
    MOV X2, 412
    MOV X3, SCREEN_END_X
    MOV X4, 406
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    // Ciclo barrotes gordos verticales 
    MOV X1, 51
    MOV X2, 428
    MOV X3, 62
    MOV X4, 317

    loop_barrotes_gordos:
    CMP X1, SCREEN_END_X
    B.GT exit_loop_barrotes_gordos
        BL dibujar_rectangulo
        ADD X1, X1, 184
        ADD X3, X3, 184
        B loop_barrotes_gordos
    exit_loop_barrotes_gordos:

    // Varandas seccion 1
    // Barras verticales flacas a mano (por sector)
    .equ VARANDAS_X1, 74
    .equ VARANDAS_X3, 79

    MOV X1, VARANDAS_X1
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda 1

    MOV X1, VARANDAS_X1 + 25
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 25
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 45
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 45
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 70
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 70
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 95
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 95
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 118
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 118
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 140
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 140
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    // Varandas seccion 2
    // Barras verticales flacas a mano (por sector)
    .equ VARANDAS_X1, 260
    .equ VARANDAS_X2, 405
    .equ VARANDAS_X3, 266
    .equ VARANDAS_X4, 315

    MOV X1, VARANDAS_X1
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda 1

    MOV X1, VARANDAS_X1 + 25
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 25
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 45
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 45
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 70
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 70
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 95
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 95
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 118
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 118
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 140
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 140
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    // Varandas seccion 3
    // Barras verticales flacas a mano (por sector)
    .equ VARANDAS_X1, 445
    .equ VARANDAS_X3, 451

    MOV X1, VARANDAS_X1
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda 1

    MOV X1, VARANDAS_X1 + 25
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 25
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 45
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 45
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 70
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 70
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 95
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 95
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 118
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 118
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 140
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 140
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET



piso:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, SCREEN_START
    MOV X2, SCREEN_END_Y
    MOV X3, SCREEN_END_X
    MOV X4, 429
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET


edificios_claros:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]    


    MOV X1, 224
    MOV X2, 290
    MOV X3, 249
    MOV X4, 162
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo       // Edificio 


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
