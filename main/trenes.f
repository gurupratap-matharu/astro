C     Program to calculate the max distance between two trains in a 
C     given time period and identify if their distance was ever less
C     than 50 km

      program trains
        use distances
        implicit none

C     Identify if the distance between the two trains was less than
C     50km ever by calling another function called `is_less_than_50`

        write(*,*) 'Was distance less than 50km?'
        write(*,*) is_less_than_50(d1, d2)

C     Everything done so end the program
      end program trains

C     ------------------------------------------------------------------

      module distances
        implicit none
      contains
C     ------------------------------------------------------------------
      real function d1(t)
        implicit none

        real :: t

        d1 = 300 * sin(0.01 * t)

      end function d1

C     ------------------------------------------------------------------
      real function d2(t)
        implicit none

        real :: t

        d2 = (9 * t) - (0.06 * t ** 2)

      end function d2

C     ------------------------------------------------------------------
C     Function to find if the distance between two trains was ever less
C     than 50km between time intervals t1:t2
      logical function is_less_than_50(f1, f2)
        implicit none

        real, external ::  f1, f2
        real    :: t
        integer :: i


        do i = 200, 1000
          t = real(i) / 10
          ! write(*,*) t, f1(t), f2(t)
        enddo

        is_less_than_50 = .true.
      
      end function is_less_than_50
      
      end module distances