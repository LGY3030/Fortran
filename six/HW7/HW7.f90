
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

real::y,t !�w�q�ܼ�
do t=-9,9,3 !��t=-9,9,3���j��
if(t>=0.)then !���]
y=(-3)*t**2+5 !����
else
y=3*t**2+5 !��L�i��ҥΪ�����
end if !����]
write(*,*)y !�]���G
end do !����j��
	

end program HW7

