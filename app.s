.globl main
    .equ SCREEN_WIDTH, 640
    .equ SCREEN_HEIGHT, 480
    .equ BITS_PER_PIXEL, 32

    .equ GPIO_BASE, 0x3f200000
    .equ GPIO_GPFSEL0, 0x00
    .equ GPIO_GPLEV0, 0x34


.globl main
    // NOTE Comienzo a dibujar aqui
main:
    // x0 contiene la direccion base del framebuffer
    //TODO ---------------- CODE HERE ------------------------------------
	MOV X1, #1
	MOV X2, #1
	MOV X3, #600
	MOV X4, #400
    movz X7, 0xC7, lsl 16
    movk X7, 0x1585, lsl 00

    bl  dibujar_rectangulo // TODO doesnt work
	

    // Infinite Loop

InfLoop:
    B InfLoop
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
    SUB     SP, SP, #24   					        // Hago espacio para los argumentos en el stack
    STR     X1, [SP]           						// Guardo X1=x1 en el stack
    STR     X2, [SP, #8]        					// Guardo X2=y1 en el stack STR
    STR     X30, [SP, #16]       				    // Guardo X30=LR en el stack

    CMP X1, X3 										// Comparo X1=x1 con X3=x2
    B.EQ dibujar_linea_vertical						// if(X1=x1 == X3=x2) -> tengo que dibujar vertical

    CMP X2, X4 										// Comparo x2 con x4
    B.EQ dibujar_linea_horizontal					// if(X2=y1 == X4=y2) -> tengo que dibujar horizontal

	// Restauro los argumentos del stack
    LDR     X30, [SP, #16]       				    // Restauro X30=LR desde el stack
	LDR     X2, [SP, #8]       					    // Restauro X2=y1 desde el stack
    LDR     X1, [SP]            				    // Restauro X1=x1 desde el stack
    ADD     SP, SP, #24                             // Restauro el puntero del stack
    RET 											// Si no es ninguna, no hago nada, retorno directamente

	// puede modificar y1=X2 
	// proc dibujar_linea_vertical(x1,y1,x2,y2,color)
	dibujar_linea_vertical:
		// PUSH(LR=X30,y1=X2)
		SUB SP, SP, #16								// Guardo el LR en el stack 
		STR X2, [SP]								// push(y1)
		STR X30, [SP, #8]							// push(LR)

		//  comienzo_loop_linea_vertical:			    // Pinto la linea hasta terminar
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
			B.LT dibujar_pixel_loop_linea_vertical	// y1 < y2 then dibujar_pixel_loop_linea_vertical

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

	// comienzo_loop_linea_horizontal:					// Pinto la linea hasta terminar
		CMP X1, X3									// if 
		B.LE continuar_loop_linea_horizontal		// x1 <= x2 then continuar_loop_linea_horizontal

		// Si no (x1 > x2) swapeo para siempre ir de abajo hacia arriba
		MOV X16, X1
		MOV X1, X3
		Mov X3, X16

	continuar_loop_linea_horizontal:
		dibujar_pixel_loop_linea_horizontal: 		// Va a iterar por los pixeles hasta que pinto todos
			BL dibujar_pixel  						// Pinto (x1,y1) actual
			ADD X1, X1, #1							// x1=X1++
			CMP X1, X3								// if
			B.LT dibujar_pixel_loop_linea_horizontal// x1 < x2 then dibujar_pixel_loop

	// POP(LR=X30, x1=X1) y retorno
	LDR X30, [SP, #8]
	LDR X1, [SP]
	ADD SP, SP, #16
	ret

// fun dibujar_rectangulo(x1,y1,x2,y2,color) regs: (X1, X2, X3, X4, X7) desc: hace un rectangulo desde (x1,y1) inf iz a (x2,y2) sup der
dibujar_rectangulo: // FIXME
	// PUSH(y1=X2, LR=X30)
	SUB SP, SP, #16									// Abro el stack
	STR X30, [SP]									// Guardo LR=X30
	STR X2, [SP, #8]								// Guardo y1=X2

	CMP X2, X4										// if
	B.LT continuar_loop_rectangulo					// (y1 < y2) then continuar_loop_rectangulo 

	// Si no,(y1 > y2) swap(y1,y2) 
	MOV X16, X2
	MOV X2, X4
	MOV X4, X16

	continuar_loop_rectangulo:
	     dibujar_lineas_del_rectangulo:     		// Va a iterar por los pixeles hasta que pinto todos
			BL dibujar_linea  						// (x1,y)------(x1,y)
			ADD X2, X2, #1							// y1=X2++
			CMP X2, X4								// if
			B.LT dibujar_lineas_del_rectangulo		// y1 < y2 then dibujar_lineas_del_rectangulo

	// POP(y1=X2, LR=X30) y retorno
	LDR X2, [SP, #8]								// Recupero y1=X2
	LDR X30, [SP]									// Recupero LR=X30
	ADD SP, SP, #16									// Cierro el stack
ret

// TODO _-------------------------------------

