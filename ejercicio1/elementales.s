.ifndef ELEMENTALES_S
.equ ELEMENTALES_S, 0x000000

.include "framebuffer.s"

    // NOTE: x0 contiene la direccion base del framebuffer

    // NOTE: (x,y) esta en la direccion: Dirección de inicio + 4 * [x + (y * 640)]

    // NOTE:
    // fun dibujar_pixel(x,y,color) 
    // regs:(X1, X2, X7) 
    // desc: pixel en (x, y) del color color
dibujar_pixel: // NOTE ANDA!
    MOV X16, SCREEN_WIDTH		// x16 = SCREEN_WIDTH = 640
    MUL X16, X2, X16			// x16 = y * 640 = X2 * SCREEN_WIDTH
    ADD X16, X1, X16			// x16 = x + y * 640
    LSL X16, X16, #2			// x16 = [4 * (x + (y * 640)]
    ADD X16, X0, X16  			// X16 = Direccio de Inicio + 4 * [x + (y * 640)]
    STR W7, [X16]			// Colorea X16=(x,y) del color X7=color
RET	 	 											// Retorno

    // NOTE:
    // fun dibujar_linea(x1,y1,x2,y2,color) 
    // regs: (X1, X2, X3, X4, X7) 
    // desc: hace una linea desde (x1,y1) hasta (x2,y2)
