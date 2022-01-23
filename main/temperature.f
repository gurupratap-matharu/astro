C     Program to convert farhaneit to degree celsius
C     ------------------------------------------------------------------
      program temperature_converter
        implicit none

C     Declare some variables ok?
C     ------------------------------------------------------------------
      real  :: temp_farh, to_celsius

C     Ask user for temperature in farhaneit
C     ------------------------------------------------------------------
99    write(*,*) "What's the temperature in °F?"
      read(*,*) temp_farh
      write(*, 100) "That's", to_celsius(temp_farh), "°C"
      goto 99

100   format(a, x, f7.2, x, a)

C     All done so end program
C     ------------------------------------------------------------------
      end program temperature_converter


C     Function to convert farhaneit to degree celsius
C     ------------------------------------------------------------------
      function to_celsius(farhaneit)

C     Declare local variables of the function
C     ------------------------------------------------------------------
      real  :: to_celsius, farhaneit

C     Perform the calculation of temperature conversion
C     ------------------------------------------------------------------
      to_celsius = (farhaneit - 32) * 5 / 9

      end