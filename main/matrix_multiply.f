C     Program to multiply two matrices
      program matrix_multiply
        implicit none

C     Declare the variables
        real, allocatable :: C(:,:)  ! matrix C(nxm)
        real, allocatable :: D(:,:)  ! matrix D(mxl)
        real, allocatable :: U(:,:)  ! matrix U(n,l)

        integer :: rows_c, cols_c, rows_d, cols_d

C     Ask user for dimensions of the matrices
C     Use a loop to ask input again if input is invalid

      write(*,*) 
      write(*,*) '---------------------------------------------'
      write(*,*) 'This program multiplies two matrices'
      write(*,*) '                  C X D = U                  '
      write(*,*) '---------------------------------------------'
      write(*,*) 
      
      do
        write(*,*) 'Now enter the dimensions of matrix C(n x m)'
        write(*,*) 'n?'
        read(*,*) rows_c
        write(*,*) 'm?'
        read(*,*) cols_c
        
        write(*,*) 'Now enter the dimensions of matrix D(m x l)'
        write(*,*) 'm?'
        read(*,*) rows_d
        write(*,*) 'l?'
        read(*,*) cols_d

C     If input is valid then exit the loop
        if (cols_c == rows_d) exit
      
C     If input is invalid then inform the user and ask again
        write(*,*)
        write(*,*) '---------------------------------------------'
        write(*,*) 'Dimensions do not match!!!'
        write(*,*) 'We cannot multiply the matrices C and D'
        write(*,*) 'Please try again'
        write(*,*) '---------------------------------------------'
        write(*,*) 
        
      enddo

C     User input is valid so allocate the matrix and vectors with
C     correct size

      allocate(C(rows_c, cols_c))
      allocate(D(rows_d, cols_d))
      allocate(U(rows_c, cols_d))


C     Read and display matrix C
      call read_matrix(C, rows_c, cols_c)
      call print_matrix(C, rows_c, cols_c)
      
C     Read and display matrix D
      call read_matrix(D, rows_d, cols_d)
      call print_matrix(D, rows_d, cols_d)

C     Call the subroutine to find U = C X D
      call multiply_matrices(C, D, U, rows_c, cols_c, rows_d, cols_d)      
    
C     Print the results on screen
      write(*,*)
      write(*,*) 'C X D = U'
      write(*,*) '---------------------------------------'
      
      call print_matrix(U, rows_c, cols_d)

C     All done so end the program
      end program matrix_multiply

C     ------------------------------------------------------------------

C     subroutine to read a matrix from user
      subroutine read_matrix(A, rows, cols)
        implicit none

        integer, intent(in) :: rows, cols
        integer             :: i, j
        real, intent(inout) :: A(rows, cols)

101   format(3(a, i2))

C     Read the matrix element by element
      write(*,*)
      write(*,*) '-----------------------------------------------------'
      write(*,*) 'Reading matrix...'
      write(*,*) '-----------------------------------------------------'
      write(*,*)

      do i=1, rows
        do j=1, cols
          write(*,101) 'Enter(', i, ',', j, '):'
          read(*,*) A(i, j)
        enddo
      enddo

      end subroutine read_matrix

C     ------------------------------------------------------------------
C     subroutine to print a matrix onto the screen
      subroutine print_matrix(A, rows, cols)
        implicit none

        integer, intent(in) :: rows, cols
        real, intent(in)    :: A(rows, cols)
        integer             :: i, j

100   format(50f7.2)

        write(*,*)

        do i=1, rows
          write(*,100) (A(i, j), j=1, cols)
        enddo

        write(*,*)
        
      end subroutine print_matrix

C     ------------------------------------------------------------------

C     subroutine to multiply two matrices
      subroutine multiply_matrices(A, B, C, r_a, c_a, r_b, c_b)
        implicit none

        integer, intent(in) :: r_a, c_a, r_b, c_b
        real, intent(in)  :: A(r_a, c_a)
        real, intent(in)  :: B(r_b, c_b)
        real, intent(inout) :: C(r_a, c_b)

        C = matmul(A, B)

      end subroutine multiply_matrices