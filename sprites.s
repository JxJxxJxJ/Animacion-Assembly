.ifndef SPRITES_S
.equ SPRITES_S, 0x000000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"

lampara_0_fondo_0: // NOTE DONE
    // PUSH(X30) 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, 66
    MOV X2, 99
    MOV X3, 107
    MOV X4, 128
    LDR X7, =CIELO_0
    BL dibujar_rectangulo
    
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

    MOV X1, 23  
    MOV X2, 309
    MOV X3, 31
    MOV X4, 331
    LDR X7, =BLACK_0
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

    MOV X1, 73
    MOV X2, 126
    MOV X3, 100
    MOV X4, 114
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 107
    MOV X2, 110
    MOV X3, 97
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 100
    MOV X3, 107
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 95
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 103
    MOV X2, 95
    MOV X3, 66
    MOV X4, 96
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 78
    MOV X2, 110
    MOV X3, 96
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 109
    MOV X3, 100
    MOV X4, 102
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 79
    MOV X2, 100
    MOV X3, 99
    MOV X4, 101
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 100
    MOV X3, 78
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 100
    MOV X3, 101
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 97
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 113
    LDR X7, =BLACK_1
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 308
    LDR X7, =BLACK_1
    BL dibujar_pixel


    
    
    MOV X1, 78
    MOV X2, 97
    MOV X3, 100
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 97
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 105
    MOV X3, 62
    MOV X4, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 63
    MOV X2, 109
    MOV X3, 62
    MOV X4, 106
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =DETALLE_VENTANA_0 
    BL dibujar_rectangulo

    MOV X1, 61
    MOV X2, 108
    MOV X3, 55
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 114
    MOV X3, 50
    MOV X4, 116
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 125
    MOV X3, 42
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
 
    MOV X1, 39
    MOV X2, 125
    MOV X3, 39
    MOV X4, 126
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 54
    MOV X2, 108
    MOV X3, 54
    MOV X4, 109
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
       

    MOV X1, 34
    MOV X2, 135
    MOV X3, 35
    MOV X4, 146
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 20
    MOV X2, 139
    MOV X3, 24
    MOV X4, 140
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 132
    MOV X3, 26
    MOV X4, 138
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 124
    MOV X3, 31
    MOV X4, 131
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 122
    MOV X3, 32
    MOV X4, 123
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 114
    MOV X3, 39
    MOV X4, 121
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 113
    MOV X3, 39
    MOV X4, 110
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 109
    MOV X3, 46
    MOV X4, 106
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 105
    MOV X3, 46
    MOV X4, 105
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 104
    MOV X3, 50
    MOV X4, 102
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 48
    MOV X2, 97
    MOV X3, 50
    MOV X4, 101
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 96
    MOV X3, 58
    MOV X4, 92
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 97
    MOV X3, 64
    MOV X4, 99
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 89
    MOV X3, 69
    MOV X4, 96
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 89
    MOV X3, 103
    MOV X4, 94
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 69
    MOV X2, 117
    MOV X3, 70
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 71
    MOV X2, 117
    MOV X3, 72
    MOV X4, 121
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 46
    MOV X2, 123
    MOV X3, 44
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 117
    MOV X3, 50
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 39
    MOV X2, 135
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 139
    MOV X3, 19
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 113
    MOV X3, 32
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 43
    MOV X2, 100
    MOV X3, 43
    MOV X4, 101
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 138
    MOV X3, 24
    MOV X4, 132
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 148
    MOV X3, 35
    MOV X4, 147
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 135
    MOV X3, 38
    MOV X4, 135
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 127
    MOV X3, 39
    MOV X4, 134
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 27
    MOV X2, 129
    MOV X3, 28
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 49
    MOV X2, 118
    MOV X3, 47
    MOV X4, 117
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 113
    MOV X3, 35
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 113
    MOV X3, 54
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 54
    MOV X2, 110
    MOV X3, 54
    MOV X4, 112
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 106
    MOV X3, 39
    MOV X4, 109
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 102
    MOV X3, 43
    MOV X4, 104
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 44
    MOV X2, 101
    MOV X3, 46
    MOV X4, 100
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 96
    MOV X3, 50
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 58
    MOV X2, 88
    MOV X3, 58
    MOV X4, 91
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 96
    MOV X3, 103
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 94
    MOV X3, 104
    MOV X4, 88
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 100
    MOV X2, 87
    MOV X3, 100
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 99
    MOV X2, 83
    MOV X3, 66
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 20
    MOV X2, 140
    MOV X3, 24
    MOV X4, 139
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 116
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 130
    MOV X3, 26
    MOV X4, 131
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 114
    MOV X3, 107
    MOV X4, 116
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 126
    MOV X3, 43
    MOV X4, 124
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 123
    MOV X3, 46
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 118
    MOV X3, 50
    MOV X4, 117
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 113
    MOV X3, 33
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 43
    MOV X2, 101
    MOV X3, 43
    MOV X4, 100
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96  
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 27
    MOV X2, 131
    MOV X3, 29
    MOV X4, 130
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 146
    MOV X3, 35
    MOV X4, 135
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 126
    MOV X3, 42
    MOV X4, 125
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 123
    MOV X3, 31
    MOV X4, 122
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 121
    MOV X3, 32
    MOV X4, 114
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 105
    MOV X3, 43
    MOV X4, 105
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 101
    MOV X3, 47
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 55
    MOV X2, 109
    MOV X3, 61
    MOV X4, 108
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 88
    MOV X3, 65
    MOV X4, 88
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
lampara_0_fondo_1: // NOTE DONE
    // PUSH(X30) 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, 66
    MOV X2, 99
    MOV X3, 107
    MOV X4, 128
    LDR X7, =CIELO_1
    BL dibujar_rectangulo
    
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

    MOV X1, 23  
    MOV X2, 309
    MOV X3, 31
    MOV X4, 331
    LDR X7, =BLACK_0
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

    MOV X1, 73
    MOV X2, 126
    MOV X3, 100
    MOV X4, 114
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 107
    MOV X2, 110
    MOV X3, 97
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 100
    MOV X3, 107
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 95
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 103
    MOV X2, 95
    MOV X3, 66
    MOV X4, 96
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 78
    MOV X2, 110
    MOV X3, 96
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 109
    MOV X3, 100
    MOV X4, 102
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 79
    MOV X2, 100
    MOV X3, 99
    MOV X4, 101
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 100
    MOV X3, 78
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 100
    MOV X3, 101
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 97
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 113
    LDR X7, =BLACK_1
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 308
    LDR X7, =BLACK_1
    BL dibujar_pixel


    
    
    MOV X1, 78
    MOV X2, 97
    MOV X3, 100
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 97
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 105
    MOV X3, 62
    MOV X4, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 63
    MOV X2, 109
    MOV X3, 62
    MOV X4, 106
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =DETALLE_VENTANA_0 
    BL dibujar_rectangulo

    MOV X1, 61
    MOV X2, 108
    MOV X3, 55
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 114
    MOV X3, 50
    MOV X4, 116
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 125
    MOV X3, 42
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
 
    MOV X1, 39
    MOV X2, 125
    MOV X3, 39
    MOV X4, 126
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 54
    MOV X2, 108
    MOV X3, 54
    MOV X4, 109
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
       

    MOV X1, 34
    MOV X2, 135
    MOV X3, 35
    MOV X4, 146
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 20
    MOV X2, 139
    MOV X3, 24
    MOV X4, 140
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 132
    MOV X3, 26
    MOV X4, 138
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 124
    MOV X3, 31
    MOV X4, 131
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 122
    MOV X3, 32
    MOV X4, 123
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 114
    MOV X3, 39
    MOV X4, 121
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 113
    MOV X3, 39
    MOV X4, 110
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 109
    MOV X3, 46
    MOV X4, 106
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 105
    MOV X3, 46
    MOV X4, 105
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 104
    MOV X3, 50
    MOV X4, 102
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 48
    MOV X2, 97
    MOV X3, 50
    MOV X4, 101
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 96
    MOV X3, 58
    MOV X4, 92
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 97
    MOV X3, 64
    MOV X4, 99
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 89
    MOV X3, 69
    MOV X4, 96
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 89
    MOV X3, 103
    MOV X4, 94
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 69
    MOV X2, 117
    MOV X3, 70
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 71
    MOV X2, 117
    MOV X3, 72
    MOV X4, 121
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 46
    MOV X2, 123
    MOV X3, 44
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 117
    MOV X3, 50
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 39
    MOV X2, 135
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 139
    MOV X3, 19
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 113
    MOV X3, 32
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 43
    MOV X2, 100
    MOV X3, 43
    MOV X4, 101
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 138
    MOV X3, 24
    MOV X4, 132
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 148
    MOV X3, 35
    MOV X4, 147
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 135
    MOV X3, 38
    MOV X4, 135
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 127
    MOV X3, 39
    MOV X4, 134
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 27
    MOV X2, 129
    MOV X3, 28
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 49
    MOV X2, 118
    MOV X3, 47
    MOV X4, 117
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 113
    MOV X3, 35
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 113
    MOV X3, 54
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 54
    MOV X2, 110
    MOV X3, 54
    MOV X4, 112
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 106
    MOV X3, 39
    MOV X4, 109
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 102
    MOV X3, 43
    MOV X4, 104
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 44
    MOV X2, 101
    MOV X3, 46
    MOV X4, 100
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 96
    MOV X3, 50
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 58
    MOV X2, 88
    MOV X3, 58
    MOV X4, 91
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 96
    MOV X3, 103
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 94
    MOV X3, 104
    MOV X4, 88
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 100
    MOV X2, 87
    MOV X3, 100
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 99
    MOV X2, 83
    MOV X3, 66
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 20
    MOV X2, 140
    MOV X3, 24
    MOV X4, 139
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 116
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 130
    MOV X3, 26
    MOV X4, 131
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 114
    MOV X3, 107
    MOV X4, 116
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 126
    MOV X3, 43
    MOV X4, 124
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 123
    MOV X3, 46
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 118
    MOV X3, 50
    MOV X4, 117
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 113
    MOV X3, 33
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 43
    MOV X2, 101
    MOV X3, 43
    MOV X4, 100
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96  
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 27
    MOV X2, 131
    MOV X3, 29
    MOV X4, 130
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 146
    MOV X3, 35
    MOV X4, 135
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 126
    MOV X3, 42
    MOV X4, 125
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 123
    MOV X3, 31
    MOV X4, 122
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 121
    MOV X3, 32
    MOV X4, 114
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 105
    MOV X3, 43
    MOV X4, 105
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 101
    MOV X3, 47
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 55
    MOV X2, 109
    MOV X3, 61
    MOV X4, 108
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 88
    MOV X3, 65
    MOV X4, 88
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
lampara_0_fondo_2: // NOTE DONE
    // PUSH(X30) 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, 66
    MOV X2, 99
    MOV X3, 107
    MOV X4, 128
    LDR X7, =CIELO_2
    BL dibujar_rectangulo
    
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

    MOV X1, 23  
    MOV X2, 309
    MOV X3, 31
    MOV X4, 331
    LDR X7, =BLACK_0
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

    MOV X1, 73
    MOV X2, 126
    MOV X3, 100
    MOV X4, 114
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 107
    MOV X2, 110
    MOV X3, 97
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 100
    MOV X3, 107
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 95
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 103
    MOV X2, 95
    MOV X3, 66
    MOV X4, 96
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 78
    MOV X2, 110
    MOV X3, 96
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 109
    MOV X3, 100
    MOV X4, 102
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 79
    MOV X2, 100
    MOV X3, 99
    MOV X4, 101
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 100
    MOV X3, 78
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 100
    MOV X3, 101
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 97
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 113
    LDR X7, =BLACK_1
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 308
    LDR X7, =BLACK_1
    BL dibujar_pixel


    
    
    MOV X1, 78
    MOV X2, 97
    MOV X3, 100
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 97
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 105
    MOV X3, 62
    MOV X4, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 63
    MOV X2, 109
    MOV X3, 62
    MOV X4, 106
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =DETALLE_VENTANA_0 
    BL dibujar_rectangulo

    MOV X1, 61
    MOV X2, 108
    MOV X3, 55
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 114
    MOV X3, 50
    MOV X4, 116
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 125
    MOV X3, 42
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
 
    MOV X1, 39
    MOV X2, 125
    MOV X3, 39
    MOV X4, 126
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 54
    MOV X2, 108
    MOV X3, 54
    MOV X4, 109
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
       

    MOV X1, 34
    MOV X2, 135
    MOV X3, 35
    MOV X4, 146
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 20
    MOV X2, 139
    MOV X3, 24
    MOV X4, 140
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 132
    MOV X3, 26
    MOV X4, 138
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 124
    MOV X3, 31
    MOV X4, 131
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 122
    MOV X3, 32
    MOV X4, 123
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 114
    MOV X3, 39
    MOV X4, 121
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 113
    MOV X3, 39
    MOV X4, 110
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 109
    MOV X3, 46
    MOV X4, 106
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 105
    MOV X3, 46
    MOV X4, 105
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 104
    MOV X3, 50
    MOV X4, 102
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 48
    MOV X2, 97
    MOV X3, 50
    MOV X4, 101
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 96
    MOV X3, 58
    MOV X4, 92
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 97
    MOV X3, 64
    MOV X4, 99
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 89
    MOV X3, 69
    MOV X4, 96
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 89
    MOV X3, 103
    MOV X4, 94
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 69
    MOV X2, 117
    MOV X3, 70
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 71
    MOV X2, 117
    MOV X3, 72
    MOV X4, 121
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 46
    MOV X2, 123
    MOV X3, 44
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 117
    MOV X3, 50
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 39
    MOV X2, 135
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 139
    MOV X3, 19
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 113
    MOV X3, 32
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 43
    MOV X2, 100
    MOV X3, 43
    MOV X4, 101
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 138
    MOV X3, 24
    MOV X4, 132
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 148
    MOV X3, 35
    MOV X4, 147
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 135
    MOV X3, 38
    MOV X4, 135
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 127
    MOV X3, 39
    MOV X4, 134
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 27
    MOV X2, 129
    MOV X3, 28
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 49
    MOV X2, 118
    MOV X3, 47
    MOV X4, 117
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 113
    MOV X3, 35
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 113
    MOV X3, 54
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 54
    MOV X2, 110
    MOV X3, 54
    MOV X4, 112
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 106
    MOV X3, 39
    MOV X4, 109
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 102
    MOV X3, 43
    MOV X4, 104
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 44
    MOV X2, 101
    MOV X3, 46
    MOV X4, 100
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 96
    MOV X3, 50
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 58
    MOV X2, 88
    MOV X3, 58
    MOV X4, 91
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 96
    MOV X3, 103
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 94
    MOV X3, 104
    MOV X4, 88
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 100
    MOV X2, 87
    MOV X3, 100
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 99
    MOV X2, 83
    MOV X3, 66
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 20
    MOV X2, 140
    MOV X3, 24
    MOV X4, 139
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 116
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 130
    MOV X3, 26
    MOV X4, 131
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 114
    MOV X3, 107
    MOV X4, 116
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 126
    MOV X3, 43
    MOV X4, 124
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 123
    MOV X3, 46
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 118
    MOV X3, 50
    MOV X4, 117
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 113
    MOV X3, 33
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 43
    MOV X2, 101
    MOV X3, 43
    MOV X4, 100
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96  
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 27
    MOV X2, 131
    MOV X3, 29
    MOV X4, 130
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 146
    MOV X3, 35
    MOV X4, 135
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 126
    MOV X3, 42
    MOV X4, 125
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 123
    MOV X3, 31
    MOV X4, 122
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 121
    MOV X3, 32
    MOV X4, 114
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 105
    MOV X3, 43
    MOV X4, 105
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 101
    MOV X3, 47
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 55
    MOV X2, 109
    MOV X3, 61
    MOV X4, 108
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 88
    MOV X3, 65
    MOV X4, 88
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
lampara_0_fondo_3: // NOTE DONE
    // PUSH(X30) 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, 66
    MOV X2, 99
    MOV X3, 107
    MOV X4, 128
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
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

    MOV X1, 23  
    MOV X2, 309
    MOV X3, 31
    MOV X4, 331
    LDR X7, =BLACK_0
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

    MOV X1, 73
    MOV X2, 126
    MOV X3, 100
    MOV X4, 114
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 107
    MOV X2, 110
    MOV X3, 97
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 100
    MOV X3, 107
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 95
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 103
    MOV X2, 95
    MOV X3, 66
    MOV X4, 96
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 78
    MOV X2, 110
    MOV X3, 96
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 109
    MOV X3, 100
    MOV X4, 102
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 79
    MOV X2, 100
    MOV X3, 99
    MOV X4, 101
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 100
    MOV X3, 78
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 100
    MOV X3, 101
    MOV X4, 101
    LDR X7, =DETALLE_VENTANA_0  
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 97
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 113
    LDR X7, =BLACK_1
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 308
    LDR X7, =BLACK_1
    BL dibujar_pixel


    
    
    MOV X1, 78
    MOV X2, 97
    MOV X3, 100
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 97
    MOV X3, 104
    MOV X4, 99
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 105
    MOV X3, 62
    MOV X4, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 63
    MOV X2, 109
    MOV X3, 62
    MOV X4, 106
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =DETALLE_VENTANA_0 
    BL dibujar_rectangulo

    MOV X1, 61
    MOV X2, 108
    MOV X3, 55
    MOV X4, 109
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 114
    MOV X3, 50
    MOV X4, 116
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 125
    MOV X3, 42
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
 
    MOV X1, 39
    MOV X2, 125
    MOV X3, 39
    MOV X4, 126
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 54
    MOV X2, 108
    MOV X3, 54
    MOV X4, 109
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
       

    MOV X1, 34
    MOV X2, 135
    MOV X3, 35
    MOV X4, 146
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 20
    MOV X2, 139
    MOV X3, 24
    MOV X4, 140
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 25
    MOV X2, 132
    MOV X3, 26
    MOV X4, 138
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 124
    MOV X3, 31
    MOV X4, 131
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 122
    MOV X3, 32
    MOV X4, 123
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 114
    MOV X3, 39
    MOV X4, 121
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 113
    MOV X3, 39
    MOV X4, 110
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 109
    MOV X3, 46
    MOV X4, 106
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 105
    MOV X3, 46
    MOV X4, 105
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 104
    MOV X3, 50
    MOV X4, 102
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 48
    MOV X2, 97
    MOV X3, 50
    MOV X4, 101
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 96
    MOV X3, 58
    MOV X4, 92
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 97
    MOV X3, 64
    MOV X4, 99
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 89
    MOV X3, 69
    MOV X4, 96
    LDR X7, =BLACK_1
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 89
    MOV X3, 103
    MOV X4, 94
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 69
    MOV X2, 117
    MOV X3, 70
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 71
    MOV X2, 117
    MOV X3, 72
    MOV X4, 121
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 46
    MOV X2, 123
    MOV X3, 44
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 117
    MOV X3, 50
    MOV X4, 118
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 126
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 39
    MOV X2, 135
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 19
    MOV X2, 139
    MOV X3, 19
    MOV X4, 298
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 33
    MOV X2, 113
    MOV X3, 32
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 105
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel
    
    MOV X1, 43
    MOV X2, 100
    MOV X3, 43
    MOV X4, 101
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 138
    MOV X3, 24
    MOV X4, 132
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 148
    MOV X3, 35
    MOV X4, 147
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 36
    MOV X2, 135
    MOV X3, 38
    MOV X4, 135
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 127
    MOV X3, 39
    MOV X4, 134
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 27
    MOV X2, 129
    MOV X3, 28
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 123
    MOV X3, 43
    MOV X4, 122
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 49
    MOV X2, 118
    MOV X3, 47
    MOV X4, 117
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 113
    MOV X3, 35
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 113
    MOV X3, 54
    MOV X4, 113
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 54
    MOV X2, 110
    MOV X3, 54
    MOV X4, 112
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 39
    MOV X2, 106
    MOV X3, 39
    MOV X4, 109
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 102
    MOV X3, 43
    MOV X4, 104
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 44
    MOV X2, 101
    MOV X3, 46
    MOV X4, 100
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 96
    MOV X3, 50
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 58
    MOV X2, 88
    MOV X3, 58
    MOV X4, 91
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 96
    MOV X3, 103
    MOV X4, 95
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 94
    MOV X3, 104
    MOV X4, 88
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 100
    MOV X2, 87
    MOV X3, 100
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 99
    MOV X2, 83
    MOV X3, 66
    MOV X4, 83
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 20
    MOV X2, 140
    MOV X3, 24
    MOV X4, 139
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 66
    MOV X2, 116
    MOV X3, 77
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 23
    MOV X2, 130
    MOV X3, 26
    MOV X4, 131
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 101
    MOV X2, 114
    MOV X3, 107
    MOV X4, 116
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 126
    MOV X3, 43
    MOV X4, 124
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 123
    MOV X3, 46
    MOV X4, 122
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 50
    MOV X2, 118
    MOV X3, 50
    MOV X4, 117
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 113
    MOV X3, 33
    MOV X4, 113
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 110
    MOV X3, 35
    MOV X4, 112
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 43
    MOV X2, 101
    MOV X3, 43
    MOV X4, 100
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 96  
    MOV X3, 49
    MOV X4, 95
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 27
    MOV X2, 131
    MOV X3, 29
    MOV X4, 130
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 34
    MOV X2, 146
    MOV X3, 35
    MOV X4, 135
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 126
    MOV X3, 42
    MOV X4, 125
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 29
    MOV X2, 123
    MOV X3, 31
    MOV X4, 122
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 121
    MOV X3, 32
    MOV X4, 114
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 105
    MOV X3, 43
    MOV X4, 105
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 101
    MOV X3, 47
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 55
    MOV X2, 109
    MOV X3, 61
    MOV X4, 108
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 65
    MOV X2, 104
    MOV X3, 65
    MOV X4, 97
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 88
    MOV X3, 65
    MOV X4, 88
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

