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
INTEGER::N,I !�w�q���N,I
REAL::X !�w�q�ܼ�X
READ(*,*)X !Ū�ܼ�
IF(X==0)THEN !���]
WRITE(*,*)"1"
ELSE IF(X>0.AND.INT(X)-X/=0)THEN !���]��J�t�ƪ����G
WRITE(*,*)"VALUE IS NEGATIVE"
ELSE IF(X>0.AND.INT(X)-X==0)THEN !���]��J����ƪ����G
N=1 !N�q1�}�l
DO I=1,X !I�q1�}�l�j��
N=N*I !����
END DO !����j��
WRITE(*,*)"RESULT=",N !�]���G
ELSE !�t�~����
WRITE(*,*)"NONE" !�]�X�����G
END IF !����]




	end program HW8

