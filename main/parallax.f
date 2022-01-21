C     Program to calculate the parallax of nearby stars

      Program Parallax
        implicit none

C     Declare variables to hold data
      
      integer     :: i
      integer, parameter :: n = 20
      character(len=30)  :: name(n)
      character(len=60)   :: header, output_file
      real :: mag(n), mag_abs(n), distance(n), pllx(n)

C     Read the local files for reading and writing data

      open(unit=23, file="P02-Estrellas-proximas.dat")

C     Read data from the files
      
      read(23, '(A)') header
      read(23, *) ! skip the second line
      
      do i = 1, n
        read(23, 51, end=99) name(i), mag(i), mag_abs(i), distance(i)
      enddo

51    format(a24, 3f10.2)

99    close(23)

C     Write data to the console
      write(*,*) 'The following data has been read: '
      write(*,'(3/, 5X, A, /)') header    ! first write the header row
      do i = 1, n
        write(*, 51) name(i), mag(i), mag_abs(i), distance(i)
      enddo

C     Ask user for name of the output file
      write(*,*) 'Enter the name of the output file: '
      read(*, *) output_file
      

C     Open output file to start writing data

      open(unit=24, file=output_file)

C     Calculate parallax and store it in an array

      do i = 1, n
        pllx(i) = 3.2616 / distance(i)
      enddo

C     Write the data to an external file

      write(24,'(A, /)') 'Nombre                      Mag. V   Mag.Abs.V   
     &   Paralaje'
     
      do i = 1, n
            write(24, 51) name(i), mag(i), mag_abs(i), pllx(i)
      enddo

C     Close the files after reading and writing data
      
      close(unit=24)

C     Everything done so end program
      end program Parallax