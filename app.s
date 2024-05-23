.include "colores.s"        // Color definitions
.include "elementales.s"    // Basic functions
.include "framebuffer.s"    // Frame Buffer definitions


.globl main

// x0 contiene la direccion base del framebuffer
// TODO ---------------- CODE HERE ------------------------------------
main:
    // Punto (BLANCO) // NOTE ANDA
    MOV X1, SCREEN_WIDTH/2
    MOV X2, SCREEN_HEIGHT/2 
    LDR X7, =BLANCO
    BL dibujar_pixel

    
    // Punto (BLANCO) // NOTE ANDA
    MOV X1, SCREEN_WIDTH/2 + 96
    MOV X2, SCREEN_HEIGHT/2 
    LDR X7, =BLANCO
    BL dibujar_pixel

    // Punto (BLANCO) // NOTE ANDA
    MOV X1, SCREEN_WIDTH/2 + 128
    MOV X2, SCREEN_HEIGHT/2 
    LDR X7, =BLANCO
    BL dibujar_pixel

    // Línea Vertical (CIAN)
    MOV X1, #250+50
    MOV X2, #100
    MOV X3, #250+50
    MOV X4, #400
    LDR X7, =CIAN
    BL dibujar_linea

    // Línea Horizontal (Rojo)
    MOV X1, #400
    MOV X2, #250
    MOV X3, #100
    MOV X4, #250
    LDR X7, =ROJO
    BL dibujar_linea

    // Línea Vertical (Morado)
    MOV X1, #100
    MOV X2, #250+50
    MOV X3, #400
    MOV X4, #250+50
    LDR X7, =MAGENTA
    BL dibujar_linea

    // Rectángulo 1 (AMARILLO)  (x1 < x2 && y1 < y2)
    MOV X1, #1
    MOV X2, #1
    MOV X3, #50
    MOV X4, #50
    LDR X7, =AMARILLO
    BL dibujar_rectangulo

    // Rectángulo 1 (AMARILLO)  (x1 < x2 && y1 < y2)
    MOV X1, #600
    MOV X2, #400
    MOV X3, #650
    MOV X4, #420
    LDR X7, =AMARILLO
    BL dibujar_rectangulo


  

    // Rectángulo 1 (AZUL)      (x1 > x2 && y1 > y2)
    MOV X1, 250
    MOV X2, 340
    MOV X3, 260
    MOV X4, 350
    LDR X7, =VERDE_CLARO
    BL dibujar_rectangulo

    // Rectángulo 1 (VERDE CLARO)      (x1 > x2 && y1 > y2)
    MOV X1, 450
    MOV X2, 150
    MOV X3, 150
    MOV X4, 450
    LDR X7, =VERDE_CLARO
    BL dibujar_rectangulo

    // Punto (MAGENTA) // NOTE ANDA
    MOV X1, 500
    MOV X2, 340
    LDR X7, =MAGENTA
    BL dibujar_pixel

    // Punto (VERDE) // NOTE ANDA
    MOV X1, 475
    MOV X2, 400
    LDR X7, =VERDE
    BL dibujar_pixel

// Infinite Loop
InfLoop:
B InfLoop






