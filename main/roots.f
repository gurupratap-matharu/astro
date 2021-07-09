C     ------------------------------------------------------------------
C     PROGRAM TO CALCULATE THE ROOTS OF A QUADRATIC EQUATION
C     ------------------------------------------------------------------
      PROGRAM ROOTS

C     ------------------------------------------------------------------
C     DECLARE PARAMETERS, VARIABLES 
C     ------------------------------------------------------------------
      REAL A, B, C, X1, X2, DISCRIMINANT

C     ------------------------------------------------------------------ 
C     READ INPUTS FROM USER
C     ------------------------------------------------------------------
      WRITE(*,*) "ENTER A: " 
      READ(*,*) A
      
      WRITE(*,*) "ENTER B: " 
      READ(*,*) B

      WRITE(*,*) "ENTER C: " 
      READ(*,*) C
      
      WRITE(*,*)
      WRITE(*,*) "-------------------------------"
      WRITE(*,*) "YOU HAVE ENTERED..."
      WRITE(*,*) "-------------------------------"
      WRITE(*,*) "A: ", A
      WRITE(*,*) "B: ", B
      WRITE(*,*) "C: ", C

C     ------------------------------------------------------------------ 
C     CALCULATE THE ROOTS OF THE QUADRATIC EQUATION
C     WE USE THE BHASKARA FORMULA
C     ------------------------------------------------------------------
      DISCRIMINANT = SQRT(B**2 - 4*A*C)
      
      IF (DISCRIMINANT >= 0) THEN
        WRITE(*,*) "-------------------------------"
        WRITE(*,*) "DISCRIMINANT = ", DISCRIMINANT
        WRITE(*,*) "-------------------------------"

        X1 = (-B + DISCRIMINANT)/ (2*A)
        X2 = (-B - DISCRIMINANT)/ (2*A)

C     ------------------------------------------------------------------
C     PRINT THE RESULTS TO THE SCREEN
C     ------------------------------------------------------------------
        WRITE(*,*)
        WRITE(*,*) "-------------------------------"
        WRITE(*,*) "THE ROOTS OF THE EQUATION ARE: "
        WRITE(*,*) "-------------------------------"
        WRITE(*,*) "X1: ", X1
        WRITE(*,*) "X2: ", X2

      ELSE
        WRITE(*,*)
        WRITE(*,*) "-------------------------------"
        WRITE(*,*) "NO REAL ROOTS EXIST!"
        WRITE(*,*) "-------------------------------"
      
      END IF

      END PROGRAM ROOTS
