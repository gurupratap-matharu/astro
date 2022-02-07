C     ------------------------------------------------------------------
C     Program to analyse election results in tierra del fuego
C     ------------------------------------------------------------------

      program elections
        implicit none

C     ------------------------------------------------------------------
C     Declare variables to hold the data
C     ------------------------------------------------------------------

      integer, parameter :: n = 12       ! number of parties
      integer   :: i
      integer   :: total_votes
      integer   :: votes(n)
      integer   :: ushuaia(n), riogrande(n), antartica(n)

      character(len=30) :: parties(n)    ! names of all parties
      character(len=30) :: winning_party ! name of winning party, if any
      character(len=30) :: a, b          ! dummy variables

      real      :: pct_votes(n)

      logical   :: clear_winner = .false.


C     ------------------------------------------------------------------
C     Read input file for data
C     ------------------------------------------------------------------

      open(unit=23, file='P03-Elecciones.dat')

      read(23, *) parties
      read(23, *) a, ushuaia
      read(23, *) a, b, riogrande
      read(23, *) a, antartica

      close(23)

20    format(2(a5,5x), a7)
21    format(a, i10)
22    format(a5, i10, f10.2)


C     Write the header row for the table
C     ------------------------------------------------------------------

      write(*,*)
      write(*,*)
      write(*,20) 'Party', 'Votes', '%Votes'
      write(*,21) '---------------------------'
      
      total_votes = sum(ushuaia) + sum(riogrande) + sum(antartica)

C     Calculate the percetange of votes for each party
C     ------------------------------------------------------------------

      do i = 1, n
      
        votes(i) = ushuaia(i) + riogrande(i) + antartica(i)
        pct_votes(i) = 100 * (real(votes(i)) / real(total_votes))
        
C     check if a party won the election with > 50% votes
C     ------------------------------------------------------------------

        if (pct_votes(i) > 50) then
      
            clear_winner = .true.
            winning_party = parties(i)
      
        endif

        write(*, 22) parties(i), votes(i), pct_votes(i)
      
      enddo


      write(*,21) '--------------------------------'
      write(*,21) 'Total Votes: ', total_votes
      write(*,21) '--------------------------------'
     

C     Find winning party or find the most promising candidates
C     ------------------------------------------------------------------
     
      write(*,21) '---------------------------------'
      
      if (clear_winner .eqv. .true.) then
      
        write(*,21) 'Election Winner: '
        write(*,21) winning_party
      
      else

        ! sort votes array in place & in descending order
        call bubble_sort(votes, n)

        write(*,21) 'Top promising candidates won...'
        write(*, *) (votes(i), i = 1, 3)
      
      endif
      
      write(*,21) '---------------------------------'


C     Everything done so end the program
C     ------------------------------------------------------------------
      end program elections


C     ------------------------------------------------------------------
C     Subroutine to perform inplace Bubble sort in descending order
C     ------------------------------------------------------------------
      subroutine bubble_sort(A, length)

            implicit none

C     ------------------------------------------------------------------
C     Declare variables local to the subroutine
C     ------------------------------------------------------------------

            integer     :: i, j, length
            integer     :: temp
            integer     :: A(length)
            logical     :: swapped

C     ------------------------------------------------------------------
C     Perform the bubble sort in descending order
C     ------------------------------------------------------------------

            do j = length - 1, 1, -1
            
                  swapped = .false.
                  do i = 1, j

                        if (A(i) < A(i+1)) then
                              temp = A(i)
                              A(i) = A(i+1)
                              A(i+1) = temp
                              swapped = .true.
                        endif

                  enddo

                  ! exit early if array already sorted
                  if (.not. swapped) then
                        exit
                  endif

            enddo

      end subroutine bubble_sort