.ifndef EDIFICIOS_CLAROS_S
.equ EDIFICIOS_CLAROS_S, 0x000000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"


/*
Enumero edicios claros de izquierda a derecha, empezando por el 1
A su vez hago lo mismo con las bases
Para los topes enumeros de abajo hacia arriba, empezando por el 1
*/

edificios_claros:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]    

    // -------------------------------
    // edificio 1
    // -------------------------------

    // base 1
    MOV X1, 174
    MOV X2, 205
    MOV X3, 209
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // base 2
    MOV X1, 210
    MOV X2, 234
    MOV X3, 213
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // base 3
    MOV X1, 213
    MOV X2, 274
    MOV X3, 400
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope
    MOV X1, 192
    MOV X2, 192
    MOV X3, 206
    MOV X4, 204
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    

    // -------------------------------
    // edificio 2
    // -------------------------------

    // base 1
    MOV X1, 223
    MOV X2, 152
    MOV X3, 250
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 1
    MOV X1, 227
    MOV X2, 143
    MOV X3, 246
    MOV X4, 152
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 2
    MOV X1, 231
    MOV X2, 135
    MOV X3, 243
    MOV X4, 142
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 3
    MOV X1, 234
    MOV X2, 134
    MOV X3, 240
    MOV X4, 134
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo    

    // tope 4
    MOV X1, 235
    MOV X2, 131
    MOV X3, 239
    MOV X4, 133
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo 


    // -------------------------------
    // edificio 3
    // -------------------------------

    // base 1
    MOV X1, 316
    MOV X2, 135
    MOV X3, 344
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 1
    MOV X1, 334
    MOV X2, 121
    MOV X3, 339
    MOV X4, 134
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // detalles
    // luz 1
    MOV X1, 319
    MOV X2, 129
    MOV X3, 323
    MOV X4, 134
    LDR X7, =SALMON
    BL dibujar_rectangulo

    // detalle de luz
    MOV X1, 319
    MOV X2, 134
    MOV X3, 324
    MOV X4, 134
    LDR X7, =DARKOLIVEGREEN
    BL dibujar_rectangulo

    // luz 2
    MOV X1, 338
    MOV X2, 130
    MOV X3, 341
    MOV X4, 134
    LDR X7, =SALMON
    BL dibujar_rectangulo

    // fix px
    MOV X1, 315
    MOV X2, 135
    LDR X7, =DEBUG
    BL dibujar_pixel
    
    
    // detalle de luz
    MOV X1, 338
    MOV X2, 134
    MOV X3, 341
    MOV X4, 134
    LDR X7, =DARKOLIVEGREEN
    BL dibujar_rectangulo


    // -------------------------------
    // Conexion edificio 3-4
    // -------------------------------

    // base 1
    MOV X1, 345
    MOV X2, 175
    MOV X3, 372
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // -------------------------------
    // edificio 4
    // -------------------------------

    // base 1
    MOV X1, 373
    MOV X2, 113
    MOV X3, 403
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 1
    MOV X1, 377
    MOV X2, 109
    MOV X3, 398
    MOV X4, 112
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    // detalles
    // luz 1
    MOV X1, 377
    MOV X2, 103
    MOV X3, 381
    MOV X4, 108
    LDR X7, =SALMON
    BL dibujar_rectangulo

    // luz 2
    MOV X1, 395
    MOV X2, 104
    MOV X3, 398
    MOV X4, 108
    LDR X7, =SALMON
    BL dibujar_rectangulo

    // -------------------------------
    // edificio 5
    // -------------------------------

    // base 1
    MOV X1, 438
    MOV X2, 191
    MOV X3, 460
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    // -------------------------------
    // edificio 6
    // -------------------------------

    // base 1
    MOV X1, 476
    MOV X2, 109
    MOV X3, 505
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    // tope 1
    MOV X1, 480
    MOV X2, 101
    MOV X3, 500
    MOV X4, 108
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 2
    MOV X1, 481
    MOV X2, 99
    MOV X3, 499
    MOV X4, 100
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // fix px
    MOV X1, 499
    MOV X2, 50
    MOV X3, 499
    MOV X4, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    

    // tope 2
    MOV X1, 484
    MOV X2, 91
    MOV X3, 496
    MOV X4, 98
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 2
    MOV X1, 488
    MOV X2, 82
    MOV X3, 492
    MOV X4, 90
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // -------------------------------
    // edificio 6
    // -------------------------------

    // base 1
    MOV X1, 511
    MOV X2, 99
    MOV X3, 538
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    // tope 1
    MOV X1, 523
    MOV X2, 91
    MOV X3, 532
    MOV X4, 98
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    // detalles del tope
    MOV X1, 522
    MOV X2, 91
    MOV X3, 522
    MOV X4, 98
    LDR X7, =DETALLE_VENTANA_0
    BL dibujar_rectangulo
    
    MOV X1, 533
    MOV X2, 91
    MOV X3, 534
    MOV X4, 98
    LDR X7, =DETALLE_VENTANA_0
    BL dibujar_rectangulo

    // -------------------------------
    // edificio 7
    // -------------------------------

    // base 1
    MOV X1, 604
    MOV X2, 139
    MOV X3, 630
    MOV X4, 298
    LDR X7, =STEELBLUE_2
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
