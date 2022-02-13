C     Program to find if a star is a main sequence star or not
C     Luminosity Sun = 1
C     Mass of Sun = 1
C     L (star) = M(star) ** 3.5

      program main_sequence
        implicit none
        
        integer :: i, d
        real  :: L(5), M(5), ERR(5)
        logical :: isMainSequence(5)
      
      isMainSequence = .false.
      
C     Open file tabla.dat to read data of different stars
C     Open file resultados.dat to write data of different stars
      open(10, file='P05-Tabla.dat')
      open(11, file='P05-Resultados.dat')

      read(10, *) ! skip header row
      
C     Read stars data line by line and store in vectors
      do i=1, 5
        read(10, *) d, M(i), L(i), ERR(i)
      enddo

      close(10)

C     Find if star is main sequence by calling subroutine
      call find_main_sequence_stars(M, L, ERR, isMainSequence)

100   format(5(a, 5x))
101   format(i5, 5x, f7.1, 5x, f7.2, 10x, f7.2, 20x, l)

C     Print results to screen and write to file
      write(*,100) 'Estrella','Masa','Luminosidad','Error-Luminosidad',
     &'Sequencia Principal?' 
      write(11,100) 'Estrella','Masa','Luminosidad','Error-Luminosidad',
     &'Sequencia Principal?' 

      do i=1, 5
        write(*,101) i, M(i), L(i), ERR(i), isMainSequence(i)
        write(11,101) i, M(i), L(i), ERR(i), isMainSequence(i)
      enddo

      close(11)

C     Everything done so end main program
      end program main_sequence

  

C     Subroutine to find if a star is a main sequence or not

      subroutine find_main_sequence_stars(M, L, ERR, isMainSequence)
        implicit none

        real, intent(in)  :: L(5), M(5), ERR(5)
        logical, intent(inout) :: isMainSequence(5)

        real    :: lower_bound, upper_bound, temp
        integer :: i

        do i=1, 5
          temp = M(i) ** 3.5
          lower_bound = L(i) - ERR(i)
          upper_bound = L(i) + ERR(i)

          if (lower_bound < temp .and. temp < upper_bound) then
            isMainSequence(i) = .true.
          endif
        enddo

        return
        end subroutine find_main_sequence_stars
      


