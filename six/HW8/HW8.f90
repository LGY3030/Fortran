!  HW8.f90 
!
!  FUNCTIONS:
!	HW8      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW8
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW8

	implicit none
INTEGER::N,I !定義整數N,I
REAL::X !定義變數X
READ(*,*)X !讀變數
IF(X==0)THEN !假設
WRITE(*,*)"1"
ELSE IF(X>0.AND.INT(X)-X/=0)THEN !假設輸入負數的結果
WRITE(*,*)"VALUE IS NEGATIVE"
ELSE IF(X>0.AND.INT(X)-X==0)THEN !假設輸入正整數的結果
N=1 !N從1開始
DO I=1,X !I從1開始迴圈
N=N*I !階乘
END DO !停止迴圈
WRITE(*,*)"RESULT=",N !跑結果
ELSE !另外情形
WRITE(*,*)"NONE" !跑出的結果
END IF !停止假設




	end program HW8

