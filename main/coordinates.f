C     PROGRAM TO CALCULATE THE COORDINATES X, Y, Z OF A PARTICLE
C     FROM THE FOLLOWING EQUATIONS
C     -----------------------------------------------------------------
      program coordinates
        implicit none


C     DECLARE VARIABLES
C     -----------------------------------------------------------------
      real  ::  x, y, z
      real  :: alpha, theta


C     ----------------------------------------------------------------- 
C     TAKE INPUT OF ALPHA AND THETA FROM USER
C     -----------------------------------------------------------------
      write(*,*) "Enter alpha (⍺): "
      read(*,*) alpha

      write(*,*) "Enter theta (ϴ) (radians): "
      read(*,*) theta

      write(*,*) "alpha(⍺) = ", alpha
      write(*,*) "theta(ϴ) = ", theta

C     -----------------------------------------------------------------
C     CALCULATE X, Y, Z
C     -----------------------------------------------------------------
      x = alpha * cos(theta) ** 3
      y = alpha * sin(theta) ** 3
      z = exp(abs(X + Y) ** 0.25) * log(1 + tan(theta) ** 2)

C     -----------------------------------------------------------------
C     PRINT RESULTS TO THE SCREEN
C     -----------------------------------------------------------------
      write(*,'(A, 3F7.3)') "(x, y, z) = ", x, y, z

      end program coordinates