lampara_1: // TODO
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 66
    MOV X2, 99
    MOV X3, 107
    MOV X4, 128
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    MOV X1, 19
    MOV X2, 454
    MOV X3, 30
    MOV X4, 148
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 22
    MOV X2, 138
    MOV X3, 23
    MOV X4, 233
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 26
    MOV X2, 283
    MOV X3, 30
    MOV X4, 407
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 24
    MOV X2, 143
    MOV X3, 25
    MOV X4, 233
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 381
    MOV X3, 27
    MOV X4, 381
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 403
    MOV X3, 27
    MOV X4, 403
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 26
    MOV X2, 382
    MOV X3, 30
    MOV X4, 389
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 398
    MOV X3, 30
    MOV X4, 399
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 400
    MOV X3, 30
    MOV X4, 402
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 28
    MOV X2, 301
    MOV X3, 30
    MOV X4, 337
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 299
    MOV X3, 27
    MOV X4, 300
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 28
    MOV X2, 291
    MOV X3, 30
    MOV X4, 293
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 283
    MOV X3, 30
    MOV X4, 284
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 282
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel

    MOV X1, 27
    MOV X2, 282
    LDR X7, =STEELBLUE_2
    BL dibujar_pixel

    MOV X1, 26
    MOV X2, 285
    LDR X7, =DETALLE_VENTANA_0
    BL dibujar_pixel
    
    MOV X1, 27
    MOV X2, 285
    LDR X7, =DETALLE_VENTANA_0
    BL dibujar_pixel
    
    MOV X1, 26
    MOV X2, 286
    MOV X3, 27
    MOV X4, 289
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    MOV X1, 26
    MOV X2, 290
    LDR X7, =CIELO_1
    BL dibujar_pixel

    MOV X1, 27
    MOV X2, 290
    LDR X7, =CIELO_1
    BL dibujar_pixel
    
    MOV X1, 26
    MOV X2, 294
    MOV X3, 27
    MOV X4, 295
    LDR X7, =CIELO_1
    BL dibujar_rectangulo
    
    MOV X1, 26
    MOV X2, 296
    MOV X3, 27
    MOV X4, 298
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    MOV X1, 26
    MOV X2, 299
    MOV X3, 27
    MOV X4, 300
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 28
    MOV X2, 299
    MOV X3, 30
    MOV X4, 300
    LDR X7, =CIELO_0
    BL dibujar_rectangulo
    
    MOV X1, 28
    MOV X2, 296
    MOV X3, 30
    MOV X4, 298
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 28
    MOV X2, 294
    MOV X3, 30
    MOV X4, 295
    LDR X7, =CIELO_3
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 291
    MOV X3, 30
    MOV X4, 293
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo
    
    MOV X1, 28
    MOV X2, 290
    MOV X3, 30
    MOV X4, 290
    LDR X7, =CIELO_3
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 286
    MOV X3, 30
    MOV X4, 289
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 282
    MOV X3, 30
    MOV X4, 285
    LDR X7, =CIELO_0
    BL dibujar_rectangulo
    

    MOV X1, 28
    MOV X2, 283
    MOV X3, 30
    MOV X4, 284
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo


    MOV X1, 26
    MOV X2, 173
    MOV X3, 27
    MOV X4, 281
    LDR X7, =CIELO_3
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 173
    MOV X3, 30
    MOV X4, 281
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 178
    MOV X3, 30
    MOV X4, 186
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 148
    MOV X3, 30
    MOV X4, 172
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 135
    MOV X3, 30
    MOV X4, 145
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    MOV X1, 31
    MOV X2, 135
    MOV X3, 34
    MOV X4, 147
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 146
    MOV X3, 30
    MOV X4, 147
    LDR X7, =CIELO_1
    BL dibujar_rectangulo

    MOV X1, 26
    MOV X2, 146
    MOV X3, 27
    MOV X4, 147
    LDR X7, =CIELO_0
    BL dibujar_rectangulo

    MOV X1, 19
    MOV X2, 140
    MOV X3, 25
    MOV X4, 142
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 19
    MOV X2, 140
    MOV X3, 21
    MOV X4, 148
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 24
    MOV X2, 131
    MOV X3, 25
    MOV X4, 142
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 24
    MOV X2, 131
    MOV X3, 30
    MOV X4, 133
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 123
    MOV X3, 30
    MOV X4, 133
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 28
    MOV X2, 123
    MOV X3, 32
    MOV X4, 125
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 31
    MOV X2, 121
    MOV X3, 32
    MOV X4, 125
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 113
    MOV X3, 37
    MOV X4, 120
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 35
    MOV X2, 109
    MOV X3, 41
    MOV X4, 115
    LDR X7, =BLACK_1
    BL dibujar_rectangulo

    MOV X1, 78
    MOV X2, 126
    MOV X3, 100
    MOV X4, 122
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo

    MOV X1, 73
    MOV X2, 121
    MOV X3, 77
    MOV X4, 117
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 114
    MOV X3, 77
    MOV X4, 116
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 102
    MOV X3, 77
    MOV X4, 113
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 69
    MOV X2, 101
    MOV X3, 78
    MOV X4, 100
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
       
    MOV X1, 73
    MOV X2, 121
    MOV X3, 100
    MOV X4, 117
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 114
    MOV X3, 107
    MOV X4, 116
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 97
    MOV X2, 113
    MOV X3, 107
    MOV X4, 110
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 102
    MOV X3, 77
    MOV X4, 113
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 107
    MOV X2, 102
    MOV X3, 101
    MOV X4, 109
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 100
    MOV X2, 101
    MOV X3, 107
    MOV X4, 100
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 69
    MOV X2, 100
    MOV X3, 78
    MOV X4, 101
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 99
    MOV X3, 104
    MOV X4, 97
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 66
    MOV X2, 126
    MOV X3, 68
    MOV X4, 100
    LDR X7, =CIELO_3
    BL dibujar_rectangulo

    MOV X1, 69
    MOV X2, 126
    MOV X3, 70
    MOV X4, 102
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 117
    MOV X3, 72
    MOV X4, 126
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    MOV X1, 73
    MOV X2, 126
    MOV X3, 77
    MOV X4, 122
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 135
    MOV X3, 39
    MOV X4, 135
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 43
    MOV X2, 126
    MOV X3, 43
    MOV X4, 122
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 44
    MOV X2, 121
    MOV X3, 46
    MOV X4, 119
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 47
    MOV X2, 118
    MOV X3, 50
    MOV X4, 117
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 51
    MOV X2, 113
    MOV X3, 53
    MOV X4, 110
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 54
    MOV X2, 112
    MOV X3, 54
    MOV X4, 110
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 55
    MOV X2, 109
    MOV X3, 57
    MOV X4, 105
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 59
    MOV X2, 104
    MOV X3, 65
    MOV X4, 102
    LDR X7, =DARKTURQUOISE
    BL dibujar_rectangulo
    
    MOV X1, 79
    MOV X2, 101
    MOV X3, 99  
    MOV X4, 100
    LDR X7, =WHITE
    BL dibujar_rectangulo

    MOV X1, 78
    MOV X2, 102
    MOV X3, 96
    MOV X4, 113
    LDR X7, =WHITE
    BL dibujar_rectangulo
    
    MOV X1, 97
    MOV X2, 102
    MOV X3, 100
    MOV X4, 109
    LDR X7, =WHITE
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


