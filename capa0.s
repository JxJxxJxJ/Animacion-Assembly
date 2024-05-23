.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"

.equ Y_OFFSET, -64 + 48 // Restar a toda coordenada Y del gif

capa_0:                         // Absolutamente estatica, no cambia nunca
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]


    BL fondo_0
    BL varanda
    BL piso

    // BL edificios_claros      // Tienen que ser 
    // BL edificios_medios      // llamadas en este orden
    BL edificios_oscuros        // para que aparezcan al frente de la otra

    // PUSH(X30)
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
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =CIELO_0
    BL dibujar_rectangulo

    MOV X1, 428
    MOV X2, SCREEN_START
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =CIELO_0
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


varanda:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, SCREEN_START
    MOV X2, 291
    MOV X3, SCREEN_END_X
    MOV X4, SCREEN_END_Y
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // Fondo de la varanda

    MOV X1, SCREEN_START
    MOV X2, 316
    MOV X3, SCREEN_END_X
    MOV X4, 303
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de arriba
    
    MOV X1, SCREEN_START
    MOV X2, 412
    MOV X3, SCREEN_END_X
    MOV X4, 406
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    // Ciclo barrotes gordos verticales 
    MOV X1, 51
    MOV X2, 428
    MOV X3, 62
    MOV X4, 317

    loop_barrotes_gordos:
    CMP X1, SCREEN_END_X
    B.GT exit_loop_barrotes_gordos
        BL dibujar_rectangulo
        ADD X1, X1, 184
        ADD X3, X3, 184
        B loop_barrotes_gordos
    exit_loop_barrotes_gordos:


    // Varandas seccion 1
    // Barras verticales flacas a mano (por sector)
    .equ VARANDAS_X1, 74
    .equ VARANDAS_X3, 79

    MOV X1, VARANDAS_X1
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda 1

    MOV X1, VARANDAS_X1 + 25
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 25
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 45
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 45
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 70
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 70
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 95
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 95
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 118
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 118
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 140
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 140
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    // Varandas seccion 2
    // Barras verticales flacas a mano (por sector)
    .equ VARANDAS_X1, 260
    .equ VARANDAS_X2, 405
    .equ VARANDAS_X3, 266
    .equ VARANDAS_X4, 315

    MOV X1, VARANDAS_X1
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda 1

    MOV X1, VARANDAS_X1 + 25
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 25
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 45
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 45
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 70
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 70
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 95
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 95
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 118
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 118
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 140
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 140
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo


    // Varandas seccion 3
    // Barras verticales flacas a mano (por sector)
    .equ VARANDAS_X1, 445
    .equ VARANDAS_X3, 451

    MOV X1, VARANDAS_X1
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda 1

    MOV X1, VARANDAS_X1 + 25
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 25
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 45
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 45
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 70
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 70
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 95
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 95
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 118
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 118
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    MOV X1, VARANDAS_X1 + 140
    MOV X2, VARANDAS_X2
    MOV X3, VARANDAS_X3 + 140
    MOV X4, VARANDAS_X4
    LDR X7, =BLACK_0
    BL dibujar_rectangulo       // Varanda horizontal de abajo

    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48
RET



piso:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, SCREEN_START
    MOV X2, SCREEN_END_Y
    MOV X3, SCREEN_END_X
    MOV X4, 429
    LDR X7, =BLACK_0
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


