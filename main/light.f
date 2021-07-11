C     ------------------------------------------------------------------
C     Program to convert the speed of light
C     ------------------------------------------------------------------
      PROGRAM light

C     ------------------------------------------------------------------
C     Declare variables and parameters
C     ------------------------------------------------------------------
      REAL, PARAMETER       :: C = 299792.458
      REAL, PARAMETER       :: AU = 1.49597870 * 10 ** 8
      REAL MPH, AU_DAY
      CHARACTER(LEN=30)     :: FORMAT_MPH, FORMAT_AU_DAY

      FORMAT_MPH = '(A, ES20.10)'
      FORMAT_AU_DAY = '(A, F16.4)'

C     ------------------------------------------------------------------
C     Calculate speed in different units
C     ------------------------------------------------------------------
      MPH = C * 2.237
      AU_DAY = (C * 86400) / AU
      
C     ------------------------------------------------------------------
C     Print results to screen
C     ------------------------------------------------------------------
      WRITE(*,FORMAT_MPH) "C (MILES/HOUR): ", MPH
      WRITE(*,FORMAT_AU_DAY)  "C (UA/dia): ", AU_DAY
      END PROGRAM light