perro_1:    // NOTE DONE
    // PUSH(X30, X1, X2, X3, X4, X7)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    

    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 417
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 413
    MOV X3, 151
    MOV X4, 417
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 418
    MOV X3, 157
    MOV X4, 420
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 421
    MOV X3, 154
    MOV X4, 422
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 423
    MOV X3, 153
    MOV X4, 442
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 431
    MOV X3, 181
    MOV X4, 447
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 418
    MOV X3, 184
    MOV X4, 434
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 413
    MOV X3, 185
    MOV X4, 422
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 413
    MOV X3, 184
    MOV X4, 417
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 405
    MOV X3, 188
    MOV X4, 420
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 401
    MOV X3, 192
    MOV X4, 412
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 396
    MOV X3, 196
    MOV X4, 403
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 387
    MOV X3, 199
    MOV X4, 400
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 398
    MOV X3, 200 
    MOV X4, 387
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 201
    MOV X2, 379
    MOV X3, 203
    MOV X4, 395
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 382
    MOV X3, 205
    MOV X4, 390
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 383
    MOV X3, 207
    MOV X4, 390
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 374
    MOV X3, 214
    MOV X4, 382
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 381
    MOV X3, 216
    MOV X4, 379
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    // ojo perro
    MOV X1, 215
    MOV X2, 387
    MOV X3, 220
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 217
    MOV X2, 387
    MOV X3, 218
    MOV X4, 395
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 409
    MOV X3, 154
    MOV X4, 412
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 416
    MOV X3, 150
    MOV X4, 417
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 410
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 423
    MOV X3, 154
    MOV X4, 430
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 431
    MOV X3, 161
    MOV X4, 442
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 442
    MOV X3, 164
    MOV X4, 440
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 447
    MOV X3, 164
    MOV X4, 443
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 447
    MOV X3, 166
    MOV X4, 446
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 448
    MOV X3, 168
    MOV X4, 450
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 451
    MOV X3, 168
    MOV X4, 452
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 453
    MOV X3, 173
    MOV X4, 455
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 448
    MOV X3, 218
    MOV X4, 455
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 435
    MOV X3, 214
    MOV X4, 447
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 423
    MOV X3, 214
    MOV X4, 434
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 421
    MOV X3, 214
    MOV X4, 422
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 413
    MOV X3, 214
    MOV X4, 420
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 404
    MOV X3, 218
    MOV X4, 412
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 401
    MOV X3, 238
    MOV X4, 403
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 399
    MOV X3, 238
    MOV X4, 400
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 396
    MOV X3, 238
    MOV X4, 398
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 391
    MOV X3, 214
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 214
    MOV X4, 390
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 391
    MOV X3, 238
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 388
    MOV X3, 230
    MOV X4, 390
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 385
    MOV X3, 218
    MOV X4, 386
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 384
    MOV X3, 223
    MOV X4, 386
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 387
    MOV X3, 224
    MOV X4, 387
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 374
    MOV X3, 216
    MOV X4, 378
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 379
    MOV X3, 218
    MOV X4, 381
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 377
    MOV X3, 200
    MOV X4, 386
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 374
    MOV X3, 203
    MOV X4, 378
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 379
    MOV X3, 207
    MOV X4, 381
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 382
    MOV X3, 207
    MOV X4, 382
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 211
    MOV X2, 382
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_pixel
    
    MOV X1, 215
    MOV X2, 413
    MOV X3, 216
    MOV X4, 417
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 413
    MOV X3, 218
    MOV X4, 415
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 416
    MOV X3, 181
    MOV X4, 417
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 188
    MOV X2, 404
    MOV X3, 186
    MOV X4, 404
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    MOV X3, 185
    MOV X4, 405
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 399
    MOV X3, 192
    MOV X4, 400
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 196
    MOV X2, 388
    MOV X3, 196
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 158 
    MOV X2, 456
    MOV X3, 218 
    MOV X4, 456
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 451
    MOV X3, 154
    MOV X4, 452
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 445
    MOV X3, 150
    MOV X4, 447
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 147
    MOV X2, 443
    MOV X3, 149
    MOV X4, 444
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 418
    MOV X3, 146
    MOV X4, 442
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 412
    MOV X3, 153
    MOV X4, 412
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 439
    MOV X3, 166
    MOV X4, 439
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_2    
    BL dibujar_rectangulo
    
    MOV X1, 235
    MOV X2, 404
    MOV X3, 238
    MOV X4, 404
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 232
    MOV X2, 387
    MOV X3, 238
    MOV X4, 390
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 387
    MOV X3, 230
    MOV X4, 387
    LDR X7, =DARKSLATEGRAY_2    
    BL dibujar_rectangulo
    
    MOV X1, 231
    MOV X2, 387
    MOV X3, 231
    MOV X4, 390
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 382
    MOV X3, 220
    MOV X4, 382
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 377
    MOV X3, 205
    MOV X4, 378
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 374
    MOV X3, 200 
    MOV X4, 376
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 404
    MOV X3, 220
    MOV X4, 404
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 416
    MOV X3, 218
    MOV X4, 417
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 418
    MOV X3, 216
    MOV X4, 447
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 453
    MOV X3, 159
    MOV X4, 455
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 169
    MOV X2, 451
    MOV X3, 170
    MOV X4, 452
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 448
    MOV X3, 154
    MOV X4, 450
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 451
    MOV X3, 157
    MOV X4, 452
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 440
    MOV X3, 166
    MOV X4, 445
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 439
    MOV X3, 164
    MOV X4, 439
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 443
    MOV X3, 150
    MOV X4, 444
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 413
    MOV X3, 150
    MOV X4, 415
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 180
    MOV X2, 413
    MOV X3, 181
    MOV X4, 415
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 223
    MOV X4, 386
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 382
    MOV X3, 218
    MOV X4, 382
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 442
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 420
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 411
    MOV X3, 186
    MOV X4, 413
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_pixel

    // POP(X30,X7,X4,X3,X2,X1)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET
    

perro_0: // NOTE DONE
    // PUSH(X30, X1, X2, X3, X4, X7)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    

    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 413
    MOV X3, 151
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 418
    MOV X3, 157
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 421
    MOV X3, 154
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 423
    MOV X3, 153
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 431
    MOV X3, 181
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 418
    MOV X3, 184
    MOV X4, 434
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 413
    MOV X3, 185
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 413
    MOV X3, 184
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 405
    MOV X3, 188
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 401
    MOV X3, 192
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 396
    MOV X3, 196
    MOV X4, 403
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 387
    MOV X3, 199
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 398
    MOV X3, 200 
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 201
    MOV X2, 379
    MOV X3, 203
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 382
    MOV X3, 205
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 383
    MOV X3, 207
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 374
    MOV X3, 214
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 381
    MOV X3, 216
    MOV X4, 379
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 387
    MOV X3, 218
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 409
    MOV X3, 154
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 416
    MOV X3, 150
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 410
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 423
    MOV X3, 154
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 431
    MOV X3, 161
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 442
    MOV X3, 164
    MOV X4, 440
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 447
    MOV X3, 164
    MOV X4, 443
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 447
    MOV X3, 166
    MOV X4, 446
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 448
    MOV X3, 168
    MOV X4, 450
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 451
    MOV X3, 168
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 453
    MOV X3, 173
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 448
    MOV X3, 218
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 435
    MOV X3, 214
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 423
    MOV X3, 214
    MOV X4, 434
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 421
    MOV X3, 214
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 413
    MOV X3, 214
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 404
    MOV X3, 218
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 401
    MOV X3, 238
    MOV X4, 403
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 399
    MOV X3, 238
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 396
    MOV X3, 238
    MOV X4, 398
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 391
    MOV X3, 214
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 214
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 391
    MOV X3, 238
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 388
    MOV X3, 230
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 385
    MOV X3, 218
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 384
    MOV X3, 223
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 387
    MOV X3, 224
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 374
    MOV X3, 216
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 379
    MOV X3, 218
    MOV X4, 381
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 377
    MOV X3, 200
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 374
    MOV X3, 203
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 379
    MOV X3, 207
    MOV X4, 381
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 382
    MOV X3, 207
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 211
    MOV X2, 382
    LDR X7, =BLACK_0
    BL dibujar_pixel
    
    MOV X1, 215
    MOV X2, 413
    MOV X3, 216
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 413
    MOV X3, 218
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 416
    MOV X3, 181
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 188
    MOV X2, 404
    MOV X3, 186
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    MOV X3, 185
    MOV X4, 405
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 399
    MOV X3, 192
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 196
    MOV X2, 388
    MOV X3, 196
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158 
    MOV X2, 456
    MOV X3, 218 
    MOV X4, 456
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 451
    MOV X3, 154
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 445
    MOV X3, 150
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 147
    MOV X2, 443
    MOV X3, 149
    MOV X4, 444
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 418
    MOV X3, 146
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    // ojo perro
    MOV X1, 217 
    MOV X2, 388
    MOV X3, 218
    MOV X4, 395
    LDR X7, =DARKOLIVEGREEN
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 387
    MOV X3, 220
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 394
    MOV X3, 216
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 387
    MOV X3, 216
    MOV X4, 387
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 388
    MOV X3, 216
    MOV X4, 393
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 217
    MOV X2, 387
    MOV X3, 218
    MOV X4, 387
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    MOV X1, 150
    MOV X2, 412
    MOV X3, 153
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 439
    MOV X3, 166
    MOV X4, 439
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_0    
    BL dibujar_rectangulo
    
    MOV X1, 235
    MOV X2, 404
    MOV X3, 238
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 232
    MOV X2, 387
    MOV X3, 238
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 387
    MOV X3, 230
    MOV X4, 387
    LDR X7, =BLACK_0    
    BL dibujar_rectangulo
    
    MOV X1, 231
    MOV X2, 387
    MOV X3, 231
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 382
    MOV X3, 220
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 377
    MOV X3, 205
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 374
    MOV X3, 200 
    MOV X4, 376
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 404
    MOV X3, 220
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 416
    MOV X3, 218
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 418
    MOV X3, 216
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 453
    MOV X3, 159
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 169
    MOV X2, 451
    MOV X3, 170
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 448
    MOV X3, 154
    MOV X4, 450
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 451
    MOV X3, 157
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 440
    MOV X3, 166
    MOV X4, 445
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 439
    MOV X3, 164
    MOV X4, 439
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 443
    MOV X3, 150
    MOV X4, 444
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 413
    MOV X3, 150
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 180
    MOV X2, 413
    MOV X3, 181
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 223
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 382
    MOV X3, 218
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 411
    MOV X3, 186
    MOV X4, 413
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    LDR X7, =BLACK_0
    BL dibujar_pixel

    // POP(X30,X7,X4,X3,X2,X1)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

