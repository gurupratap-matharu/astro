C     Program to calculate the sum of all diagonal elements of a matrix
C     ------------------------------------------------------------------

      program traza
        implicit none
      
        integer, parameter  :: n = 20
        integer :: i, j

        real  :: A(n, n)
        real  :: tr1
        real  :: tr2
      
        A = 0
        
C     Read the matrix from the external file
C     ------------------------------------------------------------------
      open(unit=10, file='P04-Matriz.dat')
      
      read(10,*) ((A(i,j), j=1, 4), i=1, 4)
      
      ! write to verify if read correctly
      do i=1, n
        write(*,'(20F7.2)') A(i, :)
      enddo

C     Caculate traza using function tr1 &  tr2
C     ------------------------------------------------------------------
      write(*,'(A, F7.2)') 'TR1 = ', tr1(A, n)
      write(*,'(A, F7.2)') 'TR2 = ', tr2(A, 20, n)
      
      write(*,*)
      write(*,*) '---------'
      write(*,*) 'Thank You'
      write(*,*) '---------'
      
C     Everything done so end program
C     ------------------------------------------------------------------
      end program traza

C     Function to calculate traza using method 1
C     ------------------------------------------------------------------
      real function tr1(A, n)
        implicit none

        real, intent(in)    :: A(n, n)
        integer :: n, j
        tr1 = 0.

        do j=1, n
          tr1 = tr1 + A(j,j)
        enddo

        end function tr1


C     Function to calculate traza using method 2
C     ------------------------------------------------------------------
      real function tr2(A, np, n)
        implicit none

        real, intent(in)    :: A(np, np)
        integer :: n, j, np
        tr2 = 0.
        

        do j=1, n
          tr2 = tr2 + A(j,j)
        enddo

        end function tr2

