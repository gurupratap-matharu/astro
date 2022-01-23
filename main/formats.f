C     Program to understand formatting strings in fortran
C     ------------------------------------------------------------------

      program formats
        implicit none

C     Declare variables of different types
C     ------------------------------------------------------------------

      integer   :: POS = 1
      integer   :: VUE = 22, H = 3, M = 30
      real      :: S = 38.3
      character(len=50) :: PIL = 'Juan Manuel Fangio'
      character(len=50) :: AUT = 'Maserati'
      character(len=50) :: NAC = 'Argentina'

C     Write the variables to the screen in a nice tabular format
C     ------------------------------------------------------------------

      write(*,100) 'Nro.', 'Piloto', 'Auto', 'Pais', 'Vlts.', 'Tiempo'
      write(*,200) POS, PIL, AUT, NAC, VUE, H, 'h', M, 'm', S, 's'

100   format(a4, 1x, a6, 20x, a4, 6x, a4, 7x, a5, 2x, a6)
200   format(i4, 1x, a24, 2x, a10, a12, i2, 3x, i2, a, i3, a, f5.1, a)

      end program formats