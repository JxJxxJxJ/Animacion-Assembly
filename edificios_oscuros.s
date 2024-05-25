.ifndef EDIFICIOS_OSCUROS_S
.equ EDIFICIOS_OSCUROS_S, 0x00000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"

  /*
  Voy haciendo rectangulos de abajo para arriba
  */

edificios_oscuros:
  // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // -------------------------------
    // base 1
    // -------------------------------

    MOV X1, 419
    MOV X2, 217
    MOV X3, 640
    MOV X4, 298
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    // edificio 1
    MOV X1, 472
    MOV X2, 165
    MOV X3, 514
    MOV X4, 216
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    // tope edificio 1

    // rectangulo tope
    MOV X1, 510
    MOV X2, 153
    MOV X3, 476
    MOV X4, 164
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    // detalles tope (ventanas o algo asi)
    MOV X1, 480
    MOV X2, 156
    MOV X3, 483
    MOV X4, 164
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 488
    MOV X2, 156
    MOV X3, 490
    MOV X4, 164
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 495
    MOV X2, 156
    MOV X3, 498
    MOV X4, 164
    LDR X7, =DETALLE_VENTANA_0
    BL dibujar_rectangulo

    MOV X1, 502
    MOV X2, 156
    MOV X3, 507
    MOV X4, 164
    LDR X7, =DETALLE_VENTANA_0
    BL dibujar_rectangulo

    // ventanas edif 1
    // hago los cuadrados celestes (ventanas)
    MOV X1, 423
    MOV X2, 225
    MOV X3, 455
    MOV X4, 256
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    // sobrepinto los marcos
    MOV X1, 434
    MOV X2, 225
    MOV X3, 437
    MOV X4, 256
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 445
    MOV X2, 225
    MOV X3, 448
    MOV X4, 256
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 423
    MOV X2, 230
    MOV X3, 455
    MOV X4, 238
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 423
    MOV X2, 242
    MOV X3, 455
    MOV X4, 251
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo


    // conexion edif 1 y 2
    MOV X1, 512
    MOV X2, 205
    MOV X3, 533
    MOV X4, 298
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo


    // edificio 2

    MOV X1, 534
    MOV X2, 113
    MOV X3, 582
    MOV X4, 298
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo


    // luces
    MOV X1, 537
    MOV X2, 109
    MOV X3, 540
    MOV X4, 112
    LDR X7, =SALMON
    BL dibujar_rectangulo

    MOV X1, 576
    MOV X2, 109
    MOV X3, 579
    MOV X4, 112
    LDR X7, =SALMON
    BL dibujar_rectangulo

    // edificio 3

    MOV X1, 582
    MOV X2, 183
    MOV X3, 617
    MOV X4, 298
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 618
    MOV X2, 195
    MOV X3, 621
    MOV X4, 298
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 622
    MOV X2, 205
    MOV X3, 636
    MOV X4, 298
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    // ventanas edif 3
    // hago los cuadrados celestes (ventanas)
    MOV X1, 576
    MOV X2, 208
    MOV X3, 636
    MOV X4, 241
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 587
    MOV X2, 247
    MOV X3, 594
    MOV X4, 254
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 589
    MOV X2, 255
    MOV X3, 593
    MOV X4, 256
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo


    // sobrepinto los marcos
    MOV X1, 576
    MOV X2, 212
    MOV X3, 636
    MOV X4, 221
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 576
    MOV X2, 230
    MOV X3, 636
    MOV X4, 233
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 584
    MOV X2, 208
    MOV X3, 586
    MOV X4, 241
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 595
    MOV X2, 208
    MOV X3, 599
    MOV X4, 256
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 607
    MOV X2, 208
    MOV X3, 610
    MOV X4, 256
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 618
    MOV X2, 208
    MOV X3, 625
    MOV X4, 256
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 630
    MOV X2, 208
    MOV X3, 632
    MOV X4, 256
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 634
    MOV X2, 208
    MOV X3, 636
    MOV X4, 211
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
