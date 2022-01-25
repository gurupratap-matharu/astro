C     Program to sort vectors using  bubble sort
C     ------------------------------------------------------------------

      program vector_sort
        implicit none

C     Declare the variables
C     ------------------------------------------------------------------

      integer   :: i, n(100), lines
      real      :: v(100)

C     open file and read data
C     ------------------------------------------------------------------

      open(unit=23, file='vectors.dat')

      i = 1
      read(23, *)   ! skip header row
100   read(23, *, end=99) n(i), v
      i = i + 1
      write(*,*) n(i), '=>', v
      goto 100

C     Reached end of file so close file and save # lines read
C     ------------------------------------------------------------------

99    close(23)
      lines = i - 1
      
C     Print the data to the screen for validation
C     ------------------------------------------------------------------
      write(*,*) 'Total lines: ', lines
      do i = 1, lines
        write(*,*) n(i), v(i)
      enddo

C     Everything done so end the program
C     ------------------------------------------------------------------
      end program vector_sort