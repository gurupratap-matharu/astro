C     ------------------------------------------------------------------
C     PROGRAM TO PRINT VARIABLES IN PRETTY FORMAT
C     ------------------------------------------------------------------
      PROGRAM PRETTYPRINT
      
C     ------------------------------------------------------------------
C     DECLARE VARIABLES
C     ------------------------------------------------------------------

      INTEGER           ::  POS = 1, VUE = 22, H = 3, M = 30
      REAL              ::  S = 38.3
      CHARACTER(18)     :: PIL = "Juan Manuel Fangio"
      CHARACTER(8)      :: AUT = "Maserati"
      CHARACTER(9)      :: NAC = "Argentina"
      CHARACTER(LEN=120) :: F1, F2

      F1 = "(A, 2X, A, 17X, A, 9X, A, 9X, A, 5X, A)"
      F2 = "(I2.1, 4X, A, 5X, A, 5X, A, 5X, I2.1, 6X, I2.1, A, I3.1, A, 
     &F7.3, A)"

C     ------------------------------------------------------------------
C     WRITE VARIABLES TO SCREEN
C     ------------------------------------------------------------------
      
      WRITE(*, F1) "Nro.", "Piloto", "Auto", "Pais", "Vlts.", "Tiempo"
      WRITE(*, F2) POS, PIL, AUT, NAC, VUE, H, 'H', M, 'M', S, 'S'
      END PROGRAM PRETTYPRINT