dibujar_linea:  // NOTE ANDA! pero no se	
    // PUSH(SP,X1,X2,X3,X4)
    SUB     SP, SP, #40   			    
    STR     X1, [SP]           						
    STR     X2, [SP, #8]        					
    STR     X3, [SP, #16]
    STR     X4, [SP, #24]
    STR     X30, [SP, #32]   		// Guardo X30=LR en el stack

    CMP X1, X3				// Comparo X1=x1 con X3=x2
    B.EQ dibujar_linea_vertical		// if(X1=x1 == X3=x2) -> tengo que dibujar vertical

    CMP X2, X4				// Comparo x2 con x4
    B.EQ dibujar_linea_horizontal	// if(X2=y1 == X4=y2) -> tengo que dibujar horizontal

    // POP(SP,X1,X2,X3,X4)
    LDR     X30, [SP, #32]
    LDR     X4, [SP, #24]
    LDR     X3, [SP, #16]
    LDR     X2, [SP, #8]     
    LDR     X1, [SP]      
    ADD     SP, SP, #40   
RET 					// Si no es ninguna, no hago nada, retorno directamente

// NOTE: (Nunca la termine usando a esta, demasiado complicada y no andaba)
// puede modificar y1=X2 
// proc dibujar_linea_vertical(x1,y1,x2,y2,color)
dibujar_linea_vertical:
	// PUSH(LR=X30,y1=X2)
	SUB SP, SP, #16			    	// Guardo el LR en el stack 
	STR X2, [SP]			  	// push(y1)
	STR X30, [SP, #8]		    	// push(LR)

	CMP X2, X4				// if 
	B.LE continuar_loop_linea_vertical	// y1 <= y2 then continuar_loop_linea_vertical

	// Si no (y1 > y2) swapeo para siempre ir de abajo hacia arriba
	MOV X16, X2
	MOV X2, X4
	Mov X4, X16

	continuar_loop_linea_vertical:
	    dibujar_pixel_loop_linea_vertical:  	// Va a iterar por los pixeles hasta que pinto todos
		BL dibujar_pixel  			// Pinto (x1,y1) actual
		ADD X2, X2, #1				// y1=X2++
		CMP X2, X4				// if
		B.LE dibujar_pixel_loop_linea_vertical	// y1 <= y2 then dibujar_pixel_loop_linea_vertical

	// POP(LR=X30, y2=X2) y retorno
	LDR X30, [SP, #8]
	LDR X2, [SP]
	ADD SP, SP, #16
RET

// NOTE:
// puede modificar x1 (puede modificar X1)
// proc dibujar_linea_vertical(x1,y1,x2,y2,color)
dibujar_linea_horizontal:
// PUSH(LR=X30,x1=X1)
	SUB SP, SP, #16					// Guardo el LR en el stack 
	STR X1, [SP]					// push(x1)
	STR X30, [SP, #8]				// push(LR)

	CMP X1, X3					// if 
	B.LE continuar_loop_linea_horizontal		// x1 <= x2 then continuar_loop_linea_horizontal

	// Si no (x1 > x2) swapeo para siempre ir de izquierda a derecha
	MOV X16, X1
	MOV X1, X3
	Mov X3, X16

	continuar_loop_linea_horizontal:
	dibujar_pixel_loop_linea_horizontal: 		// Va a iterar por los pixeles hasta que pinto todos
		BL dibujar_pixel  			// Pinto (x1,y1) actual
		ADD X1, X1, #1				// x1=X1++
		CMP X1, X3				// if
		B.LE dibujar_pixel_loop_linea_horizontal// x1 <= x2 then dibujar_pixel_loop

	// POP(LR=X30, x1=X1) y retorno
	LDR X30, [SP, #8]
	LDR X1, [SP]
	ADD SP, SP, #16
RET

// NOTE: (Esta termino siendo usada para todo)
// fun dibujar_rectangulo(x1,y1,x2,y2,color)
// regs: (X1, X2, X3, X4, X7)
// desc: hace un rectangulo desde (x1,y1) inf iz a (x2,y2) sup der
dibujar_rectangulo: 
	// PUSH(X1,X2,X3,X4, X9, X30)
	SUB SP, SP, #48
	STR X1, [SP]
	STR X2, [SP, #8]
	STR X3, [SP, #16]
	STR X4, [SP, #24]
	STR X9, [SP, #32]
	STR X30, [SP, #40]

        CMP X1, X3                 // if
        B.LE no_hago_swap_xs       // (x1 <= x2) then no hago swap xs
        // Si no (x1 > x2)
        MOV X16, X1                // aux := x1
        MOV X1, X3                 // x1 := x2
        MOV X3, X16                // x2 := aux
    no_hago_swap_xs:

    CMP X2, X4                     // if
    B.LE no_hago_swap_ys           // (y1 <= y2) then no hago swap ys
        // Si no (y1 > y2)
        MOV X16, X2                // aux := x2
        MOV X2, X4                 // x2 := x3
        MOV X4, X16                // x3 := aux
    no_hago_swap_ys:

    // NOTE: Version con dibujar_linea (nunca anduvo)

    // MOV X9, X4                      // X9=y2, altura del rectangulo
    // MOV X4, X2		       // X4=y2 := X2=y1 "inicializo y1"

    // loop_pintar_linea_del_rectangulo:
    // CMP X4, X9  		       // if 
    // B.GT salir_loop                 // (y1 > y2)
    //    BL dibujar_linea 	       // Al salir del loop el retorno esta corrompido
    //    ADD X2, X2, #1               // y1 ++
    //    ADD X4, X4, #1               // y2 ++
    //    b loop_pintar_linea_del_rectangulo
    // salir_loop:

    // NOTE: Version con dibujar_punto (anduvo a la primera)

    // Guardo en X9 el x de partida
    MOV X9, X1          // x1 = X9)

    dibujar_rectangulo_pixel_por_pixel:
    CMP X2, X4
    B.GT dejar_de_pintar
       CMP X1, X3
       B.GT subir_fila
           BL dibujar_pixel
           ADD X1, X1, #1
       b dibujar_rectangulo_pixel_por_pixel

    subir_fila:
        MOV X1, X9                  // Reinicio X1
        ADD X2, X2, #1
        b dibujar_rectangulo_pixel_por_pixel

    dejar_de_pintar:

	// POP(X30,X9, X4,X3,X2,X1)
	LDR X30, [SP, #40]
	LDR X9, [SP, #32]
	LDR X4, [SP, #24]
	LDR X3, [SP, #16]
	LDR X2, [SP, #8]
	LDR X1, [SP]
	ADD SP, SP, #48
RET

// NOTE:
// Duerme un rato
sleep:
    MOV X16, #0                   // Inicializar X16 a 0

    // NOTE: en ejercicio 1 aumento el sleep para que se quede tiempo
    // mas tiempo

    // Cargar <numero> en X17 usando múltiples instrucciones
    MOVZ X17, #0xF, LSL #32       // Cargar los bits superiores
    MOVK X17, #0x4240, LSL #16     // Cargar los bits inferiores
    LSL X17, X17, 5



    seguir_durmiendo:
	CMP X16, X17              // Comparar X16 con X17
	B.EQ dejar_de_dormir      // Si X16 es igual a X17, saltar a dejar_de_dormir
	ADD X16, X16, #1          // Incrementar X16 en 1
	B seguir_durmiendo        // Volver a seguir_durmiendo

    dejar_de_dormir:
RET                               // Retornar

// NOTE:
// (solo para cumplir con el punto)
// fun dibujar_circulo(x,y,r,color)
// regs: (X1, X2, X3, X7)
// desc: dibuja un circulo de centro (x,y) con radio r del color `color`
/*
PERF:
                                                        y-r
                    # = (x-r, y-r)                  #---------?                  ? = (x+r, y-r) 
                                                    |   ***   |
                                                    | *  |r * |
                                                    |*   |   *|
                                                x-r |* (x,y) *| x+r              donde X1=x, X2=y, X3=r
                                                    |*       *|
                                                    | *     * |
                                                    |   ***   |
                    $ = (x-r, y+r)                  $---------!                  ! = (x+r, y+r)
                                                        y+r

*/
//NOTE:
// Para cada punto dentro del cuadrado debo chequear si se cumple esta ecuacion, si es asi entonces lo pinto (pues esta dentro del ciculo).
//                                        (x-x_0)^2 + (y-y_0)^2 <= r^2

dibujar_circulo:
    // PUSH
    SUB SP,SP,#64                                   
    STR X4,[SP]
    STR X9,[SP,#8]
    STR X10,[SP,#16]
    STR X11,[SP,#24]
    STR X12,[SP,#32]
    STR X13,[SP,#40]
    STR X14,[SP,#48]
    STR X30,[SP,#56]

    // Copio en X9 X10 mi punto
    MOV X9,X1                                       // X9 = x
    MOV x10,X2                                      // X10 = y

    // Calculo el punto inferior derecho del cuadrado
    ADD X11,X1,X3                                   // X11 = x+r
    ADD X12,X2,X3                                   // X12 = y+r

    // Calculo el punto superior izquierdo del cuadrado (ademas voy a usar (x,y) como "punto actual")
    SUB X1,X1,X3                                    // x := x-r
    SUB X2,X2,X3                                    // y := y-r

    // Calculo r^2 para usarlo en los CMP
    MUL X4,X3,X3                                    // X4 = r^2

    loop_dibujar_circulo:
        // Seteo de registros auxiliares para guardar la ecuación de la circunferencia (x - x_0)^2 + (y - y_0)^2
        SUB X13,X1,X9                               // X13 = x-x_0
        MUL X13,X13,X13                             // X13 = (x-x_0)^2
        SUB X14,X2,X10                              // X14 = y-y_0
        MUL X14,X14,X14                             // X14 = (y-y_0)^2
        ADD X14,X13,X14                             // X14 = (x-x_0)^2 + (y-y_0)^2

        CMP X4,X14                                  // if
        B.LE dejo_de_dibujar_circulo                // (r^2 <= (x-x_0)^2 + (y-y_0)^2) then dejo_de_dibujar_circulo
        BL dibujar_pixel                            // else if ( (x-x_0)^2 + (y-y_0)^2 ) then dibujar_pixel

        dejo_de_dibujar_circulo:
	    // Aca avanzo horizontalmente
            ADD X1,X1,1                             // X1=x++
            CMP X11,X1                              // if
            B.NE loop_dibujar_circulo               // (X11=x+r != X1=x) then loop_dibujar_ciculo

	    // Reinicio x
	    SUB X1, X1, X3                          // else X1=x+r := x-r
            SUB X1, X1, X3                          // X1=x := x-r

	    // Aca avanzo verticalmente
            ADD X2,X2,1                             // X2=y++
            CMP X12,X2                              // if 
            B.NE loop_dibujar_circulo               // (X12=y+r != X2=y) then sigo_dibujando

    LDR X30,[SP,#56]                                // Pop del stack
    LDR X14,[SP,#48]
    LDR X13,[SP,#40]
    LDR X12,[SP,#32]
    LDR X11,[SP,#24]
    LDR X10,[SP,#16]
    LDR X9,[SP,#8]
    LDR X4,[SP]
    ADD SP, SP, #64
RET     

.endif
