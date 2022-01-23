C     Program to express light speed in different formats
C     ------------------------------------------------------------------
      program lightspeed
        implicit none

C     Declare variables
C     ------------------------------------------------------------------
      real, parameter   :: c = 299792.458

C     Write light speed to screen in different formats
C     ------------------------------------------------------------------
      write(*,'(A, E18.10)') 'c(miles/hr) = ', c * 0.621371 * 3600 
      write(*,'(A, F10.4)') 'c(a.u./day) = ', c * 86400 / (1.49597870E8) 
      
C     ------------------------------------------------------------------
      end program lightspeed