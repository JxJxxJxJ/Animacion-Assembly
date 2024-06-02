.ifndef CAPA1_S
.equ CAPA1_S, 0x000000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"
.include "edificios_oscuros.s"
.include "edificios_claros.s"
.include "edificios_claros.s"
.include "capa_0.s"
.include "sprites.s"

capa_1: // Todas las rutinas que dibujen sprites iran aqui,
        // solo se admiten BL a otras figuras en cada frame.
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    /******************************************/
    /*                 FRAME 1                */
    /*                                        */
        BL fondo_3
        BL lampara_0_fondo_3
        BL perro_0
        BL hombre_0
        BL luciernagaf1
        BL celularUP_1

    /*             END FRAME 1                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos


    /******************************************/
    /*                 FRAME 2                */
    /*                                        */
        BL lampara_1
        BL perro_1
        BL hombre_1
        BL luciernagaf2
        
    /*             END FRAME 2                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 3                */
    /*                                        */
        BL lampara_0_fondo_3
        BL perro_0
        BL hombre_0
        BL luciernagaf3
    /*             END FRAME 3                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 4                */
    /*                                        */
        BL lampara_1
        BL perro_1
        BL hombre_1
        BL luciernagaf4
        
    /*             END FRAME 4                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 5                */
    /*                                        */
        BL luciernagaf5        
    /*             END FRAME 5                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 6                */
    /*                                        */
        BL luciernagaf6
    /*             END FRAME 6                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 7                */
    /*                                        */
        BL luciernagaf7
    /*             END FRAME 7                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 8                */
    /*                                        */
        BL luciernagaf8
    /*             END FRAME 8                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 9                */
    /*                                        */
        BL luciernagaf9
    /*             END FRAME 9                */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 10               */
    /*                                        */
        BL luciernagaf10
        
        
    /*             END FRAME 10               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 11               */
    /*                                        */
        BL luciernagaf11
        
    /*             END FRAME 11               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 12               */
    /*                                        */
        BL luciernagaf12
        
    /*             END FRAME 12               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 13               */
    /*                                        */
        BL luciernagaf13
        
    /*             END FRAME 13               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 14               */
    /*                                        */
        BL luciernagaf14
        
    /*             END FRAME 14               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 15               */
    /*                                        */
        BL luciernagaf15
        
        
    /*             END FRAME 15               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 16               */
    /*                                        */
        BL luciernagaf16
        
        
    /*             END FRAME 16               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 17               */
    /*                                        */
        BL luciernagaf17
        
        
    /*             END FRAME 17               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 18               */
    /*                                        */
        BL luciernagaf18

    /*             END FRAME 18               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 19               */
    /*                                        */
        BL luciernagaf19
    /*             END FRAME 19               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 20               */
    /*                                        */
        BL luciernagaf20
        
    /*             END FRAME 20               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 21               */
    /*                                        */
        BL luciernagaf21
        
    /*             END FRAME 21               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 22               */
    /*                                        */
        BL luciernagaf22
        
    /*             END FRAME 22               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 23               */
    /*                                        */
        BL luciernagaf23
        
    /*             END FRAME 23               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 24               */
    /*                                        */
        BL luciernagaf24
    //    BL celularDOWN_1
    /*             END FRAME 24               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 25               */
    /*                                        */
        BL luciernagaf25
    //    BL celularDOWN_0
    /*             END FRAME 25               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 26               */
    /*                                        */
        BL luciernagaf26
        BL celularUP_0
    /*             END FRAME 26               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 27               */
    /*                                        */
        BL luciernagaf27
        BL celularUP_1    
    /*             END FRAME 27               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 28               */
    /*                                        */
        BL luciernagaf28
        
    /*             END FRAME 28               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 29               */
    /*                                        */
        BL luciernagaf29
        BL celularUP_0    
    /*             END FRAME 29               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 30               */
    /*                                        */
        BL luciernagaf30
        
    /*             END FRAME 30               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 31               */
    /*                                        */
        BL luciernagaf31
        BL celularUP_1
    /*             END FRAME 31               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 32               */
    /*                                        */
        BL luciernagaf32
        
    /*             END FRAME 32               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 33               */
    /*                                        */
       BL luciernagaf33
       BL celularUP_0    
    /*             END FRAME 33               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 34               */
    /*                                        */
        BL luciernagaf34
        
    /*             END FRAME 34               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 35               */
    /*                                        */
        BL luciernagaf35
        BL lampara_0_fondo_3
        BL perro_0_azul
        BL hombre_0
        BL celularUP_1
    /*             END FRAME 35               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 36               */
    /*                                        */
        BL luciernagaf36
        
    /*             END FRAME 36               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 37               */
    /*                                        */
        BL luciernagaf37
        BL lampara_1
        BL perro_1
        BL hombre_1
        BL celularUP_1
    /*             END FRAME 37               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 38               */
    /*                                        */
        BL luciernagaf38
        BL celularUP_0    
    /*             END FRAME 38               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1

    /******************************************/
    /*                 FRAME 39               */
    /*                                        */
        BL luciernagaf39
        BL lampara_0_fondo_3
        BL perro_0
        BL hombre_0
        BL celularUP_0
    /*             END FRAME 39               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 40               */
    /*                                        */
        BL luciernagaf40
        
    /*             END FRAME 40               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 41               */
    /*                                        */
        BL luciernagaf41
        BL celularUP_1    
    /*             END FRAME 41               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 42               */
    /*                                        */
        BL luciernagaf42
        
    /*             END FRAME 42               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 43               */
    /*                                        */
        BL luciernagaf43
        
    /*             END FRAME 43               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 44               */
    /*                                        */
        BL luciernagaf44
        
    /*             END FRAME 44               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 45               */
    /*                                        */
        BL luciernagaf45
        
    /*             END FRAME 45               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 46               */
    /*                                        */
        BL fondo_2
        BL lampara_0_fondo_2
        BL hombre_0
        BL luciernagaf46
    /*             END FRAME 46               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 47               */
    /*                                        */
        BL luciernagaf47
        
    /*             END FRAME 47               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 48               */
    /*                                        */
        BL luciernagaf48
        
    /*             END FRAME 48               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 49               */
    /*                                        */
        BL fondo_1
        BL lampara_0_fondo_1
        BL hombre_0
        
    /*             END FRAME 49               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 50               */
    /*                                        */
        
    /*             END FRAME 50               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 51               */
    /*                                        */
        
    /*             END FRAME 51               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 52               */
    /*                                        */
        
    /*             END FRAME 52               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 53               */
    /*                                        */
        BL fondo_0
        BL lampara_0_fondo_0
        BL hombre_0
    /*             END FRAME 53               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 54               */
    /*                                        */
        
    /*             END FRAME 54               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 55               */
    /*                                        */
        BL perro_0_negro
    /*             END FRAME 55               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 56               */
    /*                                        */
        BL perro_0       
    /*             END FRAME 56               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 57               */
    /*                                        */
        BL perro_0_negro
    /*             END FRAME 57               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 58               */
    /*                                        */
        BL perro_0
    /*             END FRAME 58               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 59               */
    /*                                        */
        
    /*             END FRAME 59               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 60               */
    /*                                        */
        
    /*             END FRAME 60               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 61               */
    /*                                        */
        
    /*             END FRAME 61               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 62               */
    /*                                        */
        
    /*             END FRAME 62               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 63               */
    /*                                        */
        
    /*             END FRAME 63               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 64               */
    /*                                        */
        
    /*             END FRAME 64               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 65               */
    /*                                        */
        
    /*             END FRAME 65               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 66               */
    /*                                        */
        
    /*             END FRAME 66               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 67               */
    /*                                        */
        
    /*             END FRAME 67               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 68               */
    /*                                        */
        
    /*             END FRAME 68               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 69               */
    /*                                        */
        
    /*             END FRAME 69               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 70               */
    /*                                        */
        
    /*             END FRAME 70               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 71               */
    /*                                        */
        
    /*             END FRAME 71               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 72               */
    /*                                        */
        BL fondo_1
        BL lampara_0_fondo_1
        BL hombre_0
    /*             END FRAME 72               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 73               */
    /*                                        */
        
    /*             END FRAME 73               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 74               */
    /*                                        */
        
    /*             END FRAME 74               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 75               */
    /*                                        */
        
    /*             END FRAME 75               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 76               */
    /*                                        */
        
    /*             END FRAME 76               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 77               */
    /*                                        */
        BL fondo_2
        BL lampara_0_fondo_2
        BL hombre_0
    /*             END FRAME 77               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 78               */
    /*                                        */
        
    /*             END FRAME 78               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 79               */
    /*                                        */
        
    /*             END FRAME 79               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 80               */
    /*                                        */
        
    /*             END FRAME 80               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 81               */
    /*                                        */
        BL fondo_3
        BL lampara_0_fondo_3
        BL hombre_0
    /*             END FRAME 81               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 82               */
    /*                                        */
        
    /*             END FRAME 82               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 83               */
    /*                                        */
        
    /*             END FRAME 83               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 84               */
    /*                                        */
        BL luciernagaf84
        
    /*             END FRAME 84               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 85               */
    /*                                        */
        BL luciernagaf85
        
    /*             END FRAME 85               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    /******************************************/
    /*                 FRAME 86               */
    /*                                        */
        BL luciernagaf86
        
    /*             END FRAME 86               */
    /*                                        */
    /******************************************/

    BL sleep        // no hace nada durante 1/12 segundos

    B capa_1 // loop infinito

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    ADD SP, SP, #48
RET


.endif
