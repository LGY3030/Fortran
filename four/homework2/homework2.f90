!  HW5.f90 
!
!  FUNCTIONS:
!	HW5      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW5
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW5
REAL::X,Y
DO
WRITE(*,*)"PLEASE WRITE DOWN X"
READ(*,*)X
IF(X>=1)EXIT
IF(X<1)THEN
Y=LOG(1/(1-X))
WRITE(*,*)"RESULT=",Y
END IF
END DO


	end program HW5

