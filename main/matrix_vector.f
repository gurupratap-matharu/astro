C     Program to multiply a matrix with a vector using a subroutine ;)
      program matrix_vector
        implicit none

C     Declare the variables
        real, allocatable :: A(:,:)  ! matrix A(mxn)
        real, allocatable :: B(:)    ! vector B(n, 1)
        real, allocatable :: T(:)    ! vector T(m,1)

        integer :: m_a, n_a, n_b
        integer :: i, j

C     Ask user for dimensions of the matrix
C     Use a loop to ask input again if input is invalid

      write(*,*) 
      write(*,*) '---------------------------------------------'
      write(*,*) 'This program multiples a matrix with a vector'
      write(*,*) '                  A X B = T                  '
      write(*,*) '---------------------------------------------'
      write(*,*) 
      
      do
        write(*,*) 'Now enter the dimensions of matrix A(m x n)'
        write(*,*) 'm?'
        read(*,*) m_a
        write(*,*) 'n?'
        read(*,*) n_a
        
        write(*,*) 'Now enter the dimensions of vector B(n x 1)'
        write(*,*) 'n?'
        read(*,*) n_b

C     If input is valid then exit the loop
        if (n_a == n_b) exit
      
C     If input is invalid then inform the user and ask again
        write(*,*)
        write(*,*) '---------------------------------------------'
        write(*,*) 'Dimensions do not match!!!'
        write(*,*) 'We cannot multiply the matrix A with vector B'
        write(*,*) 'Please try again'
        write(*,*) '---------------------------------------------'
        write(*,*) 
        
      enddo

C     User input is valid so allocate the matrix and vectors with
C     correct size

      allocate(A(m_a, n_a))
      allocate(B(n_b))
      allocate(T(m_a))

C     Declare all format here
100   format(50f7.2)
101   format(3(a, i2))


C     Read matrix A
      do i=1, m_a
        do j=1, n_a
          write(*,101) 'Enter A(', i, ',', j, ')'
          read(*,*) A(i,j)
        enddo
      enddo

C     Verify A by printing on screen
      write(*,*) '                    Matrix A                    ' 
      write(*,*) '------------------------------------------------' 
      do i=1, m_a
        write(*,100) (A(i, j), j=1, n_a)
      enddo
      write(*,*)
      
C     Read vector B
      do i=1, n_b
        write(*,101) 'Enter B(', i, ')'
        read(*,*) B(i)
      enddo

C     Verify B by printing on screen
      write(*,*) '                    Vector B                    '
      write(*,*) '------------------------------------------------'
      do i=1, n_b
        write(*,100) B(i)
      enddo
      write(*,*)


C     Call the subroutine to find T = A X B
      call mat_vector_mul(A, B, T, m_a, n_a, n_b)
    
C     Print the results on screen
      write(*,*)
      write(*,*) 'A X B = T'
      write(*,*) '---------------------------------------'
      
      do i=1, m_a
        write(*,100) T(i)
      enddo

C     All done so end the program
      end program matrix_vector

C     subroutine to multiply a matrix with a vector
      subroutine mat_vector_mul(A, B, T, m_a, n_a, n_b)
        implicit none

        integer, intent(in) :: m_a, n_a, n_b
        real, intent(in)  :: A(m_a, n_a)
        real, intent(in)  :: B(n_b)
        real, intent(inout) :: T(m_a)

        integer :: i, j

        T = 0

        do i=1, m_a
          do j=1, n_a
            T(i) = T(i) + A(i,j) * B(j)
          enddo
        enddo

      end subroutine mat_vector_mul