C     Program to calculate the cosine of any number
C     ------------------------------------------------------------------

      Program Cosine2
        implicit none

C     Declare variables
C     ------------------------------------------------------------------
      integer   :: n, j     ! loop counters
      integer   :: m        ! # of iterations 
      real  ::  x       ! angle whose cosine needs to be calculated
      real  :: temp, result ! cos(x)
      character(len=30) :: output_file


C     Ask user the angle for which the cosine needs to be calculated
C     ------------------------------------------------------------------
      write(*,*) 'Enter the # of iterations (M):'
      read(*,*) m
      write(*,*) 'You entered # of iterations (M):', m
      write(*,*) 'Enter name of output file:'
      
C     Ask user the name of the output file 
C     ------------------------------------------------------------------
      read(*,*) output_file
      write(*,*) 'Results will be written to file: ', output_file
      open(unit=23, file=output_file)


C     Calculate the cos(x) for x = 0.0 to 1.5 with step of 0.05
C     ------------------------------------------------------------------
      write(*,'(A5, 2A25)') 'x', 'cos(x)[calculated]', 'cos(x)[actual]'
      write(23,'(A5, 2A25)') 'x', 'cos(x)[calculated]', 'cos(x)[actual]'

      do x = 0.0, 1.5, 0.05
      
C     Initialize result and temp for new value of x
C     ------------------------------------------------------------------
        result = 1
        temp = 1

C     Calculate the value of cos(x) and store it in `result`
C     ------------------------------------------------------------------
        do n = 1, m
            temp = temp * (-1) * (x**2) / ((2 * n) * (2 * n - 1))
            result = result + temp
        enddo

C     Print the value of x, cos(x) calculated and cos(x) actual
C     ------------------------------------------------------------------
        write(*,'(F7.2,2F20.7)') x, result, cos(x)
        write(23,'(F7.2,2F20.7)') x, result, cos(x)
      enddo


C     Close the file
C     ------------------------------------------------------------------
      close(23)
      

C     Everything completed so end the program
C     ------------------------------------------------------------------
      end program Cosine2
