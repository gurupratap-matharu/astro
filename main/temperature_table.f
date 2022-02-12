C     Program to show table of temperature conversions from 1...100 °C

      program temperature_table
        implicit none

C     Declare variables
C     ------------------------------------------------------------------
      real  :: to_farhaneit

      integer :: c

C     Take temperatures from 1 -- 100 °C and convert them by using a 
C     pre defined `to_farhaneit` function
C     ------------------------------------------------------------------
      
10    format(a, 5x, a)
11    format(i5, 13x, f10.2)

      write(*,10) 'Temperature(°C)', 'Temperature(°F)'

      do c = 1, 100
        write(*,11) c, to_farhaneit(c)
      enddo

C     Everything done so end program
C     ------------------------------------------------------------------

      end program temperature_table

C     Function to convert temperature from Celsius to Farhaneit
C     ------------------------------------------------------------------

      real function to_farhaneit(c)
        implicit none
      
        integer, intent(in) :: c

        to_farhaneit = (1.8 * c) + 32

      end function to_farhaneit