edificios_oscuros:
  // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    MOV X1, 420
    MOV X2, 219
    MOV X3, 640
    MOV X4, 290
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 1

    MOV X1, 419
    MOV X2, 263 
    MOV X3, 260
    MOV X4, 296
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 2

    MOV X1, 583
    MOV X2, 221
    MOV X3, 536
    MOV X4, 127
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 3

    MOV X1, 618
    MOV X2, 188
    MOV X3, 583
    MOV X4, 233
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 4

    MOV X1, 622
    MOV X2, 199
    MOV X3, 619
    MOV X4, 237
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 5

    MOV X1, 637
    MOV X2, 238
    MOV X3, 623
    MOV X4, 207
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 6

    MOV X1, 640
    MOV X2, 215
    MOV X3, 638
    MOV X4, 241
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 7

    MOV X1, 514
    MOV X2, 173
    MOV X3, 473
    MOV X4, 207
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 8

    MOV X1, 536
    MOV X2, 208
    MOV X3, 473
    MOV X4, 224
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 9 (es mas un parche)

    MOV X1, 510
    MOV X2, 162
    MOV X3, 477
    MOV X4, 172
    LDR X7, =FONDO_VARANDA_0

    BL dibujar_rectangulo       // bloque 10
    MOV X1, 495
    MOV X2, 158
    MOV X3, 490
    MOV X4, 161
    LDR X7, =FONDO_VARANDA_0

    BL dibujar_rectangulo       // bloque 11
    MOV X1, 484
    MOV X2, 158
    MOV X3, 477
    MOV X4, 161
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 12

    MOV X1, 410
    MOV X2, 223
    MOV X3, 401
    MOV X4, 285
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 13

    MOV X1, 414
    MOV X2, 230
    MOV X3, 411
    MOV X4, 237
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 13

    MOV X1, 419
    MOV X2, 234
    MOV X3, 414
    MOV X4, 237
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 400
    MOV X2, 257
    MOV X3, 221
    MOV X4, 267
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 220
    MOV X2, 265
    MOV X3, 204
    MOV X4, 266
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 218
    MOV X2, 258
    MOV X3, 213
    MOV X4, 264
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 212
    MOV X2, 258
    MOV X3, 204
    MOV X4, 259
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 207
    MOV X2, 230
    MOV X3, 204
    MOV X4, 236
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 208
    MOV X2, 234
    MOV X3, 214
    MOV X4, 236
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 214
    MOV X2, 237
    MOV X3, 213
    MOV X4, 257
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 223
    MOV X2, 238
    MOV X3, 215
    MOV X4, 240
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 224
    MOV X2, 242
    MOV X3, 234
    MOV X4, 244
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 215
    MOV X2, 256
    MOV X3, 216
    MOV X4, 257
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 215
    MOV X2, 258
    MOV X3, 228
    MOV X4, 259
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 277
    MOV X2, 241
    MOV X3, 239
    MOV X4, 244
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 238
    MOV X2, 242
    MOV X3, 224
    MOV X4, 244
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 264
    MOV X2, 238
    MOV X3, 263
    MOV X4, 240
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 284
    MOV X2, 238
    MOV X3, 274
    MOV X4, 240
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 281
    MOV X2, 237
    MOV X3, 288
    MOV X4, 234
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 292
    MOV X2, 230
    MOV X3, 289
    MOV X4, 257
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 297
    MOV X2, 230
    MOV X3, 293
    MOV X4, 233
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 298
    MOV X2, 257
    MOV X3, 307
    MOV X4, 223
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 310
    MOV X2, 230
    MOV X3, 308
    MOV X4, 237
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 311
    MOV X2, 234
    MOV X3, 319
    MOV X4, 237
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 330
    MOV X2, 238
    MOV X3, 319
    MOV X4, 240
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 328
    MOV X2, 241
    MOV X3, 327
    MOV X4, 241
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 380
    MOV X2, 241
    MOV X3, 328
    MOV X4, 244
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 331
    MOV X2, 257
    MOV X3, 334
    MOV X4, 245
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 316
    MOV X2, 256
    MOV X3, 318
    MOV X4, 238
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 347
    MOV X2, 256
    MOV X3, 349
    MOV X4, 245
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 362
    MOV X2, 256
    MOV X3, 364
    MOV X4, 245
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 377
    MOV X2, 256
    MOV X3, 380
    MOV X4, 238
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 385
    MOV X2, 237
    MOV X3, 395
    MOV X4, 234
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 392
    MOV X2, 233
    MOV X3, 393
    MOV X4, 232
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 377
    MOV X2, 240
    MOV X3, 388
    MOV X4, 238
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 394
    MOV X2, 233
    MOV X3, 400
    MOV X4, 230
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 394
    MOV X2, 256
    MOV X3, 395
    MOV X4, 233
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 275
    MOV X2, 257
    MOV X3, 277
    MOV X4, 241
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 228
    MOV X2, 256
    MOV X3, 229
    MOV X4, 245
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 230
    MOV X2, 256
    MOV X3, 230
    MOV X4, 250
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 259
    MOV X2, 256
    MOV X3, 261
    MOV X4, 245
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 244
    MOV X2, 248
    MOV X3, 253
    MOV X4, 245
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 244
    MOV X2, 256
    MOV X3, 253
    MOV X4, 254
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 244
    MOV X2, 253
    MOV X3, 247
    MOV X4, 249
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 298
    MOV X2, 222
    MOV X3, 300
    MOV X4, 221
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 385
    MOV X2, 264
    MOV X3, 391
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 392
    MOV X2, 263
    MOV X3, 392
    MOV X4, 261
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 370
    MOV X2, 264
    MOV X3, 376
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 355
    MOV X2, 264
    MOV X3, 360
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 340
    MOV X2, 264
    MOV X3, 345
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 324
    MOV X2, 264
    MOV X3, 329
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 309
    MOV X2, 264
    MOV X3, 314
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 300
    MOV X2, 263
    MOV X3, 303
    MOV X4, 258
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 302
    MOV X2, 257
    MOV X3, 303
    MOV X4, 256
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 293
    MOV X2, 264
    MOV X3, 295
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 296
    MOV X2, 262
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_pixel            // bloque 14
    
    MOV X1, 293
    MOV X2, 264
    MOV X3, 295
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 282
    MOV X2, 264
    MOV X3, 288
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 281
    MOV X2, 263
    MOV X3, 281
    MOV X4, 261
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 267
    MOV X2, 264
    MOV X3, 273
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 266
    MOV X2, 263
    MOV X3, 266
    MOV X4, 261
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 250
    MOV X2, 264
    MOV X3, 258
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 235
    MOV X2, 264
    MOV X3, 242
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14
    
    MOV X1, 219
    MOV X2, 264
    MOV X3, 227
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 204
    MOV X2, 264
    MOV X3, 212
    MOV X4, 260
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 300
    MOV X2, 275
    MOV X3, 303
    MOV X4, 269
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 300
    MOV X2, 281
    MOV X3, 303
    MOV X4, 280
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 302
    MOV X2, 283
    MOV X3, 303
    MOV X4, 282
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 424
    MOV X2, 229
    MOV X3, 435
    MOV X4, 225
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 439
    MOV X2, 229
    MOV X3, 446
    MOV X4, 225
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 450
    MOV X2, 229
    MOV X3, 457
    MOV X4, 225
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 424
    MOV X2, 240
    MOV X3, 435
    MOV X4, 238
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 439
    MOV X2, 240
    MOV X3, 446
    MOV X4, 238
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 450
    MOV X2, 240
    MOV X3, 457
    MOV X4, 238
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 424
    MOV X2, 253
    MOV X3, 435
    MOV X4, 249
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 439
    MOV X2, 253
    MOV X3, 446
    MOV X4, 249
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14

    MOV X1, 450
    MOV X2, 253
    MOV X3, 457
    MOV X4, 249
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // bloque 14























































    MOV X1, 640
    MOV X2, 290
    MOV X3, 623
    MOV X4, 287
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 619
    MOV X2, 276
    MOV X3, 622
    MOV X4, 281
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 621
    MOV X2, 282
    MOV X3, 622
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 586
    MOV X2, 276
    MOV X3, 587
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 547
    MOV X2, 276
    MOV X3, 550
    MOV X4, 281
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 547
    MOV X2, 282
    MOV X3, 548
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1 

    MOV X1, 516
    MOV X2, 276
    MOV X3, 519
    MOV X4, 281
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 516
    MOV X2, 282
    MOV X3, 517
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1


    MOV X1, 485
    MOV X2, 276
    MOV X3, 487
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 488
    MOV X2, 277
    MOV X3, 488
    MOV X4, 282
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 461
    MOV X2, 276
    MOV X3, 459
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 458
    MOV X2, 277
    MOV X3, 458
    MOV X4, 282
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 431
    MOV X2, 276
    MOV X3, 434
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 414
    MOV X2, 276
    MOV X3, 413
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 412
    MOV X2, 276
    MOV X3, 411
    MOV X4, 281
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 384
    MOV X2, 283
    MOV X3, 383
    MOV X4, 276
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 381
    MOV X2, 276
    MOV X3, 382
    MOV X4, 281
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 365
    MOV X2, 276
    MOV X3, 363
    MOV X4, 283
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 362
    MOV X2, 277
    MOV X3, 362
    MOV X4, 282
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 618
    MOV X2, 287
    MOV X3, 555
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 554
    MOV X2, 288
    MOV X3, 553
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 550
    MOV X2, 288 
    MOV X3, 549
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1
    MOV X1, 548
    MOV X2, 287
    MOV X3, 512
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 506
    MOV X2, 287 
    MOV X3, 440
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 434
    MOV X2, 287 
    MOV X3, 389
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 384
    MOV X2, 287 
    MOV X3, 370
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 365
    MOV X2, 287 
    MOV X3, 355
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 349
    MOV X2, 287 
    MOV X3, 344
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1

    MOV X1, 338
    MOV X2, 287 
    MOV X3, 335
    MOV X4, 290
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo       // detalles bloque 1





   








    // PUSH(X30)
    LDR X30, [SP, 40]
    LDR X7, [SP, 32]
    LDR X4, [SP, 24]
    LDR X3, [SP, 16]
    LDR X2, [SP, 8]
    LDR X1, [SP] 
    ADD SP, SP, #48

RET



