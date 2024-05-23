.globl main
    .equ SCREEN_WIDTH, 640
    .equ SCREEN_HEIGHT, 480
    .equ BITS_PER_PIXEL, 32

    .equ GPIO_BASE, 0x3f200000
    .equ GPIO_GPFSEL0, 0x00
    .equ GPIO_GPLEV0, 0x34

    .equ BLANCO, 0xFFFFFF
    .equ ROJO, 0xFF0000
    .equ VERDE, 0x00FF00
    .equ VERDE_CLARO, 0xCCFFCC
    .equ AZUL, 0x0000FF
    .equ CIAN, 0x00FFFF
    .equ AMARILLO, 0xFFFF00
    .equ MAGENTA, 0xFF00FF

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

    // // Rectángulo 1 (AMARILLO)  (x1 < x2 && y1 < y2)
    // MOV X1, #1
    // MOV X2, #1
    // MOV X3, #50
    // MOV X4, #50
    // LDR X7, =AMARILLO
    // BL dibujar_rectangulo

    // // Rectángulo 1 (AZUL)      (x1 > x2 && y1 > y2)
    // MOV X1, 250
    // MOV X2, 340
    // MOV X3, 475
    // MOV X4, 400
    // LDR X7, =VERDE_CLARO
    // BL dibujar_rectangulo

    // (250,340) (475,400)
    // Punto (MAGENTA) // NOTE ANDA
    MOV X1, 250
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


// TODO _-------------------------------------

