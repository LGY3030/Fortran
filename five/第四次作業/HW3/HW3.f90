!  HW3.f90 
!
!  FUNCTIONS:
!	HW3      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW3
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW3

	implicit none
CHARACTER(10)::SUBJECT
WRITE(*,*)"��J��إN�X"
READ(*,*)SUBJECT
SELECT CASE(SUBJECT)
CASE('1')
WRITE(*,*)"ENGLISH"
CASE('2')
WRITE(*,*)"HISTORY"
CASE('3')
WRITE(*,*)"ASTRONOMY"
CASE('4')
WRITE(*,*)"LITERATURE"
CASE DEFAULT
WRITE(*,*)"��J���~"
END SELECT


	

	end program HW3

