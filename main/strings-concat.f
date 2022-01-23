C     Program to understand string concatenation in fortran
C     ------------------------------------------------------------------
      program string_concatenation
        implicit none

C     Declare variables 
C     ------------------------------------------------------------------
      character(len=4)  :: A
      character(len=6)  :: B
      character(len=10) :: C

C     Assign values to A, B and C and write them to screen
C     ------------------------------------------------------------------
      A = 'PARED'
      B = '  PAREDES'
      C = 'ASTRO' // ' Y ' // 'GEO'
      C = 'FERRO' // 'CARRILES'

      write(*,*) 'A: ', A
      write(*,*) 'B: ', B
      write(*,*) 'C: ', C


C     All done so end the program
C     ------------------------------------------------------------------
      end program string_concatenation