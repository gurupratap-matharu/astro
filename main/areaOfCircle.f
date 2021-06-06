C     Program to calculate the area of a circle.

C     ----------------------------------------- 
C     Start of the program
C     ----------------------------------------- 
      PROGRAM AREA OF A CIRCLE

C     ----------------------------------------- 
C     Declaration of variables and parameters.
C     ----------------------------------------- 
      REAL RADIUS, AREA, PI
      PARAMETER (PI = 3.141593)

C     ----------------------------------------- 
C     Take inputs from user.
C     ----------------------------------------- 
      WRITE(*,*)"Enter the radius of the circle:"
      READ(*,*) RADIUS

C     ----------------------------------------- 
C     Calculate the area of the circle.
C     ----------------------------------------- 
      AREA = PI * RADIUS ** 2

C     ----------------------------------------- 
C     Print the results on screen.
C     ----------------------------------------- 
      WRITE(*,*)"The area of the circle is:", AREA
      
C     ----------------------------------------- 
C     End the program.
C     ----------------------------------------- 
      END PROGRAM AREA OF A CIRCLE
      

