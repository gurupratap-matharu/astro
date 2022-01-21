C     Program to calculate the number of lines read from a file
C     ------------------------------------------------------------------
      Program points
        implicit none

C     Declare variables to hold data
C     ------------------------------------------------------------------
      integer   :: i    ! loop counter variable
      integer   :: n    ! number of lines read
      real      :: x(10000), y(10000)
      

C     Open the local file and read data from it
C     ------------------------------------------------------------------
      open(unit=23, file='P02-Puntos.dat')

      i = 1
10    read(23, *, end=99) x(i), y(i)
        i = i + 1
        goto 10

C     Finished reading file so close it and identify number of lines
C     ------------------------------------------------------------------
99    close(23)
      n = i - 1

C     Print to console the total number of lines read
C     ------------------------------------------------------------------      
      write(*, '(A22, I10)') 'Total number of lines:', n


C     Print to console the the coordinates read
C     ------------------------------------------------------------------      
      do i = 1, n
        write(*, '(I5, 2F10.2)') i, x(i), y(i)
      enddo


C     Everything done so end the program
C     ------------------------------------------------------------------
      end program points