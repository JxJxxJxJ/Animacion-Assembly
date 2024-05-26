.ifndef SPRITES_S
.equ SPRITES_S, 0x000000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"

lampara_0:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 23  
    MOV X2, 308
    MOV X3, 31
    MOV X4, 308
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 31  
    MOV X2, 307
    MOV X3, 31
    MOV X4, 139
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    // foco
    MOV X1, 66
    MOV X2, 88
    MOV X3, 99
    MOV X4, 84
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 103
    MOV X2, 89
    MOV X3, 59
    MOV X4, 94
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 65
    MOV X2, 92
    MOV X3, 51
    MOV X4, 96
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 48
    MOV X2, 99
    MOV X3, 64
    MOV X4, 97
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 100
    MOV X3, 48
    MOV X4, 104
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 104
    MOV X3, 47
    MOV X4, 102
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 106
    MOV X3, 46
    MOV X4, 109
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 110
    MOV X3, 39
    MOV X4, 121
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 35
    MOV X2, 114
    MOV X3, 33
    MOV X4, 121
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 122
    MOV X3, 32
    MOV X4, 123
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 29
    MOV X2, 124
    MOV X3, 31
    MOV X4, 131
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 132
    MOV X3, 26
    MOV X4, 138
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 20
    MOV X2, 141
    MOV X3, 24
    MOV X4, 307
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 19
    MOV X2, 308
    MOV X3, 22
    MOV X4, 308
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 16
    MOV X2, 330
    MOV X3, 31
    MOV X4, 456
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 31
    MOV X2, 307
    MOV X3, 25
    MOV X4, 139
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 132
    MOV X3, 27
    MOV X4, 146
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 134
    MOV X3, 38
    MOV X4, 125
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 42
    MOV X2, 122
    MOV X3, 33
    MOV X4, 124
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 124
    LDR X7, =BLACK_0
    BL dibujar_pixel

    MOV X1, 46
    MOV X2, 121
    MOV X3, 40
    MOV X4, 110
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 105
    MOV X3, 49
    MOV X4, 116
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 53
    MOV X2, 112
    MOV X3, 50
    MOV X4, 105
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 61
    MOV X2, 107
    MOV X3, 54
    MOV X4, 105
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 64
    MOV X2, 104
    MOV X3, 51
    MOV X4, 100
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 46
    MOV X2, 105
    MOV X3, 44
    MOV X4, 105
    LDR X7, =BLACK_1
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
