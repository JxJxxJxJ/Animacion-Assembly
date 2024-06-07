.include "capa_0.s"
.include "capa_1.s"


.globl main

main:

    BL capa_0             // NOTE: La capa mas estatica de todas (literalmente estatica)
    BL capa_1             // Animados y demas detalles

// NOTE: Loop infinito para que no se reinicie QEMU
InfLoop:
B InfLoop






