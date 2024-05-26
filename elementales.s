.ifndef ELEMENTALES_S
.equ ELEMENTALES_S, 0x000000

.include "framebuffer.s"

// NOTE x0 contiene la direccion base del framebuffer

// NOTE (x,y) esta en la direccion: Dirección de inicio + 4 * [x + (y * 640)]
// fun dibujar_pixel(x,y,color) regs:(X1, X2, X7) desc: pixel en (x, y) del color color
dibujar_pixel: // NOTE ANDA!
    MOV X16, SCREEN_WIDTH							// x16 = SCREEN_WIDTH = 640
    MUL X16, X2, X16        						// x16 = y * 640 = X2 * SCREEN_WIDTH
    ADD X16, X1, X16								// x16 = x + y * 640
    LSL X16, X16, #2		   						// x16 = [4 * (x + (y * 640)]
    ADD X16, X0, X16  			                    // X16 = Direccio de Inicio + 4 * [x + (y * 640)]
    STR W7, [X16]									// Colorea X16=(x,y) del color X7=color
RET	 	 											// Retorno

// fun dibujar_linea(x1,y1,x2,y2,color) regs: (X1, X2, X3, X4, X7) desc: hace una linea desde (x1,y1) hasta (x2,y2)
dibujar_linea:  // NOTE ANDA! pero no se			// (5,10)-----(5,20)   vertical ||    (5,10)-----(20,10)   horizontal
	// PUSH(SP,X1,X2,X3,X4)
    SUB     SP, SP, #40   					        
    STR     X1, [SP]           						
    STR     X2, [SP, #8]        					
    STR     X3, [SP, #16]
    STR     X4, [SP, #24]
    STR     X30, [SP, #32]       				        // Guardo X30=LR en el stack

    CMP X1, X3 										// Comparo X1=x1 con X3=x2
    B.EQ dibujar_linea_vertical						// if(X1=x1 == X3=x2) -> tengo que dibujar vertical

    CMP X2, X4 										// Comparo x2 con x4
    B.EQ dibujar_linea_horizontal					// if(X2=y1 == X4=y2) -> tengo que dibujar horizontal

	// POP(SP,X1,X2,X3,X4)
    LDR     X30, [SP, #32]
	LDR     X4, [SP, #24]
	LDR     X3, [SP, #16]
	LDR     X2, [SP, #8]     
    LDR     X1, [SP]      
    ADD     SP, SP, #40   
RET 												// Si no es ninguna, no hago nada, retorno directamente

// puede modificar y1=X2 
// proc dibujar_linea_vertical(x1,y1,x2,y2,color)
dibujar_linea_vertical:
	// PUSH(LR=X30,y1=X2)
	SUB SP, SP, #16								// Guardo el LR en el stack 
	STR X2, [SP]								// push(y1)
	STR X30, [SP, #8]							// push(LR)

		CMP X2, X4								// if 
		B.LE continuar_loop_linea_vertical		// y1 <= y2 then continuar_loop_linea_vertical

		// Si no (y1 > y2) swapeo para siempre ir de abajo hacia arriba
		MOV X16, X2
		MOV X2, X4
		Mov X4, X16

    continuar_loop_linea_vertical:
	    dibujar_pixel_loop_linea_vertical:  	// Va a iterar por los pixeles hasta que pinto todos
		BL dibujar_pixel  						// Pinto (x1,y1) actual
		ADD X2, X2, #1							// y1=X2++
		CMP X2, X4								// if
		B.LE dibujar_pixel_loop_linea_vertical	// y1 <= y2 then dibujar_pixel_loop_linea_vertical

	// POP(LR=X30, y2=X2) y retorno
	LDR X30, [SP, #8]
	LDR X2, [SP]
	ADD SP, SP, #16
RET

// puede modificar x1 (puede modificar X1)
// proc dibujar_linea_vertical(x1,y1,x2,y2,color)
dibujar_linea_horizontal:
// PUSH(LR=X30,x1=X1)
	SUB SP, SP, #16								// Guardo el LR en el stack 
	STR X1, [SP]								// push(x1)
	STR X30, [SP, #8]							// push(LR)

	CMP X1, X3									// if 
	B.LE continuar_loop_linea_horizontal		// x1 <= x2 then continuar_loop_linea_horizontal

	// Si no (x1 > x2) swapeo para siempre ir de izquierda a derecha
	MOV X16, X1
	MOV X1, X3
	Mov X3, X16

	continuar_loop_linea_horizontal:
	dibujar_pixel_loop_linea_horizontal: 		// Va a iterar por los pixeles hasta que pinto todos
		BL dibujar_pixel  						// Pinto (x1,y1) actual
		ADD X1, X1, #1							// x1=X1++
		CMP X1, X3								// if
		B.LE dibujar_pixel_loop_linea_horizontal// x1 <= x2 then dibujar_pixel_loop

	// POP(LR=X30, x1=X1) y retorno
	LDR X30, [SP, #8]
	LDR X1, [SP]
	ADD SP, SP, #16
RET

// fun dibujar_rectangulo(x1,y1,x2,y2,color) regs: (X1, X2, X3, X4, X7) desc: hace un rectangulo desde (x1,y1) inf iz a (x2,y2) sup der
dibujar_rectangulo: 
	// PUSH(X1,X2,X3,X4, X9, X30)
	SUB SP, SP, #48
	STR X1, [SP]
	STR X2, [SP, #8]
	STR X3, [SP, #16]
	STR X4, [SP, #24]
	STR X9, [SP, #32]
	STR X30, [SP, #40]

    CMP X1, X3                     // if
    B.LE no_hago_swap_xs           // (x1 <= x2) then no hago swap xs
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

    // NOTE Version con dibujar_linea
    // MOV X9, X4                      // X9=y2, altura del rectangulo
    // MOV X4, X2           		   // X4=y2 := X2=y1 "inicializo y1"

    // loop_pintar_linea_del_rectangulo:
    // CMP X4, X9  				       // if 
    // B.GT salir_loop                 // (y1 > y2)
    //    BL dibujar_linea 			   // Al salir del loop el retorno esta corrompido
    //    ADD X2, X2, #1               // y1 ++
    //    ADD X4, X4, #1               // y2 ++
    //    b loop_pintar_linea_del_rectangulo
    // salir_loop:

    // NOTE Version con dibujar_punto
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

// si aprox en 1 segundo hago 1 millon de lineas, duerme durante 1/12 segundos 
sleep:
    MOV X16, #0                   // Inicializar X16 a 0

    // Cargar 1,000,000,000 en X17 usando múltiples instrucciones
    MOVZ X17, #0xF, LSL #16       // Cargar los bits superiores
    MOVK X17, #0x4240, LSL #0     // Cargar los bits inferiores
    LSL X17, X17, 5



seguir_durmiendo:
    CMP X16, X17                  // Comparar X16 con X17
    B.EQ dejar_de_dormir          // Si X16 es igual a X17, saltar a dejar_de_dormir
    ADD X16, X16, #1              // Incrementar X16 en 1
    B seguir_durmiendo            // Volver a seguir_durmiendo

dejar_de_dormir:
    RET                           // Retornar


.endif
