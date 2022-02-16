      program convergence
        implicit none
        
        integer :: n
        real    :: an
        real    :: bn
        logical :: conv

        print *, 'This program tests if a series converges or not.'
        print *, 'A series converges if |a(i-1) - a(i)| < 1.e-5'

        an = ((8 * n) - 5) / (3 * n)
        bn = (n ** 2)/3 - (5 * n)

        print *, 'The series `an` converges?: ', test_convergence(an)
        print *, 'The series `bn` converges?: ', test_convergence(bn)

      end program convergence

      
      function test_convergence(sn)
        implicit none
        
        integer :: i
        real, intent(in)  :: sn
        logical    :: test_convergence

        print *, 'starting function'
      end function test_convergence