C     -------------------------------------
C     Compute the area of a
C     triangle using Heron formula
C     -------------------------------------
      PROGRAM HeronFormula
          IMPLICIT NONE

          REAL      :: a, b, c          ! three sides
          REAL      :: s                ! half of perimeter
          REAL      :: Area             ! triangle area
          LOGICAL   :: Cond_1, Cond_2   ! two logical conditions

          READ(*,*) a, b, c

          WRITE(*,*)    "a = ", a
          WRITE(*,*)    "b = ", b
          WRITE(*,*)    "c = ", c
          WRITE(*,*)

          Cond_1 = (a > 0.) .AND. (b > 0.) .AND. (c > 0.0)
          Cond_2 = (a + b > c) .AND. (b + c > a) .AND. (c + a > b)
          IF (Cond_1 .AND. Cond_2) THEN 
              s = (a + b + c) / 2.0
              Area = SQRT(s * (s - a) * (s - b) * (s - c))
              WRITE(*,*) "Triange area = ", Area 
          
          ELSE
              WRITE(*,*) "ERROR: this is not a triangle!"
          END IF


C     -------------------------------------
      END PROGRAM HeronFormula 
          

          
