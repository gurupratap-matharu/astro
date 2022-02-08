C     Program to multiply two matrices
C     ------------------------------------------------------------------

      program matrices
        implicit none

        integer :: r_a, c_a, r_b, c_b
        integer :: i, j
        real, allocatable    :: A(:,:), B(:,:), C(:,:)
        write(*,*) 'This program multiplies two matrices A and B'
        
        
        write(*,*) 'Enter the rows & cols of matrix A:'
        read(*,*) r_a, c_a
        
        write(*,*) 'Enter the rows & cols of matrix B:'
        read(*,*) r_b, c_b
        
        if (c_a .ne. r_b) then
          write(*,*) 'Dimensions do not match!'
          write(*,*) 'Cannot multiply both the matrices.'
          write(*,*) 'Thank You'
          call exit(1)
        endif
        
        allocate(A(r_a, c_a))
        allocate(B(r_b, c_b))
        allocate(C(r_a, c_b))

20      format(100f7.2)

        write(*,*) 'Enter the elements of matrix A:'
        read(*,*) A
        do i = 1, r_a
          write(*,20) (A(i, j), j=1, c_a)
        enddo
        
        write(*,*) 'Enter the elements of matrix B:'
        read(*,*) B
        do i = 1, r_b
          write(*,20) (B(i,j), j=1, c_b)
        enddo

        C = matmul(A, B)
        write(*,*) 'A X B = '

        do i = 1, r_a
          write(*,20) (C(i,j), j=1, c_b)
        enddo
        
      end program matrices