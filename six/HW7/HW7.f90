
!  HW7.f90 
!
!  FUNCTIONS:
!	HW7      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW7
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

program HW7

implicit none

real::y,t !定義變數
do t=-9,9,3 !做t=-9,9,3的迴圈
if(t>=0.)then !假設
y=(-3)*t**2+5 !公式
else
y=3*t**2+5 !其他可能所用的公式
end if !停止假設
write(*,*)y !跑結果
end do !停止迴圈
	

end program HW7

