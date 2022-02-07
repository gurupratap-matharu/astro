C     ------------------------------------------------------------------
C     Program to sort vectors using  bubble sort
C     ------------------------------------------------------------------

      program vector_sort
        implicit none

C     ------------------------------------------------------------------
C     Declare the variables
C     ------------------------------------------------------------------

      integer   :: i, j, long
      real      :: v(100)

      
C     ------------------------------------------------------------------
C     open file and read data and write data
C     ------------------------------------------------------------------

      open(unit=10, file='P03-Vectores.dat')
      open(unit=11, file='P03-Vectores-Ordenados.dat')

      read(10, *)   ! skip header row

      do i = 1, 7

            read(10, *, end=99) long, (v(j), j=1, long)
            
            ! call subroutine to sort vector in place
            call bubble_sort(v, long)
            
            ! write sorted vector to file and to console
            write(*,'(I2, 100F7.2)') long, (v(j), j=1, long)
            write(11,'(I2, 100F7.2)') long, (v(j), j=1, long)

      enddo

C     ------------------------------------------------------------------
C     Reached end of file so close file
C     ------------------------------------------------------------------

99    close(10)
      
C     ------------------------------------------------------------------
C     Everything done so end the program
C     ------------------------------------------------------------------
      end program vector_sort


C     ------------------------------------------------------------------
C     Subroutine to perform inplace Bubble sort in descending order
C     ------------------------------------------------------------------
      subroutine bubble_sort(A, n)

            implicit none

C     ------------------------------------------------------------------
C     Declare variables local to the subroutine
C     ------------------------------------------------------------------

            integer     :: i, j, n
            real        :: temp
            real        :: A(100)
            logical     :: swapped

C     ------------------------------------------------------------------
C     Perform the bubble sort in descending order
C     ------------------------------------------------------------------

            do j = n-1, 1, -1
            
                  swapped = .false.
                  do i = 1, j

                        if (A(i) < A(i+1)) then
                              temp = A(i)
                              A(i) = A(i+1)
                              A(i+1) = temp
                              swapped = .true.
                        endif

                  enddo

                  ! exit early if array already sorted
                  if (.not. swapped) then
                        exit
                  endif

            enddo

      end subroutine bubble_sort