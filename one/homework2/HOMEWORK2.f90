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

	
	real::a,r
	real,parameter::PI=3.1415926	
	read(*,*)r
	a=r**2*PI
	write(*,*)a
	stop


	end program HOMEWORK2

