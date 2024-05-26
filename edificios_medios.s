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
   
   
   
    
    



    // Base inferior torre 1
    MOV X1, 219
    MOV X2, 253
    MOV X3, 238
    MOV X4, 299
    LDR X7, =DARKSLATEGRAY_3
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
