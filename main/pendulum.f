C     ------------------------------------------------------------------
C     Program to calculate the period of a pendulum
C     ------------------------------------------------------------------
      PROGRAM pendulum

C     ------------------------------------------------------------------
C     Declate variables and parameters
C     ------------------------------------------------------------------

      REAL, PARAMETER       :: g = 9.8, pi = 3.14159
      REAL                  :: L        ! pendulum length
      REAL                  :: T        ! period
      CHARACTER(LEN=30)     :: FORMAT

      FORMAT = '(A, F10.5, A)'

C     ------------------------------------------------------------------
C     Ask user for pendulum length
C     ------------------------------------------------------------------
      WRITE(*,*) "Enter length of pendulum (in meters): "
      READ(*,*) L

C     ------------------------------------------------------------------
C     Calculate Period
C     ------------------------------------------------------------------
      T = 2 * pi * SQRT(L/g)
      WRITE(*,FORMAT) "Period of Pendulum: ", T, " seconds"

      END PROGRAM pendulum