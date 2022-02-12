C     Write a program that uses two functions, one to accept input of a 
C     single positive integer value and other to determine whether that 
C     number is a perfect number.  

C     A perfect number is one such that the sum of all of its even 
C     divisors (not including the number itself) it equal to the number.
C     Eg: 6 = 1 + 2 + 3, is a perfect number.

      program perfect_number
        implicit none

        integer :: n
        integer :: get_input
        
        logical :: is_perfect

        n = get_input()
        
        if (is_perfect(n)) then
          write(*,*) 'Yes it is a perfect number!!!'
        else
          write(*,*) 'No it is not a perfect number.'
        endif
        
      end program perfect_number

      logical function is_perfect(n)
        implicit none
        
        integer, intent(in) :: n
        integer             :: i
        integer             :: total

        total = 0

        do i = 1, n - 1
          if (mod(n, i) == 0) then
            total = total + i
          endif
        enddo

        if (total == n) then
          is_perfect = .true.
        else
          is_perfect = .false.
        endif

      end function is_perfect

C     Function to take an integer input from the user
      integer function get_input()
        implicit none
        
        integer :: healthy_input
        do
            
          write(*,*) 'Enter a number greater than zero:'
          read(*,*)   healthy_input
          
          if (healthy_input > 0) exit
          
        enddo

      get_input = healthy_input
      
      end function get_input