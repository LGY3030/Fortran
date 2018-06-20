!  HOMEWORK1.f90 
!
!  FUNCTIONS:
!	HOMEWORK1      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HOMEWORK1
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HOMEWORK1
	implicit none
REAL::W,COST
REAL,PARAMETER::A=10.0
READ(*,*)W
IF(W>100.00)THEN
WRITE(*,*)"NO_PACKAGE_OVER_100.00_POUND_WILL_BE_SENT."
ELSE
IF(W>2.00.AND.W<=100.00)THEN
IF(MOD(W,1.0)==0.0)THEN
WRITE(*,*)"COST=",A+3.75*(W-2.0)
ELSE
WRITE(*,*)"COST=",A+3.75*(INT(W+1.00)-2.00)
END IF
IF(W>70.00.AND.W<=100.00)THEN
write(*,*)"COST=",COST
END IF
ELSE
COST=A
WRITE(*,*)COST
END IF
END IF
	STOP
	end program HOMEWORK1

