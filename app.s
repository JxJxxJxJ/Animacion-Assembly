.include "capa_0.s"
.include "capa_1.s"


.globl main

// NOTE ---------------- CODE HERE ------------------------------------
main:

    BL capa_0             // La capa mas estatica de todas (literalmente estatica)
    BL capa_1             // Animados y demas detalles
    
    // probando git push both and pull both
  // Infinite Loop
InfLoop:
B InfLoop






