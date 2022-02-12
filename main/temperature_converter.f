C     Program to convert temperature in degree celsius to Farhaneit
C                           F = 1.8 * C + 32

      program temperature_converter
        implicit none

C     Declare variables
C     ------------------------------------------------------------------
        real  ::  temp_farhaneit
        real  ::  temp_celsius
        real  ::  conv

C     Read data from user input
C     ------------------------------------------------------------------
        write(*,*) 'Temperature (°C)? :'
        read(*,*)  temp_celsius

C     Convert temperature from celsius to farhaneit using function
C     ------------------------------------------------------------------
        temp_farhaneit = conv(temp_celsius)

C     Display results on screen
C     ------------------------------------------------------------------
100   format(a, f15.2)
        write(*,100) 'Temperature (°F) = ', temp_farhaneit

C     All done so end program
C     ------------------------------------------------------------------
      end program temperature_converter

  
C     Function to convert temperature from Celsius to Farhaneit
C     ------------------------------------------------------------------
      real function conv(celsius)
        implicit none

        real, intent(in)  :: celsius

        conv = (1.8 * celsius) + 32

      end function conv

