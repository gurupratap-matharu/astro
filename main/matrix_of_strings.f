C     Program to indentify string patterns inside a matrix of strings
      program matrix_of_strings
        implicit none

C     Declare variables for the program

      character(len=60) :: input_file
      character(len=10), allocatable :: A(:,:)
      character(len=10) :: d          ! dummy variable

      integer :: rows, cols           ! rows, cols in input matrix
      integer :: i, j

      logical :: answer1


C     Ask user for name of input file to be read
      write(*,*)
      write(*,*) 'Enter the name of the input file:'
      read(*,*) input_file
      write(*,*) '-----------------------------'
      write(*,*) 'Opening file...', input_file
      write(*,*) '-----------------------------'

C     Open the file in a logical unit
      open(unit=10, file=input_file)


C     Declare formats to be used in the program here
51    format(a9, i2, a1, i2)
52    format(99a9)


C     Read first line to identify the dimension of the matrix
      read(10,51) d, rows, d, cols
      read(10,51)  ! skip a line 
      write(*,*) '-----------------------------'
      write(*,*) 'Rows: ', rows, 'Cols: ', cols
      write(*,*) '-----------------------------'


C     initialize the matrix with the desired size with allocate
      allocate(A(rows, cols))

C     Read the entire matrix into memory
      do i=1,rows
        read(10, 52) (A(i,j), j=1, cols)
      enddo


C     Verify the matrix as been read correctly by printing on screen
      do i=1, rows
          write(*,*) (A(i,j), j=1, cols)
      enddo

      call sub1(A, rows, cols, answer1)

C     Print if any column has all words starting with p
      write(*,*) 'Is there a column where all words start with `p`?'
      write(*,*) answer1


C     Everything done so end the program
      end program matrix_of_strings

C     ------------------------------------------------------------------
      subroutine sub1(A, rows, cols, answer1)
        implicit none

        character(len=10), intent(in) :: A(rows, cols)
        integer, intent(in) :: rows, cols
        logical, intent(inout)  :: answer1
        logical :: col_begins_with_p

        integer :: i
        
        write(*,*)
        write(*,*) '------------------------------------'
        write(*,*) 'Sub1 called...'
        write(*,*) '------------------------------------'
        write(*,*)

        do i=1, cols
          answer1 = col_begins_with_p(A(:, i), rows, 'p')
          if (answer1 .eqv. .true.) exit
        enddo
        
      end subroutine sub1

C     ------------------------------------------------------------------

      logical function col_begins_with_p(A, size, letter)
        implicit none

        integer :: size
        integer :: i

        character :: letter
        character(len=10) :: A(size)
        
        col_begins_with_p = .true.

        do i=1, size
          
          if (index(A(i), letter) .ne. 1) then
            col_begins_with_p = .false.
            call exit(1)
          endif

        enddo

        
      end function col_begins_with_p

