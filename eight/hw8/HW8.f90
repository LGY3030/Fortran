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

	REAL::x,s1=0,s2=0,a,d !�ŧi���:�`�M�B�ܼơB�����ȡB�зǮt
INTEGER::n=0 !�ŧi��ư_�l��=0
INTEGER::status !�ŧiSTATUS�����

OPEN(UNIT=5, FILE='document.txt', STATUS='old', ACTION='READ', IOSTAT=status)!�s����20�A�}���ɮ�document.txt�A���A�����ɡA����ʧ@��Ū���AIOSTAT=status


IF(status==0)THEN !�ŧi����
  
DO !�i�J�j��
READ(5,*,IOSTAT=status)x
IF(status/=0)EXIT !�פ�j��
n=n+1
s1=s1+x
s2=s2+x**2
END DO !�����j��
    
IF(status>0)THEN !����YŪ�����~
WRITE(*,*)'ERROR: line', n+1 !��X"���~"
ELSE !�ŧi��l�����
n=REAL(n) !�Nn�ܬ����
a=s1/n !�p�⥭����
WRITE(*,*)'mean=',a !��X������
d=SQRT((n*s2-s1**2)/(n*(n-1))) !�p��зǮt
WRITE(*,*)'standard deviation=',d !��X�зǮt
END IF !��������ŧi

ELSE !�ŧi��l����
WRITE(*,*)'ERROR: Opening file' !��X"�}�ҿ��~�ɮ�"

END IF !��������ŧi


CLOSE(UNIT=5) !�����s�X��20���ɮ�

STOP


	end program HW8

