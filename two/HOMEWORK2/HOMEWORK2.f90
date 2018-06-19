!  HOMEWORK2.f90 
!
!  FUNCTIONS:
!	HOMEWORK2      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HOMEWORK2
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HOMEWORK2

	implicit none
	
	REAL::T,L
	
	REAL,PARAMETER::G=9.81,PI=3.1415926
	
	
	
	READ(*,*)L
	
	T=2*PI*SQRT(L/G)
	
	
    WRITE(*,*)"RESULT=",T

	STOP



	end program HOMEWORK2

