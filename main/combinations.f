C     Program to calculate the C(n,r) i.e number of possible
C     combinations for given n and r

      program combinations
        implicit none
        integer :: rows, i, j        
        integer :: n
        integer :: r
        integer :: C
        integer :: nCr
        integer :: fact

C     Ask user for input and verify it
      do
        write(*,*) 'Enter n, r'
        read(*,*) n, r

        if (n > 0 .and. r > 0 .and. n > r) then 
          exit
        else
          write(*,*) 
          write(*,*) '-------------------------------'
          write(*,*) 'Invalid input'
          write(*,*) 'n must be greater than r'
          write(*,*) 'n & r must be greater than zero'
          write(*,*) '-------------------------------'
          write(*,*) 
        endif
      enddo

      C = nCr(n, r)
      write(*,*) 'C(n,r) = ', C

      write(*,*)
      write(*,*) 'how many rows you want for pascals triangle?'
      read(*,*) rows

      do i=0, rows
          write(*,*) (nCr(i, j), j=0, i)
      enddo
      
      end program combinations

      integer function fact(x)
        implicit none
      
        integer, intent(in) :: x
        integer :: i

        fact = 1

        do i=1, x
          fact = fact * i
        enddo
    
      end function fact

C     Function to calculate the combination nCr w/o using large
C     factorials

      integer function nCr(n, r)
        implicit none

        integer :: n
        integer :: r
        integer :: i
        integer :: temp
        integer :: fact
        
        temp = 1

        do i=n, n-r+1, -1
          temp = temp * i
        enddo
        
        nCr = temp / fact(r)
      end function nCr