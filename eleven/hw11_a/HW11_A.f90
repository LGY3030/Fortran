!  HW11_A.f90 
!
!  FUNCTIONS:
!	HW11_A      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW11_A
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW11_A

	implicit none
REAL,DIMENSION(2)::VECTOR,V
REAL::pi=3.14

WRITE(*,*)'¿é¤JV©M¨¤«×'
READ(*,*)VECTOR
V(1)=VECTOR(1)*cos(VECTOR(2)*pi/180)
V(2)=VECTOR(1)*sin(VECTOR(2)*pi/180)


WRITE(*,*)'Vx=',V(1),'Vy=',V(2)

pause
stop

	

	end program HW11_A