perro_0_azul: // NOTE DONE
    // PUSH(X30, X1, X2, X3, X4, X7)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    

    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 413
    MOV X3, 151
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 418
    MOV X3, 157
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 421
    MOV X3, 154
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 423
    MOV X3, 153
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 431
    MOV X3, 181
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 418
    MOV X3, 184
    MOV X4, 434
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 413
    MOV X3, 185
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 413
    MOV X3, 184
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 405
    MOV X3, 188
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 401
    MOV X3, 192
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 396
    MOV X3, 196
    MOV X4, 403
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 387
    MOV X3, 199
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 398
    MOV X3, 200 
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 201
    MOV X2, 379
    MOV X3, 203
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 382
    MOV X3, 205
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 383
    MOV X3, 207
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 374
    MOV X3, 214
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 381
    MOV X3, 216
    MOV X4, 379
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 387
    MOV X3, 218
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 409
    MOV X3, 154
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 416
    MOV X3, 150
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 410
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 423
    MOV X3, 154
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 431
    MOV X3, 161
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 442
    MOV X3, 164
    MOV X4, 440
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 447
    MOV X3, 164
    MOV X4, 443
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 447
    MOV X3, 166
    MOV X4, 446
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 448
    MOV X3, 168
    MOV X4, 450
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 451
    MOV X3, 168
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 453
    MOV X3, 173
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 448
    MOV X3, 218
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 435
    MOV X3, 214
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 423
    MOV X3, 214
    MOV X4, 434
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 421
    MOV X3, 214
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 413
    MOV X3, 214
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 404
    MOV X3, 218
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 401
    MOV X3, 238
    MOV X4, 403
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 399
    MOV X3, 238
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 396
    MOV X3, 238
    MOV X4, 398
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 391
    MOV X3, 214
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 214
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 391
    MOV X3, 238
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 388
    MOV X3, 230
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 385
    MOV X3, 218
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 384
    MOV X3, 223
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 387
    MOV X3, 224
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 374
    MOV X3, 216
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 379
    MOV X3, 218
    MOV X4, 381
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 377
    MOV X3, 200
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 374
    MOV X3, 203
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 379
    MOV X3, 207
    MOV X4, 381
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 382
    MOV X3, 207
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 211
    MOV X2, 382
    LDR X7, =BLACK_0
    BL dibujar_pixel
    
    MOV X1, 215
    MOV X2, 413
    MOV X3, 216
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 413
    MOV X3, 218
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 416
    MOV X3, 181
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 188
    MOV X2, 404
    MOV X3, 186
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    MOV X3, 185
    MOV X4, 405
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 399
    MOV X3, 192
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 196
    MOV X2, 388
    MOV X3, 196
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158 
    MOV X2, 456
    MOV X3, 218 
    MOV X4, 456
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 451
    MOV X3, 154
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 445
    MOV X3, 150
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 147
    MOV X2, 443
    MOV X3, 149
    MOV X4, 444
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 418
    MOV X3, 146
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    // ojo perro
    MOV X1, 217 
    MOV X2, 388
    MOV X3, 218
    MOV X4, 395
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 387
    MOV X3, 220
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 394
    MOV X3, 216
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 387
    MOV X3, 216
    MOV X4, 387
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 388
    MOV X3, 216
    MOV X4, 393
    LDR X7, =STEELBLUE_2
    BL dibujar_rectangulo

    MOV X1, 217
    MOV X2, 387
    MOV X3, 218
    MOV X4, 387
    LDR X7, =CIELO_1
    BL dibujar_rectangulo
    
    MOV X1, 217 
    MOV X2, 394
    MOV X3, 218
    MOV X4, 395
    LDR X7, =CIELO_1
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 412
    MOV X3, 153
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 439
    MOV X3, 166
    MOV X4, 439
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_0    
    BL dibujar_rectangulo
    
    MOV X1, 235
    MOV X2, 404
    MOV X3, 238
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 232
    MOV X2, 387
    MOV X3, 238
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 387
    MOV X3, 230
    MOV X4, 387
    LDR X7, =BLACK_0    
    BL dibujar_rectangulo
    
    MOV X1, 231
    MOV X2, 387
    MOV X3, 231
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 382
    MOV X3, 220
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 377
    MOV X3, 205
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 374
    MOV X3, 200 
    MOV X4, 376
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 404
    MOV X3, 220
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 416
    MOV X3, 218
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 418
    MOV X3, 216
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 453
    MOV X3, 159
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 169
    MOV X2, 451
    MOV X3, 170
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 448
    MOV X3, 154
    MOV X4, 450
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 451
    MOV X3, 157
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 440
    MOV X3, 166
    MOV X4, 445
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 439
    MOV X3, 164
    MOV X4, 439
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 443
    MOV X3, 150
    MOV X4, 444
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 413
    MOV X3, 150
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 180
    MOV X2, 413
    MOV X3, 181
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 223
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 382
    MOV X3, 218
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 411
    MOV X3, 186
    MOV X4, 413
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    LDR X7, =BLACK_0
    BL dibujar_pixel

    // POP(X30,X7,X4,X3,X2,X1)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

perro_0_negro: // NOTE DONE
    // PUSH(X30, X1, X2, X3, X4, X7)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    

    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 413
    MOV X3, 151
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 418
    MOV X3, 157
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 421
    MOV X3, 154
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 423
    MOV X3, 153
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 431
    MOV X3, 181
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 418
    MOV X3, 184
    MOV X4, 434
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 413
    MOV X3, 185
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 413
    MOV X3, 184
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 405
    MOV X3, 188
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 401
    MOV X3, 192
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 396
    MOV X3, 196
    MOV X4, 403
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 387
    MOV X3, 199
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 398
    MOV X3, 200 
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 201
    MOV X2, 379
    MOV X3, 203
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 382
    MOV X3, 205
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 383
    MOV X3, 207
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 374
    MOV X3, 214
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 381
    MOV X3, 216
    MOV X4, 379
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 387
    MOV X3, 218
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 409
    MOV X3, 154
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 416
    MOV X3, 150
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 410
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 423
    MOV X3, 154
    MOV X4, 430
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 431
    MOV X3, 161
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 442
    MOV X3, 164
    MOV X4, 440
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 447
    MOV X3, 164
    MOV X4, 443
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 447
    MOV X3, 166
    MOV X4, 446
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 448
    MOV X3, 168
    MOV X4, 450
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 451
    MOV X3, 168
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 453
    MOV X3, 173
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 448
    MOV X3, 218
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 435
    MOV X3, 214
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 423
    MOV X3, 214
    MOV X4, 434
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 421
    MOV X3, 214
    MOV X4, 422
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 413
    MOV X3, 214
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 404
    MOV X3, 218
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 401
    MOV X3, 238
    MOV X4, 403
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 399
    MOV X3, 238
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 396
    MOV X3, 238
    MOV X4, 398
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 391
    MOV X3, 214
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 214
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 391
    MOV X3, 238
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 388
    MOV X3, 230
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 385
    MOV X3, 218
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 384
    MOV X3, 223
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 221
    MOV X2, 387
    MOV X3, 224
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 374
    MOV X3, 216
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 379
    MOV X3, 218
    MOV X4, 381
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 377
    MOV X3, 200
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 374
    MOV X3, 203
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 379
    MOV X3, 207
    MOV X4, 381
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 206
    MOV X2, 382
    MOV X3, 207
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 211
    MOV X2, 382
    LDR X7, =BLACK_0
    BL dibujar_pixel
    
    MOV X1, 215
    MOV X2, 413
    MOV X3, 216
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 413
    MOV X3, 218
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 416
    MOV X3, 181
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 188
    MOV X2, 404
    MOV X3, 186
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    MOV X3, 185
    MOV X4, 405
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 399
    MOV X3, 192
    MOV X4, 400
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 196
    MOV X2, 388
    MOV X3, 196
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158 
    MOV X2, 456
    MOV X3, 218 
    MOV X4, 456
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 451
    MOV X3, 154
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 445
    MOV X3, 150
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 147
    MOV X2, 443
    MOV X3, 149
    MOV X4, 444
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 418
    MOV X3, 146
    MOV X4, 442
    LDR X7, =BLACK_0
    // BL dibujar_rectangulo
    
    // ojo perro
    MOV X1, 217 
    MOV X2, 388
    MOV X3, 218
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 387
    MOV X3, 220
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 394
    MOV X3, 216
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 387
    MOV X3, 216
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 388
    MOV X3, 216
    MOV X4, 393
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 217
    MOV X2, 387
    MOV X3, 218
    MOV X4, 387
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217 
    MOV X2, 394
    MOV X3, 218
    MOV X4, 395
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 412
    MOV X3, 153
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 439
    MOV X3, 166
    MOV X4, 439
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_0    
    BL dibujar_rectangulo
    
    MOV X1, 235
    MOV X2, 404
    MOV X3, 238
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 232
    MOV X2, 387
    MOV X3, 238
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 225
    MOV X2, 387
    MOV X3, 230
    MOV X4, 387
    LDR X7, =BLACK_0    
    BL dibujar_rectangulo
    
    MOV X1, 231
    MOV X2, 387
    MOV X3, 231
    MOV X4, 390
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 382
    MOV X3, 220
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 204
    MOV X2, 377
    MOV X3, 205
    MOV X4, 378
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 374
    MOV X3, 200 
    MOV X4, 376
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 219
    MOV X2, 404
    MOV X3, 220
    MOV X4, 404
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 416
    MOV X3, 218
    MOV X4, 417
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 418
    MOV X3, 216
    MOV X4, 447
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 453
    MOV X3, 159
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 169
    MOV X2, 451
    MOV X3, 170
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 448
    MOV X3, 154
    MOV X4, 450
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 451
    MOV X3, 157
    MOV X4, 452
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 440
    MOV X3, 166
    MOV X4, 445
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 162
    MOV X2, 439
    MOV X3, 164
    MOV X4, 439
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 443
    MOV X3, 150
    MOV X4, 444
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 413
    MOV X3, 150
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 180
    MOV X2, 413
    MOV X3, 181
    MOV X4, 415
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 383
    MOV X3, 223
    MOV X4, 386
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 382
    MOV X3, 218
    MOV X4, 382
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 421
    MOV X3, 157
    MOV X4, 442
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 155
    MOV X2, 409
    MOV X3, 157
    MOV X4, 420
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 412
    MOV X3, 184
    MOV X4, 412
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 186
    MOV X2, 411
    MOV X3, 186
    MOV X4, 413
    LDR X7, =BLACK_0
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 412
    LDR X7, =BLACK_0
    BL dibujar_pixel

    // POP(X30,X7,X4,X3,X2,X1)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

hombre_1:
    // PUSH(X30) 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // gaspar

    //-----------------------
    // piernas
    // ----------------------
    MOV X1, 111
    MOV X2, 400
    MOV X3, 126
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 127
    MOV X2, 442
    MOV X3, 145
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 444
    MOV X3, 148
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 447
    MOV X3, 152
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 153
    MOV X2, 452
    MOV X3, 156
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 139
    MOV X2, 400
    MOV X3, 144
    MOV X4, 441
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 138
    MOV X2, 430
    MOV X3, 138
    MOV X4, 441
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 145
    MOV X2, 400
    MOV X3, 145
    MOV X4, 416
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 395
    MOV X3, 156
    MOV X4, 407
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 398
    MOV X3, 149
    MOV X4, 407
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 398
    MOV X3, 149
    MOV X4, 407
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 408
    MOV X3, 152
    MOV X4, 410
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 400
    MOV X3, 148
    MOV X4, 414
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    // ---------------------
    // saco
    // ---------------------

    MOV X1, 126
    MOV X2, 399
    MOV X3, 111
    MOV X4, 304
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 127
    MOV X2, 308
    MOV X3, 137
    MOV X4, 397
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 157
    MOV X2, 373
    MOV X3, 160
    MOV X4, 394
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 153
    MOV X2, 346
    MOV X3, 156
    MOV X4, 394
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    MOV X1, 138
    MOV X2, 321
    MOV X3, 141
    MOV X4, 399
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    MOV X1, 142
    MOV X2, 316
    MOV X3, 145
    MOV X4, 399
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    MOV X1, 157
    MOV X2, 373
    MOV X3, 160
    MOV X4, 394
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 312
    MOV X3, 148
    MOV X4, 399
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 312
    MOV X3, 149
    MOV X4, 397
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 308
    MOV X3, 152
    MOV X4, 394
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    MOV X1, 127
    MOV X2, 304
    MOV X3, 130
    MOV X4, 307
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 109
    MOV X2, 291
    MOV X3, 110
    MOV X4, 394
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 107
    MOV X2, 291
    MOV X3, 108
    MOV X4, 392
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 274
    MOV X3, 137
    MOV X4, 276
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 277
    MOV X3, 141
    MOV X4, 278
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 279
    MOV X3, 144
    MOV X4, 281
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 104
    MOV X2, 294
    MOV X3, 106
    MOV X4, 342
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 299
    MOV X3, 103
    MOV X4, 337
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    MOV X1, 96
    MOV X2, 304
    MOV X3, 99
    MOV X4, 333
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 93
    MOV X2, 312
    MOV X3, 95
    MOV X4, 328
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 92
    MOV X2, 313
    MOV X3, 92
    MOV X4, 328
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    // detalles más claros

    MOV X1, 93
    MOV X2, 308
    MOV X3, 95
    MOV X4, 311
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 296
    MOV X3, 103
    MOV X4, 298
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo


    MOV X1, 104
    MOV X2, 291
    MOV X3, 106
    MOV X4, 293
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 282
    MOV X3, 144
    MOV X4, 285
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo


    MOV X1, 109
    MOV X2, 286
    MOV X3, 144
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 111
    MOV X2, 291
    MOV X3, 148
    MOV X4, 295
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 111
    MOV X2, 296
    MOV X3, 152
    MOV X4, 303
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 131
    MOV X2, 304
    MOV X3, 152
    MOV X4, 307
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 138
    MOV X2, 308
    MOV X3, 141
    MOV X4, 320
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 142
    MOV X2, 308
    MOV X3, 145
    MOV X4, 315
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 308
    MOV X3, 149
    MOV X4, 311
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo


    MOV X1, 111
    MOV X2, 269
    MOV X3, 137
    MOV X4, 271
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 113
    MOV X2, 272
    MOV X3, 114
    MOV X4, 276
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo


    MOV X1, 115
    MOV X2, 272
    MOV X3, 137
    MOV X4, 273
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 138
    MOV X2, 274
    MOV X3, 141
    MOV X4, 276
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 111
    MOV X2, 272
    MOV X3, 112
    MOV X4, 276
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo


    // gorro

    MOV X1, 120
    MOV X2, 244
    MOV X3, 123
    MOV X4, 263
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 124
    MOV X2, 239
    MOV X3, 133
    MOV X4, 268
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 134
    MOV X2, 239
    MOV X3, 144
    MOV X4, 254
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 145
    MOV X2, 244
    MOV X3, 148
    MOV X4, 256
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 139
    MOV X2, 255
    MOV X3, 144
    MOV X4, 259
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 145
    MOV X2, 257
    MOV X3, 156
    MOV X4, 259
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    // POP(X30,X7,X4,X3,X2,X1)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET

