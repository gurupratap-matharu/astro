      PROGRAM TRIANGULO

C     ------------------------------------------------------------------
C     * La primer linea de un programa suele usarse para darle un 
C     nombre.
C     * Las lineas que comienzan con una letra C son comentarios usados 
C     para hacer al programa mas comprensible, e ignoradas por el
C     compilador.
C     * En Fortran no hay diferencias entre mayusculas y minusculas.
C     * En un programa Fortran 77 se escribe a partir de la septima 
C     columna, y hasta la columna 72.
C     ------------------------------------------------------------------

C     -------------------------
C     Declaramos las variables.
C     -------------------------
      REAL LADO_1, LADO_2, LADO_3, S, AREA
      LOGICAL c1, c2, c3, Cond_1, Cond_2

C     -----------------------
C     Imprimimos en pantalla.
C     -----------------------
      WRITE(*,*) 'Este programa calcula'
      WRITE(*,*) 'el area de un triangulo cualquiera'
      WRITE(*,*)
      WRITE(*,*) 'Escriba las longitudes de los lados'
      WRITE(*,*) 'separados por comas y de enter'

C     -----------------------
C     Ahora leemos los datos.
C     -----------------------
      READ(*,*) LADO_1, LADO_2, LADO_3

C     -----------------------
C     Imprimir los inputs.
C     -----------------------
      WRITE(*,*)    "LADO_1 = ", LADO_1
      WRITE(*,*)    "LADO_2 = ", LADO_2
      WRITE(*,*)    "LADO_3 = ", LADO_3
      WRITE(*,*)

      c1 = LADO_1 + LADO_2 > LADO_3
      c2 = LADO_2 + LADO_3 > LADO_1
      c3 = LADO_3 + LADO_1 > LADO_2
      
      Cond_1 = (LADO_1 > 0.) .AND. (LADO_2 > 0.) .AND. (LADO_3 > 0.)
      Cond_2 = c1 .AND. c2 .AND. c3 
               
C     -----------------
C     Calculo auxiliar.
C     ----------------- 
      IF (Cond_1 .AND. Cond_2) THEN
          S = .5 * (LADO_1 + LADO_2 + LADO_3)
          AREA = SQRT(S*(S-LADO_1)*(S-LADO_2)*(S-LADO_3))

          WRITE(*,*)
          WRITE(*,*) 'El area de triangulo es ', AREA
          
      ELSE 
          WRITE(*,*) "ERROR: ESTO NO ES UN TRIANGULO!"

      END IF

      END PROGRAM TRIANGULO
