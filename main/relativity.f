C     ------------------------------------------------------------------
C     PROGRAM TO CALCULATE RELATIVITY FACTORS - VELOCITY, LORENTZ
C     AND DOPPLER
C     ------------------------------------------------------------------
      PROGRAM RELATIVITY

C     ------------------------------------------------------------------
C     DECLARE PARAMETERS, VARIABLES 
C     ------------------------------------------------------------------
      REAL BETA, GAMMA, DELTA
      PARAMETER (C = 3.E5, V = 2.91E5, THETA = 0.02129)
      WRITE(*,*) "VEER C, V, THETA = ", C, V, THETA

C     ------------------------------------------------------------------ 
C     CALCULATE VELOCITY, LORENTZ AND DOPPLER FACTOR
C     ------------------------------------------------------------------

      BETA = V / C
      GAMMA = 1 / SQRT((1 - (V/C) ** 2))
      DELTA = 1 / (GAMMA * (1 - BETA * COS(THETA))) 
      
      WRITE(*,*) "VEER BETA = ", BETA
      WRITE(*,*) "VEER GAMMA = ", GAMMA 
      WRITE(*,*) "VEER DELTA = ", DELTA


      

      END PROGRAM RELATIVITY
