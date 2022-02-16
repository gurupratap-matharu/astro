C     ------------------------------------------------------------------
C     Program to read the number of lines in a file
C     ------------------------------------------------------------------
      PROGRAM POINTS
      IMPLICIT NONE

C     ------------------------------------------------------------------
C     Declare variables and parameters
C     ------------------------------------------------------------------
      INTEGER       :: U=10, count, io, i
      REAL          :: x, y

C     ------------------------------------------------------------------
C     Open file and read contents using a loop
C     ------------------------------------------------------------------
      OPEN(U, FILE='P02-Puntos.dat', status='OLD')
      
      count = 0
      DO i=1, 10000
        READ(U, *, IOSTAT=io) x, y
        IF (io > 0) THEN
            WRITE(*,*) 'Check input. Something was wrong'
            EXIT
        ELSE IF (io < 0) THEN
            WRITE(*,*) 'Total no. of lines: ', count
            EXIT
        ELSE
            count = count + 1
            WRITE(*,*) i
        END IF
      ENDDO
      
      CLOSE(U)

      END PROGRAM POINTS