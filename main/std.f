C     Program to calculate standard deviation
C     ------------------------------------------------------------------
      program standard_deviation
        implicit none

C     Declare the variables
C     ------------------------------------------------------------------
      real  :: Q(100)
      real  :: mean, std, sum
      integer   :: i, n

C     Ask user the size of the vector and allocate it
C     ------------------------------------------------------------------
      
      print *, 'How many numbers in your list?'
      read(*,*) n

C     Ask user for each element of the vector
C     ------------------------------------------------------------------

      do i = 1, n
            print *, 'Enter your next element:'
            read(*, *) Q(i)
      enddo
      
      write(*,*) '-----------------------------'
      write(*,*) 'You entered: '
      do i = 1, n
            write(*,*) Q(i)
      enddo
      write(*,*) '-----------------------------'
      
C     Calculate mean
C     ------------------------------------------------------------------
      sum = 0
      do i = 1, n
            sum = sum + Q(i)
      enddo
      mean = sum / n


C     Calculate the standard deviation
C     ------------------------------------------------------------------
      sum = 0
      do i = 1, n
            sum = sum + (Q(i) - mean) ** 2
      enddo

      std = sqrt(sum / n)

C     Write mean and std to console
C     ------------------------------------------------------------------
      write(*, 100) 'i', 'Q(i)', 'Q(i) - mean'
100   format(3x, a1, 5x, a10, 5x, a11)

      do i = 1, n
            write(*,101) i, Q(i), Q(i) - mean
      enddo
101   format(1x, i3, 5x, 5f10.2, 5x, 5f10.2)

      write(*,*) '-----------------------------'
      write(*,*) 'Mean: ', mean
      write(*,*) 'Standard Deviation: ', std
      write(*,*) '-----------------------------'
C     ------------------------------------------------------------------
      end program standard_deviation

