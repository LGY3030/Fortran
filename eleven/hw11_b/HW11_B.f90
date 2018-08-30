!  HW11_B.f90 
!
!  FUNCTIONS:
!	HW11_B      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW11_B
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW11_B

	implicit none

	REAL,DIMENSION(3)::a,b
REAL::d


WRITE(*,*)'依序輸入a、b向量其xyz方向向量'
READ(*,*)a,b
d=a(1)*b(1)+a(2)*b(2)+a(3)*b(3)


WRITE(*,*)'a．b=',d


pause
stop


	end program HW11_B

