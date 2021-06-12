C     -------------------------------------------------------------------
C     Program to evaluate different kind of expressions
C     -------------------------------------------------------------------

      PROGRAM EXPRESSIONS

C     -------------------------------------------------------------------
C     Declare variables
C     -------------------------------------------------------------------
      
      REAL X
      INTEGER A, B

C     -------------------------------------------------------------------
C     Read input from the user for X, A and B
C     -------------------------------------------------------------------
      WRITE(*,*) "Enter the base X: "
      READ(*,*) X
      
      WRITE(*,*) "Enter the power A: "
      READ(*,*) A
      
      WRITE(*,*) "Enter the power B: "
      READ(*,*) B

C     -------------------------------------------------------------------
C     Print output to the console
C     -------------------------------------------------------------------
      
      WRITE(*,*) "ANSWER: ", X ** (A * B)
      END PROGRAM EXPRESSIONS