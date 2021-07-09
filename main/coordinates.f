C     -----------------------------------------------------------------
C     PROGRAM TO CALCULATE THE COORDINATES X, Y, Z OF A PARTICLE
C     FROM THE FOLLOWING EQUATIONS
C     -----------------------------------------------------------------
      PROGRAM COORDINATES

C     -----------------------------------------------------------------
C     DECLARE VARIABLES
C     -----------------------------------------------------------------
      REAL X, Y, Z

C     ----------------------------------------------------------------- 
C     TAKE INPUT OF ALPHA AND THETA FROM USER
C     -----------------------------------------------------------------
      WRITE(*,*) "ENTER ALPHA: "
      READ(*,*) ALPHA

      WRITE(*,*) "ENTER THETA (IN RADIANS): "
      READ(*,*) THETA

      WRITE(*,*) "ALPHA = ", ALPHA
      WRITE(*,*) "THETA = ", THETA

C     -----------------------------------------------------------------
C     CALCULATE X, Y, Z
C     -----------------------------------------------------------------
      X = ALPHA * COS(THETA) ** 3
      Y = ALPHA * SIN(THETA) ** 3
      Z = EXP(ABS(X + Y) ** 0.25) * LOG(1 + TAN(THETA) ** 2)

C     -----------------------------------------------------------------
C     PRINT RESULTS TO THE SCREEN
C     -----------------------------------------------------------------
      WRITE(*,*) "(X, Y, Z) = ", X, Y, Z

      END PROGRAM COORDINATES
