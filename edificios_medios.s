.ifndef EDIFICIOS_MEDIOS_S
    .equ EDIFICIOS_MEDIOS_S, 0x000000

.include "colores.s"
.include "framebuffer.s"
.include "elementales.s"

edificios_medios:
    // PUSH(X30)
    SUB SP, SP, 48
    STR X1, [SP]
    STR X2, [SP, 8]
    STR X3, [SP, 16]
    STR X4, [SP, 24]
    STR X7, [SP, 32]
    STR X30, [SP, 40]

    // -------------------------------
    // EDIFICIO 1
    // -------------------------------

    // Edificio 1 torre más alta

    MOV X1, 310
    MOV X2, 298
    MOV X3, 278
    MOV X4, 171
    LDR X7, = DARKSLATEGRAY_3
    BL dibujar_rectangulo

    //Detalles de la torre mas alta
    MOV X1, 281
    MOV X2, 166
    MOV X3, 307
    MOV X4, 168
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 282
    MOV X2, 162
    MOV X3, 284
    MOV X4, 165
    LDR X7, =SALMON
    BL dibujar_rectangulo

    MOV X1, 281
    MOV X2, 162
    MOV X3, 281
    MOV X4, 165
    LDR X7, =DARKOLIVEGREEN
    BL dibujar_rectangulo

    MOV X1, 304
    MOV X2, 162
    MOV X3, 307
    MOV X4, 165
    LDR X7, =SALMON
    BL dibujar_rectangulo

    MOV X1, 281
    MOV X2, 169
    MOV X3, 307
    MOV X4, 170
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    // Ventanas Edificio 1 torre más alta

    MOV X1, 282
    MOV X2, 174
    MOV X3, 288
    MOV X4, 178
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 281
    MOV X2, 176
    MOV X3, 281
    MOV X4, 178
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 293
    MOV X2, 174
    MOV X3, 299
    MOV X4, 178
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 282
    MOV X2, 184
    MOV X3, 288
    MOV X4, 187
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 293
    MOV X2, 191
    MOV X3, 299
    MOV X4, 195
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 282
    MOV X2, 191
    MOV X3, 288
    MOV X4, 195
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 288
    MOV X2, 201
    MOV X3, 282
    MOV X4, 205
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 293
    MOV X2, 201
    MOV X3, 299
    MOV X4, 205
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 282
    MOV X2, 209
    MOV X3, 288
    MOV X4, 212
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 281
    MOV X2, 210
    MOV X3, 281
    MOV X4, 212
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 293
    MOV X2, 209
    MOV X3, 299
    MOV X4, 212
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 282
    MOV X2, 218
    MOV X3, 288
    MOV X4, 222
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 299
    MOV X2, 222
    MOV X3, 293
    MOV X4, 218
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 282
    MOV X2, 226
    MOV X3, 288
    MOV X4, 230
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    //Detalle del medio entre las torres

    MOV X1, 276
    MOV X2, 204
    MOV X3, 277
    MOV X4, 205
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    //Edificio 1 torre del medio
    MOV X1, 258
    MOV X2, 206
    MOV X3, 277
    MOV X4, 275
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    //Ventanas Edificio 1 torre del medio

    MOV X1, 263
    MOV X2, 209
    MOV X3, 264
    MOV X4, 212
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 270
    MOV X2, 209
    MOV X3, 273
    MOV X4, 212
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 263
    MOV X2, 218
    MOV X3, 264
    MOV X4, 222
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 263
    MOV X2, 226
    MOV X3, 264
    MOV X4, 230
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 270
    MOV X2, 231
    MOV X3, 273
    MOV X4, 234
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 263
    MOV X2, 240
    MOV X3, 264
    MOV X4, 242
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    //Edificio 1 torre baja
    MOV X1, 239
    MOV X2, 218
    MOV X3, 257
    MOV X4, 299
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    //Ventanas Edificio 1 torre baja
    MOV X1, 247
    MOV X2, 223
    MOV X3, 253
    MOV X4, 225
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 247
    MOV X2, 231
    MOV X3, 253
    MOV X4, 234
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 247
    MOV X2, 240
    MOV X3, 253
    MOV X4, 242
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

      

    // Base inferior Edificio 1
    MOV X1, 219
    MOV X2, 253
    MOV X3, 238
    MOV X4, 299
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    // -------------------------------
    // EDIFICIO 2
    // -------------------------------

    //Torre alta Edificio 2
    MOV X1, 396
    MOV X2, 153
    MOV X3, 437
    MOV X4, 264
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
    // Detalle terraza torre alta edificio 2
    MOV X1, 400
    MOV X2, 149
    MOV X3, 434
    MOV X4, 151
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    


    MOV X1, 400
    MOV X2, 144
    MOV X3, 403
    MOV X4, 148
    LDR X7, =SALMON
    BL dibujar_rectangulo
    
    
    
    MOV X1, 431
    MOV X2, 144
    MOV X3, 434
    MOV X4, 148
    LDR X7, =SALMON
    BL dibujar_rectangulo
    
    


    //VENTANAS torre alta edificio 2
    MOV X1, 400
    MOV X2, 162
    MOV X3, 408
    MOV X4, 165
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

      MOV X1, 411
    MOV X2, 162
    MOV X3, 419
    MOV X4, 165
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 424
    MOV X2, 162
    MOV X3, 430
    MOV X4, 165
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 400
    MOV X2, 169
    MOV X3, 408
    MOV X4, 173
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 411
    MOV X2, 169
    MOV X3, 419
    MOV X4, 173
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 424
    MOV X2, 169
    MOV X3, 430
    MOV X4, 173
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 400
    MOV X2, 179
    MOV X3, 408
    MOV X4, 183
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 411
    MOV X2, 179
    MOV X3, 419 
    MOV X4, 183
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    

    MOV X1, 400
    MOV X2, 206
    MOV X3, 408
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    
    MOV X1, 411
    MOV X2, 206
    MOV X3, 419
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 424
    MOV X2, 206
    MOV X3, 430
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    
    
    MOV X1, 400
    MOV X2, 213
    MOV X3, 408
    MOV X4, 217
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    

    MOV X1, 411
    MOV X2, 213
    MOV X3, 419
    MOV X4, 217
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    

    //Torre baja edificio 2
    MOV X1, 315
    MOV X2, 201
    MOV X3, 395
    MOV X4, 299
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo

    //VENTANAS TORRE BAJA edificio 2

    MOV X1, 324
    MOV X2, 206
    MOV X3, 330
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 335
    MOV X2, 206
    MOV X3, 342
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 206
    MOV X3, 353
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 361
    MOV X2, 206
    MOV X3, 369
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    
    MOV X1, 374
    MOV X2, 206
    MOV X3, 380
    MOV X4, 208
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 324
    MOV X2, 218
    MOV X3, 330
    MOV X4, 222
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo

    MOV X1, 335
    MOV X2, 218
    MOV X3, 343
    MOV X4, 222
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 218
    MOV X3, 353
    MOV X4, 222
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 324
    MOV X2, 226
    MOV X3, 330
    MOV X4, 230
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 335
    MOV X2, 226
    MOV X3, 342
    MOV X4, 230
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 226
    MOV X3, 353
    MOV X4, 230
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 359
    MOV X2, 226
    MOV X3, 365
    MOV X4, 230
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 335
    MOV X2, 235
    MOV X3, 342
    MOV X4, 239
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 346
    MOV X2, 235
    MOV X3, 353
    MOV X4, 239
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    MOV X1, 359
    MOV X2, 235
    MOV X3, 365
    MOV X4, 239
    LDR X7, =FONDO_VARANDA_0
    BL dibujar_rectangulo
    
    
    //--------------
    // EDIFICIO 3
    //---------------
    

    MOV X1, 462
    MOV X2, 127
    MOV X3, 495
    MOV X4, 151
    LDR X7, =DARKSLATEGRAY_3
    BL dibujar_rectangulo
    
      //TORRE DEL COSTADO 
  MOV X1, 461
  MOV X2, 149
  MOV X3, 477 
  MOV X4, 217
  LDR X7, =DARKSLATEGRAY_3
  BL dibujar_rectangulo
  
    
    
  //Ventanas 
  MOV X1, 466
  MOV X2, 132
  MOV X3, 472
  MOV X4, 134
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo
  
    
    
  MOV X1, 477
  MOV X2, 132
  MOV X3, 484
  MOV X4, 134
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo

  MOV X1, 489
  MOV X2, 132
  MOV X3, 495
  MOV X4, 134
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo
  
  
  MOV X1, 466
  MOV X2, 139
  MOV X3, 472
  MOV X4, 143
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo
  
  MOV X1, 477
  MOV X2, 139
  MOV X3, 484
  MOV X4, 143
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo
  
  MOV X1, 489
  MOV X2, 138
  MOV X3, 495
  MOV X4, 143
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo
  
  MOV X1, 466
  MOV X2, 149
  MOV X3, 472
  MOV X4, 151
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo
  
  MOV X1, 466
  MOV X2, 157
  MOV X3, 472
  MOV X4, 161
  LDR X7, =FONDO_VARANDA_0
  BL dibujar_rectangulo
  
  

  
  

  //Detalle de arriba
  MOV X1, 466
  MOV X2, 122
  MOV X3, 469
  MOV X4, 126
  LDR X7, =SALMON
  BL dibujar_rectangulo
  
  
  MOV X1, 488
  MOV X2, 122
  MOV X3, 493
  MOV X4, 126
  LDR X7, =SALMON
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