hombre_0:
    // PUSH(X30) 
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    //jx agregue bloque negro pierna 
    
    MOV X1, 143
    MOV X2, 457
    MOV X3, 157
    MOV X4, 402
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    // gaspar

    //-----------------------
    // piernas
    // ----------------------
    MOV X1, 111
    MOV X2, 400
    MOV X3, 126
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 127
    MOV X2, 442
    MOV X3, 145
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 444
    MOV X3, 148
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 447
    MOV X3, 152
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 153
    MOV X2, 452
    MOV X3, 156
    MOV X4, 455
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 139
    MOV X2, 400
    MOV X3, 144
    MOV X4, 441
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 138
    MOV X2, 430
    MOV X3, 138
    MOV X4, 441
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 145
    MOV X2, 400
    MOV X3, 145
    MOV X4, 416
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 395
    MOV X3, 156
    MOV X4, 407
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 398
    MOV X3, 149
    MOV X4, 407
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 398
    MOV X3, 149
    MOV X4, 407
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 408
    MOV X3, 152
    MOV X4, 410
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 400
    MOV X3, 148
    MOV X4, 414
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    // ---------------------
    // saco
    // ---------------------

    MOV X1, 126
    MOV X2, 399
    MOV X3, 111
    MOV X4, 304
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 127
    MOV X2, 308
    MOV X3, 137
    MOV X4, 397
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 157
    MOV X2, 373
    MOV X3, 160
    MOV X4, 394
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 153
    MOV X2, 346
    MOV X3, 156
    MOV X4, 394
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 138
    MOV X2, 321
    MOV X3, 141
    MOV X4, 399
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 142
    MOV X2, 316
    MOV X3, 145
    MOV X4, 399
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 157
    MOV X2, 373
    MOV X3, 160
    MOV X4, 394
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 312
    MOV X3, 148
    MOV X4, 399
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 312
    MOV X3, 149
    MOV X4, 397
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 308
    MOV X3, 152
    MOV X4, 394
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 127
    MOV X2, 304
    MOV X3, 130
    MOV X4, 307
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 109
    MOV X2, 291
    MOV X3, 110
    MOV X4, 394
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 107
    MOV X2, 291
    MOV X3, 108
    MOV X4, 392
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 274
    MOV X3, 137
    MOV X4, 276
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 277
    MOV X3, 141
    MOV X4, 278
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 279
    MOV X3, 144
    MOV X4, 281
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 104
    MOV X2, 294
    MOV X3, 106
    MOV X4, 342
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 299
    MOV X3, 103
    MOV X4, 337
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 96
    MOV X2, 304
    MOV X3, 99
    MOV X4, 333
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 93
    MOV X2, 312
    MOV X3, 95
    MOV X4, 328
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 92
    MOV X2, 313
    MOV X3, 92
    MOV X4, 328
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    // detalles más claros

    MOV X1, 93
    MOV X2, 308
    MOV X3, 95
    MOV X4, 311
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 100
    MOV X2, 296
    MOV X3, 103
    MOV X4, 298
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 104
    MOV X2, 291
    MOV X3, 106
    MOV X4, 293
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 115
    MOV X2, 282
    MOV X3, 144
    MOV X4, 285
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 109
    MOV X2, 286
    MOV X3, 144
    MOV X4, 290
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 111
    MOV X2, 291
    MOV X3, 148
    MOV X4, 295
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 111
    MOV X2, 296
    MOV X3, 152
    MOV X4, 303
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 131
    MOV X2, 304
    MOV X3, 152
    MOV X4, 307
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 138
    MOV X2, 308
    MOV X3, 141
    MOV X4, 320
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 142
    MOV X2, 308
    MOV X3, 145
    MOV X4, 315
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 308
    MOV X3, 149
    MOV X4, 311
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 111
    MOV X2, 269
    MOV X3, 137
    MOV X4, 271
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 113
    MOV X2, 272
    MOV X3, 114
    MOV X4, 276
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 115
    MOV X2, 272
    MOV X3, 137
    MOV X4, 273
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 138
    MOV X2, 274
    MOV X3, 141
    MOV X4, 276
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 111
    MOV X2, 272
    MOV X3, 112
    MOV X4, 276
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    // gorro

    MOV X1, 120
    MOV X2, 244
    MOV X3, 123
    MOV X4, 263
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 124
    MOV X2, 239
    MOV X3, 133
    MOV X4, 268
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 134
    MOV X2, 239
    MOV X3, 144
    MOV X4, 254
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 145
    MOV X2, 244
    MOV X3, 148
    MOV X4, 256
    LDR X7, =BLACK_0
    BL dibujar_rectangulo


    MOV X1, 139
    MOV X2, 255
    MOV X3, 144
    MOV X4, 259
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    MOV X1, 145
    MOV X2, 257
    MOV X3, 156
    MOV X4, 259
    LDR X7, =BLACK_0
    BL dibujar_rectangulo

    // POP(X30,X7,X4,X3,X2,X1)
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
    MOV X2, 275 
    MOV X3, 18
    MOV X4, 299
    LDR X7, =CIELO_0
    BL dibujar_rectangulo

    // fix px
    MOV X1, 315
    MOV X2, 135
    BL dibujar_pixel
    
    MOV X1, 32
    MOV X2, 275
    MOV X3, 88
    MOV X4, 299
    
    BL dibujar_rectangulo
 
    MOV X1, 101
    MOV X2, 275
    MOV X3, 103
    MOV X4, 294
    
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 275
    MOV X3, 107
    MOV X4, 290
    
    BL dibujar_rectangulo
    
    MOV X1, 108
    MOV X2, 275
    MOV X3, 109
    MOV X4, 286
    
    BL dibujar_rectangulo
    
    MOV X1, 110
    MOV X2, 275
    MOV X3, 111
    MOV X4, 286 
    
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 286
    MOV X3, 114
    MOV X4, 280
    
    BL dibujar_rectangulo
    
    // TODO BUG
    // MOV X1, 173
    // MOV X2, 275
    // MOV X3, 140
    // MOV X4, 299

    MOV X1, 147
    MOV X2, 279
    MOV X3, 174
    MOV X4, 275
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 286
    MOV X3, 174
    MOV X4, 280
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 290
    MOV X3, 166
    MOV X4, 287
    BL dibujar_rectangulo

    MOV X1, 151
    MOV X2, 291
    MOV X3, 166
    MOV X4, 291
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 296
    MOV X3, 161
    MOV X4, 292
    BL dibujar_rectangulo

    // TODO BUG END
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 235
    MOV X3, 3
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 4
    MOV X2, 240
    MOV X3, 7
    MOV X4, 260
    
    BL dibujar_rectangulo
       
    MOV X1, 4
    MOV X2, 239
    
    BL dibujar_pixel
    
    MOV X1, 14
    MOV X2, 260
    MOV X3, 15
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 16
    MOV X2, 248
    MOV X3, 18
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 260
    MOV X3, 35
    MOV X4, 250
    
    BL dibujar_rectangulo

    MOV X1, 33
    MOV X2, 249
    MOV X3, 33
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 260
    MOV X3, 50
    MOV X4, 248
    
    BL dibujar_rectangulo
       
    MOV X1, 55
    MOV X2, 260
    MOV X3, 65
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 260
    MOV X3, 81
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 244
    MOV X3, 81
    MOV X4, 240
    
    BL dibujar_rectangulo
    
    MOV X1, 86
    MOV X2, 260
    MOV X3, 88
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 240
    MOV X3, 107
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 245
    MOV X3, 118
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 255
    MOV X3, 153
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 260
    MOV X3, 168
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 250
    MOV X3, 159
    MOV X4, 257
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 83
    MOV X3, 223
    MOV X4, 190
    
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 191
    MOV X3, 223
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 233
    MOV X3, 223
    MOV X4, 206
    
    BL dibujar_rectangulo
    
    MOV X1, 223
    MOV X2, 234
    MOV X3, 215
    MOV X4, 234
    
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 238
    MOV X3, 223
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 191
    MOV X3, 18  
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 9
    MOV X2, 234
    MOV X3, 18
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 14
    MOV X2, 238
    MOV X3, 18
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 191
    MOV X3, 191
    MOV X4, 205
    
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 206
    MOV X3, 173
    MOV X4, 220
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 221
    MOV X3, 88
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 234
    MOV X3, 81
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 77
    MOV X2, 235
    MOV X3, 32
    MOV X4, 238
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 242
    MOV X3, 65
    MOV X4, 239
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 230
    MOV X3, 173
    MOV X4, 221
    
    BL dibujar_rectangulo
    
    MOV X1, 105
    MOV X2, 231
    MOV X3, 173
    MOV X4, 234
    
    BL dibujar_rectangulo

    MOV X1, 173
    MOV X2, 235
    MOV X3, 112
    MOV X4, 238
    
    BL dibujar_rectangulo

    MOV X1, 121
    MOV X2, 239
    MOV X3, 122
    MOV X4, 242
    
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 239
    MOV X3, 168
    MOV X4, 242
    
    BL dibujar_rectangulo

    MOV X1, 224
    MOV X2, 83
    MOV X3, 299
    MOV X4, 131
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 83
    MOV X3, 376
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 373
    MOV X2, 114
    MOV X3, 300
    MOV X4, 116
    
    BL dibujar_rectangulo

    MOV X1, 304
    MOV X2, 117
    MOV X3, 334
    MOV X4, 123
    
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 117
    MOV X3, 373
    MOV X4, 173
    
    BL dibujar_rectangulo
    
    MOV X1, 250
    MOV X2, 132
    MOV X3, 275
    MOV X4, 186
    
    BL dibujar_rectangulo
    
    MOV X1, 275
    MOV X2, 187
    MOV X3, 251
    MOV X4, 187
    
    BL dibujar_rectangulo
    
    MOV X1, 224
    MOV X2, 153
    MOV X3, 224
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 225
    MOV X2, 151
    MOV X3, 227
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 132
    MOV X3, 234
    MOV X4, 134
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 143
    MOV X3, 231
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 239
    MOV X2, 134
    MOV X3, 249
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 242
    MOV X2, 135
    MOV X3, 249
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 243
    MOV X2, 136
    MOV X3, 249
    MOV X4, 143
    
    BL dibujar_rectangulo
    
    MOV X1, 247
    MOV X2, 144
    MOV X3, 249
    MOV X4, 151
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 168
    MOV X3, 280
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 170
    MOV X3, 277
    MOV X4, 169
    
    BL dibujar_rectangulo
    
    MOV X1, 313
    MOV X2, 169
    MOV X3, 314
    MOV X4, 233
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 134
    MOV X3, 319
    MOV X4, 124
    
    BL dibujar_rectangulo
    
    MOV X1, 320
    MOV X2, 124
    MOV X3, 334
    MOV X4, 129
    
    BL dibujar_rectangulo
    
    MOV X1, 324
    MOV X2, 134
    MOV X3, 334
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 335
    MOV X2, 121
    MOV X3, 345
    MOV X4, 117
    
    BL dibujar_rectangulo

    MOV X1, 339
    MOV X2, 129
    MOV X3, 345
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 342
    MOV X2, 131
    MOV X3, 345
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 343
    MOV X2, 134
    MOV X3, 345
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 585
    MOV X2, 113
    MOV X3, 587
    MOV X4, 181
    
    BL dibujar_rectangulo

    MOV X1, SCREEN_END_X
    MOV X2, 212
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo

    MOV X1, 542
    MOV X2, 83
    MOV X3, 572
    MOV X4, 112
    
    BL dibujar_rectangulo

    MOV X1, 639
    MOV X2, 83
    MOV X3, 573
    MOV X4, 99
    
    BL dibujar_rectangulo
    
    MOV X1, 308
    MOV X2, 162
    MOV X3, 314
    MOV X4, 168
    
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 162
    MOV X3, 303
    MOV X4, 164
    
    BL dibujar_rectangulo
    
    MOV X1, 281
    MOV X2, 132
    MOV X3, 314
    MOV X4, 161
    
    BL dibujar_rectangulo
    
    MOV X1, 381
    MOV X2, 107
    MOV X3, 395
    MOV X4, 105
    
    BL dibujar_rectangulo
    
    MOV X1, 382
    MOV X2, 109
    MOV X3, 395
    MOV X4, 108 
    
    BL dibujar_rectangulo

    MOV X1, 377
    MOV X2, 83
    MOV X3, 480
    MOV X4, 104
    
    BL dibujar_rectangulo
    
    MOV X1, 492
    MOV X2, 83
    MOV X3, 541
    MOV X4, 91
    
    BL dibujar_rectangulo
    
    MOV X1, 476
    MOV X2, 105
    MOV X3, 400
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 114
    MOV X3, 476
    MOV X4, 121
    
    BL dibujar_rectangulo
    
    MOV X1, 470
    MOV X2, 126
    MOV X3, 476
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 477
    MOV X2, 109
    MOV X3, 480
    MOV X4, 105
    
    BL dibujar_rectangulo

    MOV X1, 439
    MOV X2, 190
    MOV X3, 441
    MOV X4, 152
    
    BL dibujar_rectangulo

    MOV X1, 442
    MOV X2, 152
    MOV X3, 461
    MOV X4, 164
    
    BL dibujar_rectangulo
       
    MOV X1, 442
    MOV X2, 165
    
    BL dibujar_pixel
    
    MOV X1, 435
    MOV X2, 151
    MOV X3, 461
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 462
    MOV X2, 126
    MOV X3, 465
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 431
    MOV X2, 143
    MOV X3, 434
    MOV X4, 141
    
    BL dibujar_rectangulo

    MOV X1, 432
    MOV X2, 140
    MOV X3, 434
    MOV X4, 139
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 146
    MOV X3, 426
    MOV X4, 139
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 138
    MOV X3, 422
    MOV X4, 135
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 134
    MOV X3, 434
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 481
    MOV X2, 99
    MOV X3, 484
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 485
    MOV X2, 91
    MOV X3, 487
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 488
    MOV X2, 90
    MOV X3, 488
    MOV X4, 83
    
    BL dibujar_rectangulo

    MOV X1, 496
    MOV X2, 99
    MOV X3, 522
    MOV X4, 92
    
    BL dibujar_rectangulo
    
    MOV X1, 505
    MOV X2, 151
    MOV X3, 511
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 500
    MOV X2, 109
    MOV X3, 504
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 499
    MOV X2, 100
    MOV X3, 499
    MOV X4, 101
    
    BL dibujar_rectangulo

    MOV X1, 535
    MOV X2, 99
    MOV X3, 541
    MOV X4, 92
    
    BL dibujar_rectangulo

    MOV X1, 541
    MOV X2, 100
    MOV X3, 538
    MOV X4, 109
    
    BL dibujar_rectangulo

    MOV X1, 638
    MOV X2, 204
    MOV X3, 639
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 577
    MOV X2, 109
    MOV X3, 580
    MOV X4, 100
    
    BL dibujar_rectangulo

    MOV X1, 581
    MOV X2, 112
    MOV X3, 587
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 588
    MOV X2, 129
    MOV X3, 639
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 631
    MOV X2, 203
    MOV X3, 639
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 627
    MOV X2, 138
    MOV X3, 630
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 620
    MOV X2, 134
    MOV X3, 626
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 619
    MOV X2, 131
    MOV X3, 619
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 599  
    MOV X2, 131
    MOV X3, 615
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 601
    MOV X2, 134
    MOV X3, 614
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 588
    MOV X2, 138
    MOV X3, 591 
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 592
    MOV X2, 134
    MOV X3, 595
    MOV X4, 130
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 174
    MOV X3, 373
    MOV X4, 174
    BL dibujar_rectangulo

    MOV X1, 345
    MOV X2, 174
    BL dibujar_pixel

    MOV X1, 345
    MOV X2, 135
    MOV X3, 345
    MOV X4, 173
    BL dibujar_rectangulo
    
    MOV X1, 314
    MOV X2, 136
    MOV X3, 315
    MOV X4, 232
    BL dibujar_rectangulo
    
    MOV X1, 399
    MOV X2, 113
    MOV X3, 399
    MOV X4, 105
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 134
    MOV X3, 342
    MOV X4, 132
    BL dibujar_rectangulo

    MOV X1, 341
    MOV X2, 131
    MOV X3, 341
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 192
    MOV X2, 191
    MOV X3, 207
    MOV X4, 191 
    BL dibujar_rectangulo

    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 207
    MOV X2, 205
    MOV X3, 207
    MOV X4, 191
    BL dibujar_rectangulo
    
    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
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

