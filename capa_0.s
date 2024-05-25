.ifndef CAPA0_S
.equ CAPA0_S, 0x000000

.include "./colores.s"
.include "framebuffer.s"
.include "elementales.s"
.include "edificios_oscuros.s"
.include "edificios_claros.s"

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

    BL fondo_0                     // Hecho  
    BL varanda
    BL piso

    BL edificios_claros         // Gaspar
    // BL edificios_medios         // Nehuen
    BL edificios_oscuros        // Gaspar

    BL puente

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

    MOV X1, 0
    MOV X2, 299
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 50
    MOV X2, 455
    MOV X3, 64
    MOV X4, 329
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 92
    MOV X2, 430
    MOV X3, 86
    MOV X4, 330
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 178
    MOV X2, 330
    MOV X3, 184
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 330
    MOV X3, 214
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 236
    MOV X2, 330
    MOV X3, 249
    MOV X4, 567
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 274
    MOV X2, 330
    MOV X3, 280
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 302
    MOV X2, 330
    MOV X3, 306
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, SCREEN_START
    MOV X2, 442
    MOV X3, SCREEN_END_X
    MOV X4, 431
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 420
    MOV X2, 456
    MOV X3, 433
    MOV X4, 330
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 459
    MOV X2, 330
    MOV X3, 465
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 485
    MOV X2, 330
    MOV X3, 491
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 516
    MOV X2, 330
    MOV X3, 522
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 546
    MOV X2, 330
    MOV X3, 552
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 577
    MOV X2, 430
    MOV X3, 583
    MOV X4, 330
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 605
    MOV X2, 330
    MOV X3, 618
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 393
    MOV X2, 430
    MOV X3, 399
    MOV X4, 330
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 363
    MOV X2, 330
    MOV X3, 369
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 332
    MOV X2, 430
    MOV X3, 337
    MOV X4, 330
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    
    
    

    
    
    
    
    


    MOV X1, SCREEN_START
    MOV X2, SCREEN_END_Y
    MOV X3, SCREEN_END_X
    MOV X4, 456
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, SCREEN_START
    MOV X2, 329
    MOV X3, SCREEN_END_X
    MOV X4, 308

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

puente:
// PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // parte oscura

    MOV X1, 257
    MOV X2, 274
    MOV X3, 419
    MOV X4, 298
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 399
    MOV X2, 222
    MOV X3, 409
    MOV X4, 274
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 296
    MOV X2, 222
    MOV X3, 306
    MOV X4, 274
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 326
    MOV X2, 242
    MOV X3, 379
    MOV X4, 246
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 314
    MOV X2, 239
    MOV X3, 329
    MOV X4, 241
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 307
    MOV X2, 234
    MOV X3, 318
    MOV X4, 238
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 307
    MOV X2, 230
    MOV X3, 309
    MOV X4, 233
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 376
    MOV X2, 239
    MOV X3, 387
    MOV X4, 241
    LDR X7, =FONDO_VARANDA_0
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

.endif
