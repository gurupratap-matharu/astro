C     Program to show squares and cube of a natural numbers

      Program Table
        implicit none

C     Declare variables

      integer   :: i, n
      character(len=40), parameter :: fmt = "(20I10, 7F10.3, A,
     &ES14.7)"

C     Read the value of 'n' from the user
      write(*,*) 'Enter the value of n: '
      read (*,*) n

C     Calculate the square and cube of numbers till n
      
      write(*, *) '     Number     Square     Cube'
      do i = 1, n
        write(*, fmt) i, i**2, i**3
      enddo

C     Everything done so end program

      end program Table