fondo_1:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, SCREEN_START
    MOV X2, 275 
    MOV X3, 18
    MOV X4, 299
    LDR X7, =CIELO_1
    BL dibujar_rectangulo

    // fix px
    MOV X1, 315
    MOV X2, 135
    BL dibujar_pixel
    
    MOV X1, 32
    MOV X2, 275
    MOV X3, 88
    MOV X4, 299
    
    BL dibujar_rectangulo
 
    MOV X1, 101
    MOV X2, 275
    MOV X3, 103
    MOV X4, 294
    
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 275
    MOV X3, 107
    MOV X4, 290
    
    BL dibujar_rectangulo
    
    MOV X1, 108
    MOV X2, 275
    MOV X3, 109
    MOV X4, 286
    BL dibujar_rectangulo
    
    MOV X1, 110
    MOV X2, 275
    MOV X3, 111
    MOV X4, 286 
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 286
    MOV X3, 114
    MOV X4, 280
    BL dibujar_rectangulo
    
    // // TODO bug 
    // MOV X1, 173
    // MOV X2, 275
    // MOV X3, 140
    // MOV X4, 299
    // BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 235
    MOV X3, 3
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 4
    MOV X2, 240
    MOV X3, 7
    MOV X4, 260
    
    BL dibujar_rectangulo
       
    MOV X1, 4
    MOV X2, 239
    
    BL dibujar_pixel
    
    MOV X1, 14
    MOV X2, 260
    MOV X3, 15
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 16
    MOV X2, 248
    MOV X3, 18
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 260
    MOV X3, 35
    MOV X4, 250
    
    BL dibujar_rectangulo

    MOV X1, 33
    MOV X2, 249
    MOV X3, 33
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 260
    MOV X3, 50
    MOV X4, 248
    
    BL dibujar_rectangulo
       
    MOV X1, 55
    MOV X2, 260
    MOV X3, 65
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 260
    MOV X3, 81
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 244
    MOV X3, 81
    MOV X4, 240
    
    BL dibujar_rectangulo
    
    MOV X1, 86
    MOV X2, 260
    MOV X3, 88
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 240
    MOV X3, 107
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 245
    MOV X3, 118
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 255
    MOV X3, 153
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 260
    MOV X3, 168
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 250
    MOV X3, 159
    MOV X4, 257
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 83
    MOV X3, 223
    MOV X4, 190
    
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 191
    MOV X3, 223
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 233
    MOV X3, 223
    MOV X4, 206
    
    BL dibujar_rectangulo
    
    MOV X1, 223
    MOV X2, 234
    MOV X3, 215
    MOV X4, 234
    
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 238
    MOV X3, 223
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 191
    MOV X3, 18  
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 9
    MOV X2, 234
    MOV X3, 18
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 14
    MOV X2, 238
    MOV X3, 18
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 191
    MOV X3, 191
    MOV X4, 205
    
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 206
    MOV X3, 173
    MOV X4, 220
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 221
    MOV X3, 88
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 234
    MOV X3, 81
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 77
    MOV X2, 235
    MOV X3, 32
    MOV X4, 238
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 242
    MOV X3, 65
    MOV X4, 239
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 230
    MOV X3, 173
    MOV X4, 221
    
    BL dibujar_rectangulo
    
    MOV X1, 105
    MOV X2, 231
    MOV X3, 173
    MOV X4, 234
    
    BL dibujar_rectangulo

    MOV X1, 173
    MOV X2, 235
    MOV X3, 112
    MOV X4, 238
    
    BL dibujar_rectangulo

    MOV X1, 121
    MOV X2, 239
    MOV X3, 122
    MOV X4, 242
    
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 239
    MOV X3, 168
    MOV X4, 242
    
    BL dibujar_rectangulo

    MOV X1, 224
    MOV X2, 83
    MOV X3, 299
    MOV X4, 131
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 83
    MOV X3, 376
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 373
    MOV X2, 114
    MOV X3, 300
    MOV X4, 116
    
    BL dibujar_rectangulo

    MOV X1, 304
    MOV X2, 117
    MOV X3, 334
    MOV X4, 123
    
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 117
    MOV X3, 373
    MOV X4, 173
    
    BL dibujar_rectangulo
    
    MOV X1, 250
    MOV X2, 132
    MOV X3, 275
    MOV X4, 186
    
    BL dibujar_rectangulo
    
    MOV X1, 275
    MOV X2, 187
    MOV X3, 251
    MOV X4, 187
    
    BL dibujar_rectangulo
    
    MOV X1, 224
    MOV X2, 153
    MOV X3, 224
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 225
    MOV X2, 151
    MOV X3, 227
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 132
    MOV X3, 234
    MOV X4, 134
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 143
    MOV X3, 231
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 239
    MOV X2, 134
    MOV X3, 249
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 242
    MOV X2, 135
    MOV X3, 249
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 243
    MOV X2, 136
    MOV X3, 249
    MOV X4, 143
    
    BL dibujar_rectangulo
    
    MOV X1, 247
    MOV X2, 144
    MOV X3, 249
    MOV X4, 151
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 168
    MOV X3, 280
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 170
    MOV X3, 277
    MOV X4, 169
    
    BL dibujar_rectangulo
    
    MOV X1, 313
    MOV X2, 169
    MOV X3, 314
    MOV X4, 233
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 134
    MOV X3, 319
    MOV X4, 124
    
    BL dibujar_rectangulo
    
    MOV X1, 320
    MOV X2, 124
    MOV X3, 334
    MOV X4, 129
    
    BL dibujar_rectangulo
    
    MOV X1, 324
    MOV X2, 134
    MOV X3, 334
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 335
    MOV X2, 121
    MOV X3, 345
    MOV X4, 117
    
    BL dibujar_rectangulo

    MOV X1, 339
    MOV X2, 129
    MOV X3, 345
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 342
    MOV X2, 131
    MOV X3, 345
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 343
    MOV X2, 134
    MOV X3, 345
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 585
    MOV X2, 113
    MOV X3, 587
    MOV X4, 181
    
    BL dibujar_rectangulo

    MOV X1, SCREEN_END_X
    MOV X2, 212
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo

    MOV X1, 542
    MOV X2, 83
    MOV X3, 572
    MOV X4, 112
    
    BL dibujar_rectangulo

    MOV X1, 639
    MOV X2, 83
    MOV X3, 573
    MOV X4, 99
    
    BL dibujar_rectangulo
    
    MOV X1, 308
    MOV X2, 162
    MOV X3, 314
    MOV X4, 168
    
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 162
    MOV X3, 303
    MOV X4, 164
    
    BL dibujar_rectangulo
    
    MOV X1, 281
    MOV X2, 132
    MOV X3, 314
    MOV X4, 161
    
    BL dibujar_rectangulo
    
    MOV X1, 381
    MOV X2, 107
    MOV X3, 395
    MOV X4, 105
    
    BL dibujar_rectangulo
    
    MOV X1, 382
    MOV X2, 109
    MOV X3, 395
    MOV X4, 108 
    
    BL dibujar_rectangulo

    MOV X1, 377
    MOV X2, 83
    MOV X3, 480
    MOV X4, 104
    
    BL dibujar_rectangulo
    
    MOV X1, 492
    MOV X2, 83
    MOV X3, 541
    MOV X4, 91
    
    BL dibujar_rectangulo
    
    MOV X1, 476
    MOV X2, 105
    MOV X3, 400
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 114
    MOV X3, 476
    MOV X4, 121
    
    BL dibujar_rectangulo
    
    MOV X1, 470
    MOV X2, 126
    MOV X3, 476
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 477
    MOV X2, 109
    MOV X3, 480
    MOV X4, 105
    
    BL dibujar_rectangulo

    MOV X1, 439
    MOV X2, 190
    MOV X3, 441
    MOV X4, 152
    
    BL dibujar_rectangulo

    MOV X1, 442
    MOV X2, 152
    MOV X3, 461
    MOV X4, 164
    
    BL dibujar_rectangulo
       
    MOV X1, 442
    MOV X2, 165
    
    BL dibujar_pixel
    
    MOV X1, 435
    MOV X2, 151
    MOV X3, 461
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 462
    MOV X2, 126
    MOV X3, 465
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 431
    MOV X2, 143
    MOV X3, 434
    MOV X4, 141
    
    BL dibujar_rectangulo

    MOV X1, 432
    MOV X2, 140
    MOV X3, 434
    MOV X4, 139
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 146
    MOV X3, 426
    MOV X4, 139
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 138
    MOV X3, 422
    MOV X4, 135
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 134
    MOV X3, 434
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 481
    MOV X2, 99
    MOV X3, 484
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 485
    MOV X2, 91
    MOV X3, 487
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 488
    MOV X2, 90
    MOV X3, 488
    MOV X4, 83
    
    BL dibujar_rectangulo

    MOV X1, 496
    MOV X2, 99
    MOV X3, 522
    MOV X4, 92
    
    BL dibujar_rectangulo
    
    MOV X1, 505
    MOV X2, 151
    MOV X3, 511
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 500
    MOV X2, 109
    MOV X3, 504
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 499
    MOV X2, 100
    MOV X3, 499
    MOV X4, 101
    
    BL dibujar_rectangulo

    MOV X1, 535
    MOV X2, 99
    MOV X3, 541
    MOV X4, 92
    
    BL dibujar_rectangulo

    MOV X1, 541
    MOV X2, 100
    MOV X3, 538
    MOV X4, 109
    
    BL dibujar_rectangulo

    MOV X1, 638
    MOV X2, 204
    MOV X3, 639
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 577
    MOV X2, 109
    MOV X3, 580
    MOV X4, 100
    
    BL dibujar_rectangulo

    MOV X1, 581
    MOV X2, 112
    MOV X3, 587
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 588
    MOV X2, 129
    MOV X3, 639
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 631
    MOV X2, 203
    MOV X3, 639
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 627
    MOV X2, 138
    MOV X3, 630
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 620
    MOV X2, 134
    MOV X3, 626
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 619
    MOV X2, 131
    MOV X3, 619
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 599  
    MOV X2, 131
    MOV X3, 615
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 601
    MOV X2, 134
    MOV X3, 614
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 588
    MOV X2, 138
    MOV X3, 591 
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 592
    MOV X2, 134
    MOV X3, 595
    MOV X4, 130
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 174
    MOV X3, 373
    MOV X4, 174
    BL dibujar_rectangulo

    MOV X1, 345
    MOV X2, 174
    BL dibujar_pixel

    MOV X1, 345
    MOV X2, 135
    MOV X3, 345
    MOV X4, 173
    BL dibujar_rectangulo
    
    MOV X1, 314
    MOV X2, 136
    MOV X3, 315
    MOV X4, 232
    BL dibujar_rectangulo
    
    MOV X1, 399
    MOV X2, 113
    MOV X3, 399
    MOV X4, 105
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 134
    MOV X3, 342
    MOV X4, 132
    BL dibujar_rectangulo

    MOV X1, 341
    MOV X2, 131
    MOV X3, 341
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 192
    MOV X2, 191
    MOV X3, 207
    MOV X4, 191 
    BL dibujar_rectangulo

    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 207
    MOV X2, 205
    MOV X3, 207
    MOV X4, 191
    BL dibujar_rectangulo
    
    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
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

