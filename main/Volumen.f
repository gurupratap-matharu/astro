C     Este programa calcula el volumen de una esfera.
      
C     ----------------------
C     Comienzo del programa.
C     ----------------------
      PROGRAM VOLUMEN_ESFERA

C     -------------------------------------
C     Declaracion de tipo de las variables.
C     -------------------------------------
      REAL VOLUMEN, RADIO, PI
      PARAMETER (PI = 3.141593)

C     -----------------
C     Ingreso de datos.
C     -----------------
      WRITE(*,*) 'Ingrese el radio de la esfera'
      READ(*,*) RADIO

C     ----------------------------------
C     Calculo del volumen de una esfera.
C     ----------------------------------
      VOLUMEN = (4.0/3.0) * PI * RADIO**3

C     ------------------------
C     Impresion del resultado.
C     ------------------------
      WRITE(*,*) 'El volumen de la esfera es', VOLUMEN

C     --------------------------
C     Finalizacion del programa.
C     --------------------------
      END
