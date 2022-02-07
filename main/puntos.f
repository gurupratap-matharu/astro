C     Program to calculate the number of lines read from a file
C     ------------------------------------------------------------------
      Program points
        implicit none

C     Declare variables to hold data
C     ------------------------------------------------------------------
      integer   :: i    ! loop counter variable
      integer   :: n    ! number of lines read
      integer   :: m    ! max number of lines
      real      :: x(10000), y(10000)
      
C     ------------------------------------------------------------------
C     Read the maximum number of lines possible from user
C     ------------------------------------------------------------------
      write(*,*) 'Enter the max lines possible: '
      read(*,*) m
      write(*,*) 'Max lines possible:', m

C     Open the local file and read data from it
C     ------------------------------------------------------------------
      open(unit=23, file='P02-Puntos.dat')

      do i = 1, m
        read(23, *, end=99) x(i), y(i)
      enddo

      write(*,*)
      write(*,*)
      write(*,*) '************************************'
      write(*,*) 'WARNING: COMPLETE FILE IS NOT READ!'
      write(*,*) '************************************'
      write(*,*)
      write(*,*)
      
C     Finished reading file so close it and identify number of lines
C     ------------------------------------------------------------------
99    close(23)
      n = i - 1


C     Print to console the the coordinates read
C     ------------------------------------------------------------------      
C      do i = 1, n
C        write(*, '(I5, 2F10.2)') i, x(i), y(i)
C      enddo

C     Print to console the total number of lines read
C     ------------------------------------------------------------------      
      write(*,*) '**************************************'
      write(*, '(A22, I10)') 'Total number of lines:', n
      write(*,*) '**************************************'

C     Everything done so end the program
C     ------------------------------------------------------------------
      end program points