fondo_2:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]


    MOV X1, SCREEN_START
    MOV X2, 275 
    MOV X3, 18
    MOV X4, 299
    LDR X7, =CIELO_2
    BL dibujar_rectangulo

    // fix px
    MOV X1, 315
    MOV X2, 135
    BL dibujar_pixel
    
    MOV X1, 32
    MOV X2, 275
    MOV X3, 88
    MOV X4, 299
    
    BL dibujar_rectangulo
 
    MOV X1, 101
    MOV X2, 275
    MOV X3, 103
    MOV X4, 294
    
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 275
    MOV X3, 107
    MOV X4, 290
    
    BL dibujar_rectangulo
    
    MOV X1, 108
    MOV X2, 275
    MOV X3, 109
    MOV X4, 286
    
    BL dibujar_rectangulo
    
    MOV X1, 110
    MOV X2, 275
    MOV X3, 111
    MOV X4, 286 
    
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 286
    MOV X3, 114
    MOV X4, 280
    
    BL dibujar_rectangulo
    
    // TODO BUG
    // FIX BUG
    // MOV X1, 173
    // MOV X2, 275
    // MOV X3, 140
    // MOV X4, 299

    MOV X1, 147
    MOV X2, 279
    MOV X3, 174
    MOV X4, 275
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 286
    MOV X3, 174
    MOV X4, 280
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 290
    MOV X3, 166
    MOV X4, 287
    BL dibujar_rectangulo

    MOV X1, 151
    MOV X2, 291
    MOV X3, 166
    MOV X4, 291
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 296
    MOV X3, 161
    MOV X4, 292
    BL dibujar_rectangulo




    
    
    
    
    // FIX BUG
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 235
    MOV X3, 3
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 4
    MOV X2, 240
    MOV X3, 7
    MOV X4, 260
    
    BL dibujar_rectangulo
       
    MOV X1, 4
    MOV X2, 239
    
    BL dibujar_pixel
    
    MOV X1, 14
    MOV X2, 260
    MOV X3, 15
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 16
    MOV X2, 248
    MOV X3, 18
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 260
    MOV X3, 35
    MOV X4, 250
    
    BL dibujar_rectangulo

    MOV X1, 33
    MOV X2, 249
    MOV X3, 33
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 260
    MOV X3, 50
    MOV X4, 248
    
    BL dibujar_rectangulo
       
    MOV X1, 55
    MOV X2, 260
    MOV X3, 65
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 260
    MOV X3, 81
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 244
    MOV X3, 81
    MOV X4, 240
    
    BL dibujar_rectangulo
    
    MOV X1, 86
    MOV X2, 260
    MOV X3, 88
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 240
    MOV X3, 107
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 245
    MOV X3, 118
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 255
    MOV X3, 153
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 260
    MOV X3, 168
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 250
    MOV X3, 159
    MOV X4, 257
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 83
    MOV X3, 223
    MOV X4, 190
    
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 191
    MOV X3, 223
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 233
    MOV X3, 223
    MOV X4, 206
    
    BL dibujar_rectangulo
    
    MOV X1, 223
    MOV X2, 234
    MOV X3, 215
    MOV X4, 234
    
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 238
    MOV X3, 223
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 191
    MOV X3, 18  
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 9
    MOV X2, 234
    MOV X3, 18
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 14
    MOV X2, 238
    MOV X3, 18
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 191
    MOV X3, 191
    MOV X4, 205
    
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 206
    MOV X3, 173
    MOV X4, 220
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 221
    MOV X3, 88
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 234
    MOV X3, 81
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 77
    MOV X2, 235
    MOV X3, 32
    MOV X4, 238
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 242
    MOV X3, 65
    MOV X4, 239
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 230
    MOV X3, 173
    MOV X4, 221
    
    BL dibujar_rectangulo
    
    MOV X1, 105
    MOV X2, 231
    MOV X3, 173
    MOV X4, 234
    
    BL dibujar_rectangulo

    MOV X1, 173
    MOV X2, 235
    MOV X3, 112
    MOV X4, 238
    
    BL dibujar_rectangulo

    MOV X1, 121
    MOV X2, 239
    MOV X3, 122
    MOV X4, 242
    
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 239
    MOV X3, 168
    MOV X4, 242
    
    BL dibujar_rectangulo

    MOV X1, 224
    MOV X2, 83
    MOV X3, 299
    MOV X4, 131
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 83
    MOV X3, 376
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 373
    MOV X2, 114
    MOV X3, 300
    MOV X4, 116
    
    BL dibujar_rectangulo

    MOV X1, 304
    MOV X2, 117
    MOV X3, 334
    MOV X4, 123
    
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 117
    MOV X3, 373
    MOV X4, 173
    
    BL dibujar_rectangulo
    
    MOV X1, 250
    MOV X2, 132
    MOV X3, 275
    MOV X4, 186
    
    BL dibujar_rectangulo
    
    MOV X1, 275
    MOV X2, 187
    MOV X3, 251
    MOV X4, 187
    
    BL dibujar_rectangulo
    
    MOV X1, 224
    MOV X2, 153
    MOV X3, 224
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 225
    MOV X2, 151
    MOV X3, 227
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 132
    MOV X3, 234
    MOV X4, 134
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 143
    MOV X3, 231
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 239
    MOV X2, 134
    MOV X3, 249
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 242
    MOV X2, 135
    MOV X3, 249
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 243
    MOV X2, 136
    MOV X3, 249
    MOV X4, 143
    
    BL dibujar_rectangulo
    
    MOV X1, 247
    MOV X2, 144
    MOV X3, 249
    MOV X4, 151
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 168
    MOV X3, 280
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 170
    MOV X3, 277
    MOV X4, 169
    
    BL dibujar_rectangulo
    
    MOV X1, 313
    MOV X2, 169
    MOV X3, 314
    MOV X4, 233
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 134
    MOV X3, 319
    MOV X4, 124
    
    BL dibujar_rectangulo
    
    MOV X1, 320
    MOV X2, 124
    MOV X3, 334
    MOV X4, 129
    
    BL dibujar_rectangulo
    
    MOV X1, 324
    MOV X2, 134
    MOV X3, 334
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 335
    MOV X2, 121
    MOV X3, 345
    MOV X4, 117
    
    BL dibujar_rectangulo

    MOV X1, 339
    MOV X2, 129
    MOV X3, 345
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 342
    MOV X2, 131
    MOV X3, 345
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 343
    MOV X2, 134
    MOV X3, 345
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 585
    MOV X2, 113
    MOV X3, 587
    MOV X4, 181
    
    BL dibujar_rectangulo

    MOV X1, SCREEN_END_X
    MOV X2, 212
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo

    MOV X1, 542
    MOV X2, 83
    MOV X3, 572
    MOV X4, 112
    
    BL dibujar_rectangulo

    MOV X1, 639
    MOV X2, 83
    MOV X3, 573
    MOV X4, 99
    
    BL dibujar_rectangulo
    
    MOV X1, 308
    MOV X2, 162
    MOV X3, 314
    MOV X4, 168
    
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 162
    MOV X3, 303
    MOV X4, 164
    
    BL dibujar_rectangulo
    
    MOV X1, 281
    MOV X2, 132
    MOV X3, 314
    MOV X4, 161
    
    BL dibujar_rectangulo
    
    MOV X1, 381
    MOV X2, 107
    MOV X3, 395
    MOV X4, 105
    
    BL dibujar_rectangulo
    
    MOV X1, 382
    MOV X2, 109
    MOV X3, 395
    MOV X4, 108 
    
    BL dibujar_rectangulo

    MOV X1, 377
    MOV X2, 83
    MOV X3, 480
    MOV X4, 104
    
    BL dibujar_rectangulo
    
    MOV X1, 492
    MOV X2, 83
    MOV X3, 541
    MOV X4, 91
    
    BL dibujar_rectangulo
    
    MOV X1, 476
    MOV X2, 105
    MOV X3, 400
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 114
    MOV X3, 476
    MOV X4, 121
    
    BL dibujar_rectangulo
    
    MOV X1, 470
    MOV X2, 126
    MOV X3, 476
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 477
    MOV X2, 109
    MOV X3, 480
    MOV X4, 105
    
    BL dibujar_rectangulo

    MOV X1, 439
    MOV X2, 190
    MOV X3, 441
    MOV X4, 152
    
    BL dibujar_rectangulo

    MOV X1, 442
    MOV X2, 152
    MOV X3, 461
    MOV X4, 164
    
    BL dibujar_rectangulo
       
    MOV X1, 442
    MOV X2, 165
    
    BL dibujar_pixel
    
    MOV X1, 435
    MOV X2, 151
    MOV X3, 461
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 462
    MOV X2, 126
    MOV X3, 465
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 431
    MOV X2, 143
    MOV X3, 434
    MOV X4, 141
    
    BL dibujar_rectangulo

    MOV X1, 432
    MOV X2, 140
    MOV X3, 434
    MOV X4, 139
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 146
    MOV X3, 426
    MOV X4, 139
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 138
    MOV X3, 422
    MOV X4, 135
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 134
    MOV X3, 434
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 481
    MOV X2, 99
    MOV X3, 484
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 485
    MOV X2, 91
    MOV X3, 487
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 488
    MOV X2, 90
    MOV X3, 488
    MOV X4, 83
    
    BL dibujar_rectangulo

    MOV X1, 496
    MOV X2, 99
    MOV X3, 522
    MOV X4, 92
    
    BL dibujar_rectangulo
    
    MOV X1, 505
    MOV X2, 151
    MOV X3, 511
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 500
    MOV X2, 109
    MOV X3, 504
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 499
    MOV X2, 100
    MOV X3, 499
    MOV X4, 101
    
    BL dibujar_rectangulo

    MOV X1, 535
    MOV X2, 99
    MOV X3, 541
    MOV X4, 92
    
    BL dibujar_rectangulo

    MOV X1, 541
    MOV X2, 100
    MOV X3, 538
    MOV X4, 109
    
    BL dibujar_rectangulo

    MOV X1, 638
    MOV X2, 204
    MOV X3, 639
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 577
    MOV X2, 109
    MOV X3, 580
    MOV X4, 100
    
    BL dibujar_rectangulo

    MOV X1, 581
    MOV X2, 112
    MOV X3, 587
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 588
    MOV X2, 129
    MOV X3, 639
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 631
    MOV X2, 203
    MOV X3, 639
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 627
    MOV X2, 138
    MOV X3, 630
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 620
    MOV X2, 134
    MOV X3, 626
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 619
    MOV X2, 131
    MOV X3, 619
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 599  
    MOV X2, 131
    MOV X3, 615
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 601
    MOV X2, 134
    MOV X3, 614
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 588
    MOV X2, 138
    MOV X3, 591 
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 592
    MOV X2, 134
    MOV X3, 595
    MOV X4, 130
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 174
    MOV X3, 373
    MOV X4, 174
    BL dibujar_rectangulo

    MOV X1, 345
    MOV X2, 174
    BL dibujar_pixel

    MOV X1, 345
    MOV X2, 135
    MOV X3, 345
    MOV X4, 173
    BL dibujar_rectangulo
    
    MOV X1, 314
    MOV X2, 136
    MOV X3, 315
    MOV X4, 232
    BL dibujar_rectangulo
    
    MOV X1, 399
    MOV X2, 113
    MOV X3, 399
    MOV X4, 105
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 134
    MOV X3, 342
    MOV X4, 132
    BL dibujar_rectangulo

    MOV X1, 341
    MOV X2, 131
    MOV X3, 341
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 192
    MOV X2, 191
    MOV X3, 207
    MOV X4, 191 
    BL dibujar_rectangulo

    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 207
    MOV X2, 205
    MOV X3, 207
    MOV X4, 191
    BL dibujar_rectangulo
    
    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
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

