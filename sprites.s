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


lampara_1:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
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


perro_1:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]
    
    MOV X1, 157
    MOV X2, 420
    MOV X3, 155
    MOV X4, 409
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 154     
    MOV X2, 412
    MOV X3, 154
    MOV X4, 409
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 412
    MOV X3, 153
    MOV X4, 412
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 151
    MOV X2, 413
    MOV X3, 154
    MOV X4, 420
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 418
    MOV X3, 150
    MOV X4, 420
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 147
    MOV X2, 421
    MOV X3, 154
    MOV X4, 422
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 456
    MOV X3, 218
    MOV X4, 456
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 379
    MOV X3, 216
    MOV X4, 381
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 212
    MOV X2, 382
    MOV X3, 214
    MOV X4, 374
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 201
    MOV X2, 379
    MOV X3, 201
    MOV X4, 382
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 207
    MOV X2, 383
    MOV X3, 201
    MOV X4, 390
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 391
    MOV X3, 203
    MOV X4, 395
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 197
    MOV X2, 387
    MOV X3, 200
    MOV X4, 390
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 398
    MOV X3, 200
    MOV X4, 396
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 193
    MOV X2, 399
    MOV X3, 199
    MOV X4, 400
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 189
    MOV X2, 401
    MOV X3, 196
    MOV X4, 403
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 192
    MOV X2, 412
    MOV X3, 189
    MOV X4, 404
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 188
    MOV X2, 412
    MOV X3, 186
    MOV X4, 405
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 182
    MOV X2, 413
    MOV X3, 188
    MOV X4, 420
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 421
    MOV X3, 185
    MOV X4, 422
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 420
    MOV X3, 181
    MOV X4, 418
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 178
    MOV X2, 423
    MOV X3, 184
    MOV X4, 434
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 174
    MOV X2, 414
    MOV X3, 177
    MOV X4, 434
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 181
    MOV X2, 447
    MOV X3, 174
    MOV X4, 435
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 147
    MOV X2, 418
    MOV X3, 153
    MOV X4, 442
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 231
    MOV X2, 390
    MOV X3, 231 
    MOV X4, 387
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 230
    MOV X2, 387
    MOV X3, 225
    MOV X4, 387
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 220
    MOV X2, 387
    MOV X3, 219
    MOV X4, 395
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 395
    MOV X3, 216
    MOV X4, 387
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 220
    MOV X2, 404
    MOV X3, 219
    MOV X4, 404
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 220
    MOV X2, 382
    MOV X3, 219
    MOV X4, 382
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 208
    MOV X2, 392
    MOV X3, 209
    MOV X4, 392
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 304
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
    
    MOV X1, 217
    MOV X2, 416
    MOV X3, 218 
    MOV X4, 417
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 215
    MOV X2, 447
    MOV X3, 216
    MOV X4, 418
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 180
    MOV X2, 413
    MOV X3, 181
    MOV X4, 415
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 215
    MOV X2, 418
    MOV X3, 216
    MOV X4, 447
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 169
    MOV X2, 451
    MOV X3, 170
    MOV X4, 452
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 158
    MOV X2, 453
    MOV X3, 159
    MOV X4, 455
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 155
    MOV X2, 451
    MOV X3, 157
    MOV X4, 452
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 154
    MOV X2, 450
    MOV X3, 154
    MOV X4, 448
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 445
    MOV X3, 166
    MOV X4, 440
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
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 415
    MOV X3, 150
    MOV X4, 413
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo


    
    // gaspar

    // cuerpo
    MOV X1, 159
    MOV X2, 452
    MOV X3, 217
    MOV X4, 454
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 173
    MOV X2, 447
    MOV X3, 217
    MOV X4, 451
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 181
    MOV X2, 434
    MOV X3, 213
    MOV X4, 446
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    
    MOV X1, 184
    MOV X2, 422
    MOV X3, 213
    MOV X4, 433
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 185
    MOV X2, 420
    MOV X3, 213
    MOV X4, 421
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 188
    MOV X2, 412
    MOV X3, 213
    MOV X4, 419
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 192
    MOV X2, 403
    MOV X3, 215
    MOV X4, 416
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 196
    MOV X2, 400
    MOV X3, 217
    MOV X4, 414
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 199
    MOV X2, 398
    MOV X3, 237
    MOV X4, 399
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 200
    MOV X2, 395
    MOV X3, 237
    MOV X4, 397
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 203
    MOV X2, 390
    MOV X3, 237
    MOV X4, 394
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 203
    MOV X2, 390
    MOV X3, 237
    MOV X4, 394
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 222
    MOV X2, 382
    MOV X3, 207
    MOV X4, 390
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 223
    MOV X2, 386
    MOV X3, 237
    MOV X4, 389
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    

    //detalles

    MOV X1, 214
    MOV X2, 417
    MOV X3, 215
    MOV X4, 446
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 216
    MOV X2, 415
    MOV X3, 217
    MOV X4, 416
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 157
    MOV X2, 455
    MOV X3, 217
    MOV X4, 455
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    //ojito

    MOV X1, 214
    MOV X2, 386
    MOV X3, 219
    MOV X4, 394
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 216
    MOV X2, 386
    MOV X3, 217
    MOV X4, 394
    LDR X7, =BLACK_2
    BL dibujar_rectangulo
    

    // nariz

    MOV X1, 224
    MOV X2, 386
    MOV X3, 230
    MOV X4, 386
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 230
    MOV X2, 389
    MOV X3, 230
    MOV X4, 386
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 231
    MOV X2, 386
    MOV X3, 237
    MOV X4, 389
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    // termino orejas y cuello

    // puedo estar sobreescribiendo cosas que hizo j.cruz pero tendria que ponerme a ver todo el codigo

    MOV X1, 199
    MOV X2, 378
    MOV X3, 206
    MOV X4, 381
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 199
    MOV X2, 381
    MOV X3, 202
    MOV X4, 373
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 199
    MOV X2, 385
    MOV X3, 199
    MOV X4, 377
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo


    MOV X1, 199
    MOV X2, 373
    MOV X3, 199
    MOV X4, 375
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 203
    MOV X2, 376
    MOV X3, 204
    MOV X4, 377
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 207
    MOV X2, 381
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_pixel

    MOV X1, 208
    MOV X2, 381
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_pixel

    MOV X1, 210
    MOV X2, 381
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_pixel

    MOV X1, 218
    MOV X2, 381
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_pixel

    MOV X1, 219
    MOV X2, 381
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_pixel

    MOV X1, 200
    MOV X2, 378
    MOV X3, 202
    MOV X4, 385
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 203
    MOV X2, 381
    MOV X3, 204
    MOV X4, 389
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo
    
    MOV X1, 205
    MOV X2, 382
    MOV X3, 206
    MOV X4, 389
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 196
    MOV X2, 386
    MOV X3, 206
    MOV X4, 389
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 195
    MOV X2, 387
    MOV X3, 195
    MOV X4, 394
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 196
    MOV X2, 386
    MOV X3, 202
    MOV X4, 394
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 188
    MOV X2, 398
    MOV X3, 191
    MOV X4, 399
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 192
    MOV X2, 395
    MOV X3, 199
    MOV X4, 397
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 192
    MOV X2, 395
    MOV X3, 198
    MOV X4, 399
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 188
    MOV X2, 400
    MOV X3, 195
    MOV X4, 402
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 188
    MOV X2, 400
    MOV X3, 191
    MOV X4, 411
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 184
    MOV X2, 403
    MOV X3, 187
    MOV X4, 403
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 184
    MOV X2, 403
    MOV X3, 184
    MOV X4, 411
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 181
    MOV X2, 412
    MOV X3, 187
    MOV X4, 419
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo


    MOV X1, 185
    MOV X2, 404
    MOV X3, 191
    MOV X4, 411
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 177
    MOV X2, 415
    MOV X3, 180
    MOV X4, 416
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo



    // cola
    MOV X1, 154
    MOV X2, 420
    MOV X3, 156
    MOV X4, 449
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 157
    MOV X2, 430
    MOV X3, 160
    MOV X4, 451
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 159
    MOV X2, 454
    MOV X3, 163
    MOV X4, 439
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo
    
    MOV X1, 165
    MOV X2, 445
    MOV X3, 159
    MOV X4, 454
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 167
    MOV X2, 447
    MOV X3, 159
    MOV X4, 454
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo


    MOV X1, 164
    MOV X2, 439
    MOV X3, 165
    MOV X4, 444
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 161
    MOV X2, 438
    MOV X3, 163
    MOV X4, 438
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 164
    MOV X2, 438
    MOV X3, 165
    MOV X4, 438
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 168
    MOV X2, 450
    MOV X3, 169
    MOV X4, 451
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 157
    MOV X2, 452
    MOV X3, 158
    MOV X4, 454
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 450
    MOV X3, 156
    MOV X4, 451
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 153
    MOV X2, 447
    MOV X3, 153
    MOV X4, 449
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 153
    MOV X2, 450
    MOV X3, 154
    MOV X4, 451
    LDR X7, =BLACK_2
    BL dibujar_rectangulo


    MOV X1, 149
    MOV X2, 442
    MOV X3, 149
    MOV X4, 443
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 444
    MOV X3, 149
    MOV X4, 446
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 442
    MOV X3, 148
    MOV X4, 443
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 145
    MOV X2, 417
    MOV X3, 145
    MOV X4, 441
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 417
    MOV X3, 152
    MOV X4, 441
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 150
    MOV X2, 442
    MOV X3, 163
    MOV X4, 446
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 146
    MOV X2, 415
    MOV X3, 149
    MOV X4, 416
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 153
    MOV X2, 408
    MOV X3, 153
    MOV X4, 411
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 411
    MOV X3, 152
    MOV X4, 411
    LDR X7, =BLACK_2
    BL dibujar_rectangulo

    MOV X1, 149
    MOV X2, 412
    MOV X3, 149
    MOV X4, 414
    LDR X7, =DARKSLATEGRAY_2
    BL dibujar_rectangulo
    
    MOV X1, 150
    MOV X2, 412
    MOV X3, 156
    MOV X4, 419
    LDR X7, =DIMGRAY
    BL dibujar_rectangulo

    MOV X1, 154
    MOV X2, 420
    MOV X3, 156
    MOV X4, 429
    LDR X7, =DARKSLATEGRAY_1
    BL dibujar_rectangulo

    // arreglo bug en la cola

    MOV X1, 157
    MOV X2, 407
    MOV X3, 166
    MOV X4, 420
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    //

    

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
    
    RET
RET
    
.endif
