C     -----------------------------------------------------------------
C     PROGRAM TO TEST LOGICAL EXPRESSIONS
C     -----------------------------------------------------------------
      PROGRAM LOGIC
C     ------------------------------------------------------------------
C     DECLARE PARAMETERS, VARIABLES 
C     ------------------------------------------------------------------
      
      INTEGER :: A = 2, B = 5, C = 10, E = -4
      INTEGER :: G = 1, I = 2, J = 3, K = -2, Z = -1
      REAL    :: D = 2.5
      LOGICAL :: F = .FALSE., T = .TRUE.

C     ------------------------------------------------------------------
C     COMPUTE EXPRESSION AND WRITE TO DISPLAY 
C     ------------------------------------------------------------------
      
      WRITE(*,*) "T.AND.F.OR..FALSE. = ", T.AND.F .OR. .FALSE.
      WRITE(*,*) "A**I+B.LE.B/C+D = ", A ** I + B.LE.B / C+D
      WRITE(*,*) I/J.EQ.2+K.AND.B/C+D.GE.E+C/D-A**J
      WRITE(*,*) (B*J+3.0).EQ.(D-E).AND.(.NOT.F)
      WRITE(*,*) ((2+A).LT.B).OR.(C.GE.J.AND.(5*G).NE.Z)
      WRITE(*,*) .NOT.F.OR.T.AND.2*C.LT.-E+B
      WRITE(*,*) T.AND.MOD(C,2).EQ.0
      WRITE(*,*) B.GT.A.AND.B-E.NE.I.OR.J*K.LT.K+I.OR..NOT.T
      
      END PROGRAM LOGIC