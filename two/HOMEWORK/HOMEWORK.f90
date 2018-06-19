!  HOMEWORK.f90 
!
!  FUNCTIONS:
!	HOMEWORK      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HOMEWORK
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HOMEWORK

	implicit none
	logical::A_LOG_EXP,B_LOG_EXP,C_LOG_EXP
	LOGICAL,PARAMETER::L1=.TRUE.,L2=.TRUE.,L3=.FALSE.
	A_log_exp=L1.OR.L2.AND.L3
B_log_exp=(L1.NEQV.L2 ).AND.(L1.EQV.L3)
C_log_exp=.NOT.(L1.NEQV.L2).OR.(L1.EQV.L3)
WRITE(*,*)A_LOG_EXP,B_LOG_EXP,C_LOG_EXP
STOP


	end program HOMEWORK

