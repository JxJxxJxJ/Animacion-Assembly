.global dibujar_pixel
.global dibujar_linea
.global dibujar_rectangulo

    .equ SCREEN_WIDTH, 640
    .equ SCREEN_HEIGHT, 480
    .equ BITS_PER_PIXEL, 32

    .equ BLANCO, 0xFFFFFF
    .equ ROJO, 0xFF0000
    .equ VERDE, 0x00FF00
    .equ VERDE_CLARO, 0xCCFFCC
    .equ AZUL, 0x0000FF
    .equ CIAN, 0x00FFFF
    .equ AMARILLO, 0xFFFF00
    .equ MAGENTA, 0xFF00FF


    // NOTE (x,y) esta en la direccion: Dirección de inicio + 4 * [x + (y * 640)]
    // fun dibujar_pixel(x,y,color) regs:(X1, X2, X7) desc: pixel en (x, y) del color color
dibujar_pixel: // NOTE ANDA!
    MOV X16, SCREEN_WIDTH							// x16 = SCREEN_WIDTH = 640
    MUL X16, X2, X16        						// x16 = y * 640 = X2 * SCREEN_WIDTH
    ADD X16, X1, X16								// x16 = x + y * 640
    LSL X16, X16, #2		   						// x16 = [4 * (x + (y * 640)]
    ADD X16, X0, X16  			                    // X16 = Direccio de Inicio + 4 * [x + (y * 640)]
    STR W7, [X16]									// Colorea X16=(x,y) del color X7=color
    RET 											// Retorno

    // fun dibujar_linea(x1,y1,x2,y2,color) regs: (X1, X2, X3, X4, X7) desc: hace una linea desde (x1,y1) hasta (x2,y2)
dibujar_linea:  // NOTE ANDA! pero no se // (5,10)-----(5,20)   vertical ||    (5,10)-----(20,10)   horizontal
	// Preservo los argumentos en el stack, solo modifico x1=X1, y1=X2 en el medio, solo guardo eso
    SUB     SP, SP, #40   					        // Hago espacio para los argumentos en el stack
    STR     X1, [SP]           						// Guardo X1=x1 en el stack
    STR     X2, [SP, #8]        					// Guardo X2=y1 en el stack STR
    STR     X3, [SP, #16]
    STR     X4, [SP, #24]
    STR     X30, [SP, #32]       				    // Guardo X30=LR en el stack

    CMP X1, X3 										// Comparo X1=x1 con X3=x2
    B.EQ dibujar_linea_vertical						// if(X1=x1 == X3=x2) -> tengo que dibujar vertical

    CMP X2, X4 										// Comparo x2 con x4
    B.EQ dibujar_linea_horizontal					// if(X2=y1 == X4=y2) -> tengo que dibujar horizontal

	// Restauro los argumentos del stack
    LDR     X30, [SP, #32]       				    // Restauro X30=LR desde el stack
	LDR     X4, [SP, #24]
	LDR     X3, [SP, #16]
	LDR     X2, [SP, #8]       					    // Restauro X2=y1 desde el stack
    LDR     X1, [SP]            				    // Restauro X1=x1 desde el stack
    ADD     SP, SP, #40                             // Restauro el puntero del stack
    RET 											// Si no es ninguna, no hago nada, retorno directamente

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
	ret

	// puede modificar x1 (puede modificar X1)
	// proc dibujar_linea_vertical(x1,y1,x2,y2,color)
    dibujar_linea_horizontal:
	// PUSH(LR=X30,x1=X1)
	SUB SP, SP, #16									// Guardo el LR en el stack 
	STR X1, [SP]									// push(x1)
	STR X30, [SP, #8]								// push(LR)

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
ret




	/* 
	------------------(x2,y2) = (X3,X4)
	|						|
	|						|
(x1,y1) = (X1,X2)-----------|

(x2,y2) = (X3,X4)------------
	|						|
	|						|
	|-------------------(x1,y1) = (X1,X2)

(x1,y1) = (X1,X2)------------					
	|						|
	|						|
	|-------------------(x2,y2) = (X3,X4)

(x2,y2) = (X3,X4)------------
	|						|
	|						|
	|-------------------(x1,y1) = (X1,X2)


	*/

// fun dibujar_rectangulo(x1,y1,x2,y2,color) regs: (X1, X2, X3, X4, X7) desc: hace un rectangulo desde (x1,y1) inf iz a (x2,y2) sup der
dibujar_rectangulo: // FIXME
	// PUSH(X1,X2,X3,X4,X30)
	SUB SP, SP, #48
	STR X1, [SP]
	STR X2, [SP, #8]
	STR X3, [SP, #16]
	STR X4, [SP, #24]
	STR X9, [SP, #32]
	STR X30, [SP, #40]

    check_swap_xs:
    CMP X1, X3                     // if
    B.LE no_hago_swap_xs           // (x1 <= x2) then no hago swap xs
        // Si no (x1 > x2)
        MOV X16, X1                // aux := x1
        MOV X1, X3                 // x1 := x2
        MOV X3, X16                // x2 := aux
    no_hago_swap_xs:

    check_swap_ys:
    CMP X2, X4                     // if
    B.LE no_hago_swap_ys           // (y1 <= y2) then no hago swap ys
        // Si no (y1 > y2)
        MOV X16, X2                // aux := x2
        MOV X2, X4                 // x2 := x3
        MOV X4, X16                // x3 := aux
    no_hago_swap_ys:

/* 
 	----------------------------(x2,y2) = (X3,X4)         // Lo hago hasta que y1 <= y2
	|			            			|
(x1,y1++) = (X1,X2)----------(x2,y1++) = (X3,X2)
(x1,y1++) = (X1,X2)----------(x2,y1++) = (X3,X2)
(x1,y1++) = (X1,X2)----------(x2,y1++) = (X3,X2)
(x1,y1  ) = (X1,X2)----------(x2,y1  ) = (X3,X2)        dibujar_linea(x1,y1,x2,y2), regs(X1,X2,X3,X4)
*/

    // limite_superior .req X16
    // y_actual .req X4
    // NOTE Version 1
    // (1,50) (50,50)
    MOV X9, X4         // X16=y2, altura del rectangulo
    // X16 = 50
    MOV X4, X2                // X4=y2 := X2=y1 "inicializo y1"

    loop_pintar_linea_del_rectangulo:
    CMP X4, X9   // if 
    B.GE salir_loop                 // (y1 > y2)
       BL dibujar_linea
       ADD X2, X2, #1               // y1 ++
       ADD X4, X4, #1               // y2 ++
       b loop_pintar_linea_del_rectangulo
    salir_loop:
    // NOTE Version 1


	// POP(X30,X4,X3,X2,X1)
	LDR X30, [SP, #40]
	STR X9, [SP, #32]
	STR X4, [SP, #24]
	STR X3, [SP, #16]
	STR X2, [SP, #8]
	STR X1, [SP]
	ADD SP, SP, #48
ret
