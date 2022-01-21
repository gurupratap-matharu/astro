C     ------------------------------------------------------------------
C     PROGRAM TO CALCULATE THE ROOTS OF A QUADRATIC EQUATION
C     ------------------------------------------------------------------
      PROGRAM ROOTS
        implicit none

C     ------------------------------------------------------------------
C     DECLARE PARAMETERS, VARIABLES 
C     ------------------------------------------------------------------
      REAL      ::  A, B, C         ! coefficients
      REAL      ::  X1, X2          ! roots
      REAL      ::  Q, DISCRIMINANT ! discriminant and q

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
        Q = -0.5 * (B + SIGN(DISCRIMINANT, B))
            WRITE(*,*) "-------------------------------"
            WRITE(*,*) "DISCRIMINANT = ", DISCRIMINANT
            WRITE(*,*) "Q = ", Q
            WRITE(*,*) "-------------------------------"
            
        X1 = Q / A
        X2 = C / Q

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