fondo_3:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]


    MOV X1, SCREEN_START
    MOV X2, 275 
    MOV X3, 18
    MOV X4, 299
    LDR X7, =CIELO_3
    BL dibujar_rectangulo
    
    // fix px
    MOV X1, 315
    MOV X2, 135
    BL dibujar_pixel

    MOV X1, 32
    MOV X2, 275
    MOV X3, 88
    MOV X4, 299
    
    BL dibujar_rectangulo
 
    MOV X1, 101
    MOV X2, 275
    MOV X3, 103
    MOV X4, 294
    
    BL dibujar_rectangulo
    
    MOV X1, 104
    MOV X2, 275
    MOV X3, 107
    MOV X4, 290
    
    BL dibujar_rectangulo
    
    MOV X1, 108
    MOV X2, 275
    MOV X3, 109
    MOV X4, 286
    
    BL dibujar_rectangulo
    
    MOV X1, 110
    MOV X2, 275
    MOV X3, 111
    MOV X4, 286 
    
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 286
    MOV X3, 114
    MOV X4, 280
    
    BL dibujar_rectangulo

    // TODO BUG

    // MOV X1, 173
    // MOV X2, 275
    // MOV X3, 140
    // MOV X4, 299

    MOV X1, 147
    MOV X2, 279
    MOV X3, 174
    MOV X4, 275
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 286
    MOV X3, 174
    MOV X4, 280
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 290
    MOV X3, 166
    MOV X4, 287
    BL dibujar_rectangulo

    MOV X1, 151
    MOV X2, 291
    MOV X3, 166
    MOV X4, 291
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 296
    MOV X3, 161
    MOV X4, 292
    BL dibujar_rectangulo

    // TODO BUG END

    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 235
    MOV X3, 3
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 4
    MOV X2, 240
    MOV X3, 7
    MOV X4, 260
    
    BL dibujar_rectangulo
       
    MOV X1, 4
    MOV X2, 239
    
    BL dibujar_pixel
    
    MOV X1, 14
    MOV X2, 260
    MOV X3, 15
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 16
    MOV X2, 248
    MOV X3, 18
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 260
    MOV X3, 35
    MOV X4, 250
    
    BL dibujar_rectangulo

    MOV X1, 33
    MOV X2, 249
    MOV X3, 33
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 40
    MOV X2, 260
    MOV X3, 50
    MOV X4, 248
    
    BL dibujar_rectangulo
       
    MOV X1, 55
    MOV X2, 260
    MOV X3, 65
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 71
    MOV X2, 260
    MOV X3, 81
    MOV X4, 245
    
    BL dibujar_rectangulo
    
    MOV X1, 78
    MOV X2, 244
    MOV X3, 81
    MOV X4, 240
    
    BL dibujar_rectangulo
    
    MOV X1, 86
    MOV X2, 260
    MOV X3, 88
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 240
    MOV X3, 107
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 112
    MOV X2, 245
    MOV X3, 118
    MOV X4, 260
    
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 255
    MOV X3, 153
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 160
    MOV X2, 260
    MOV X3, 168
    MOV X4, 248
    
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 250
    MOV X3, 159
    MOV X4, 257
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 83
    MOV X3, 223
    MOV X4, 190
    
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 191
    MOV X3, 223
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 233
    MOV X3, 223
    MOV X4, 206
    
    BL dibujar_rectangulo
    
    MOV X1, 223
    MOV X2, 234
    MOV X3, 215
    MOV X4, 234
    
    BL dibujar_rectangulo
    
    MOV X1, 217
    MOV X2, 238
    MOV X3, 223
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, SCREEN_START
    MOV X2, 191
    MOV X3, 18  
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 9
    MOV X2, 234
    MOV X3, 18
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 14
    MOV X2, 238
    MOV X3, 18
    MOV X4, 235
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 191
    MOV X3, 191
    MOV X4, 205
    
    BL dibujar_rectangulo

    MOV X1, 32
    MOV X2, 206
    MOV X3, 173
    MOV X4, 220
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 221
    MOV X3, 88
    MOV X4, 230
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 234
    MOV X3, 81
    MOV X4, 231
    
    BL dibujar_rectangulo
    
    MOV X1, 77
    MOV X2, 235
    MOV X3, 32
    MOV X4, 238
    
    BL dibujar_rectangulo
    
    MOV X1, 32
    MOV X2, 242
    MOV X3, 65
    MOV X4, 239
    
    BL dibujar_rectangulo
    
    MOV X1, 101
    MOV X2, 230
    MOV X3, 173
    MOV X4, 221
    
    BL dibujar_rectangulo
    
    MOV X1, 105
    MOV X2, 231
    MOV X3, 173
    MOV X4, 234
    
    BL dibujar_rectangulo

    MOV X1, 173
    MOV X2, 235
    MOV X3, 112
    MOV X4, 238
    
    BL dibujar_rectangulo

    MOV X1, 121
    MOV X2, 239
    MOV X3, 122
    MOV X4, 242
    
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 239
    MOV X3, 168
    MOV X4, 242
    
    BL dibujar_rectangulo

    MOV X1, 224
    MOV X2, 83
    MOV X3, 299
    MOV X4, 131
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 83
    MOV X3, 376
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 373
    MOV X2, 114
    MOV X3, 300
    MOV X4, 116
    
    BL dibujar_rectangulo

    MOV X1, 304
    MOV X2, 117
    MOV X3, 334
    MOV X4, 123
    
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 117
    MOV X3, 373
    MOV X4, 173
    
    BL dibujar_rectangulo
    
    MOV X1, 250
    MOV X2, 132
    MOV X3, 275
    MOV X4, 186
    
    BL dibujar_rectangulo
    
    MOV X1, 275
    MOV X2, 187
    MOV X3, 251
    MOV X4, 187
    
    BL dibujar_rectangulo
    
    MOV X1, 224
    MOV X2, 153
    MOV X3, 224
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 225
    MOV X2, 151
    MOV X3, 227
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 132
    MOV X3, 234
    MOV X4, 134
    
    BL dibujar_rectangulo
    
    MOV X1, 228
    MOV X2, 143
    MOV X3, 231
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 239
    MOV X2, 134
    MOV X3, 249
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 242
    MOV X2, 135
    MOV X3, 249
    MOV X4, 135
    
    BL dibujar_rectangulo
    
    MOV X1, 243
    MOV X2, 136
    MOV X3, 249
    MOV X4, 143
    
    BL dibujar_rectangulo
    
    MOV X1, 247
    MOV X2, 144
    MOV X3, 249
    MOV X4, 151
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 168
    MOV X3, 280
    MOV X4, 132
    
    BL dibujar_rectangulo
    
    MOV X1, 276
    MOV X2, 170
    MOV X3, 277
    MOV X4, 169
    
    BL dibujar_rectangulo
    
    MOV X1, 313
    MOV X2, 169
    MOV X3, 314
    MOV X4, 233
    
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 134
    MOV X3, 319
    MOV X4, 124
    
    BL dibujar_rectangulo
    
    MOV X1, 320
    MOV X2, 124
    MOV X3, 334
    MOV X4, 129
    
    BL dibujar_rectangulo
    
    MOV X1, 324
    MOV X2, 134
    MOV X3, 334
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 335
    MOV X2, 121
    MOV X3, 345
    MOV X4, 117
    
    BL dibujar_rectangulo

    MOV X1, 339
    MOV X2, 129
    MOV X3, 345
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 342
    MOV X2, 131
    MOV X3, 345
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 343
    MOV X2, 134
    MOV X3, 345
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 585
    MOV X2, 113
    MOV X3, 587
    MOV X4, 181
    
    BL dibujar_rectangulo

    MOV X1, SCREEN_END_X
    MOV X2, 212
    MOV X3, SCREEN_END_X
    MOV X4, 82
    
    BL dibujar_rectangulo

    MOV X1, 542
    MOV X2, 83
    MOV X3, 572
    MOV X4, 112
    
    BL dibujar_rectangulo

    MOV X1, 639
    MOV X2, 83
    MOV X3, 573
    MOV X4, 99
    
    BL dibujar_rectangulo
    
    MOV X1, 308
    MOV X2, 162
    MOV X3, 314
    MOV X4, 168
    
    BL dibujar_rectangulo
    
    MOV X1, 285
    MOV X2, 162
    MOV X3, 303
    MOV X4, 164
    
    BL dibujar_rectangulo
    
    MOV X1, 281
    MOV X2, 132
    MOV X3, 314
    MOV X4, 161
    
    BL dibujar_rectangulo
    
    MOV X1, 381
    MOV X2, 107
    MOV X3, 395
    MOV X4, 105
    
    BL dibujar_rectangulo
    
    MOV X1, 382
    MOV X2, 109
    MOV X3, 395
    MOV X4, 108 
    
    BL dibujar_rectangulo

    MOV X1, 377
    MOV X2, 83
    MOV X3, 480
    MOV X4, 104
    
    BL dibujar_rectangulo
    
    MOV X1, 492
    MOV X2, 83
    MOV X3, 541
    MOV X4, 91
    
    BL dibujar_rectangulo
    
    MOV X1, 476
    MOV X2, 105
    MOV X3, 400
    MOV X4, 113
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 114
    MOV X3, 476
    MOV X4, 121
    
    BL dibujar_rectangulo
    
    MOV X1, 470
    MOV X2, 126
    MOV X3, 476
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 477
    MOV X2, 109
    MOV X3, 480
    MOV X4, 105
    
    BL dibujar_rectangulo

    MOV X1, 439
    MOV X2, 190
    MOV X3, 441
    MOV X4, 152
    
    BL dibujar_rectangulo

    MOV X1, 442
    MOV X2, 152
    MOV X3, 461
    MOV X4, 164
    
    BL dibujar_rectangulo
       
    MOV X1, 442
    MOV X2, 165
    
    BL dibujar_pixel
    
    MOV X1, 435
    MOV X2, 151
    MOV X3, 461
    MOV X4, 122
    
    BL dibujar_rectangulo

    MOV X1, 462
    MOV X2, 126
    MOV X3, 465
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 431
    MOV X2, 143
    MOV X3, 434
    MOV X4, 141
    
    BL dibujar_rectangulo

    MOV X1, 432
    MOV X2, 140
    MOV X3, 434
    MOV X4, 139
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 146
    MOV X3, 426
    MOV X4, 139
    
    BL dibujar_rectangulo
    
    MOV X1, 404
    MOV X2, 138
    MOV X3, 422
    MOV X4, 135
    
    BL dibujar_rectangulo

    MOV X1, 404
    MOV X2, 134
    MOV X3, 434
    MOV X4, 122
    
    BL dibujar_rectangulo
    
    MOV X1, 481
    MOV X2, 99
    MOV X3, 484
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 485
    MOV X2, 91
    MOV X3, 487
    MOV X4, 83
    
    BL dibujar_rectangulo
    
    MOV X1, 488
    MOV X2, 90
    MOV X3, 488
    MOV X4, 83
    
    BL dibujar_rectangulo

    MOV X1, 496
    MOV X2, 99
    MOV X3, 522
    MOV X4, 92
    
    BL dibujar_rectangulo
    
    MOV X1, 505
    MOV X2, 151
    MOV X3, 511
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 500
    MOV X2, 109
    MOV X3, 504
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 499
    MOV X2, 100
    MOV X3, 499
    MOV X4, 101
    
    BL dibujar_rectangulo

    MOV X1, 535
    MOV X2, 99
    MOV X3, 541
    MOV X4, 92
    
    BL dibujar_rectangulo

    MOV X1, 541
    MOV X2, 100
    MOV X3, 538
    MOV X4, 109
    
    BL dibujar_rectangulo

    MOV X1, 638
    MOV X2, 204
    MOV X3, 639
    MOV X4, 205
    
    BL dibujar_rectangulo
    
    MOV X1, 577
    MOV X2, 109
    MOV X3, 580
    MOV X4, 100
    
    BL dibujar_rectangulo

    MOV X1, 581
    MOV X2, 112
    MOV X3, 587
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 588
    MOV X2, 129
    MOV X3, 639
    MOV X4, 100
    
    BL dibujar_rectangulo
    
    MOV X1, 631
    MOV X2, 203
    MOV X3, 639
    MOV X4, 130
    
    BL dibujar_rectangulo

    MOV X1, 627
    MOV X2, 138
    MOV X3, 630
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 620
    MOV X2, 134
    MOV X3, 626
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 619
    MOV X2, 131
    MOV X3, 619
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 599  
    MOV X2, 131
    MOV X3, 615
    MOV X4, 130
    
    BL dibujar_rectangulo
    
    MOV X1, 601
    MOV X2, 134
    MOV X3, 614
    MOV X4, 132
    
    BL dibujar_rectangulo

    MOV X1, 588
    MOV X2, 138
    MOV X3, 591 
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 592
    MOV X2, 134
    MOV X3, 595
    MOV X4, 130
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 174
    MOV X3, 373
    MOV X4, 174
    BL dibujar_rectangulo

    MOV X1, 345
    MOV X2, 174
    BL dibujar_pixel

    MOV X1, 345
    MOV X2, 135
    MOV X3, 345
    MOV X4, 173
    BL dibujar_rectangulo
    
    MOV X1, 314
    MOV X2, 136
    MOV X3, 315
    MOV X4, 232
    BL dibujar_rectangulo
    
    MOV X1, 399
    MOV X2, 113
    MOV X3, 399
    MOV X4, 105
    BL dibujar_rectangulo

    MOV X1, 342
    MOV X2, 134
    MOV X3, 342
    MOV X4, 132
    BL dibujar_rectangulo

    MOV X1, 341
    MOV X2, 131
    MOV X3, 341
    MOV X4, 130
    BL dibujar_rectangulo

    MOV X1, 192
    MOV X2, 191
    MOV X3, 207
    MOV X4, 191 
    BL dibujar_rectangulo

    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 210
    MOV X2, 233
    MOV X3, 211
    MOV X4, 206
    BL dibujar_rectangulo
    
    MOV X1, 207
    MOV X2, 205
    MOV X3, 207
    MOV X4, 191
    BL dibujar_rectangulo
    
    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
    BL dibujar_rectangulo

    MOV X1, 300
    MOV X2, 123
    MOV X3, 303
    MOV X4, 117
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

