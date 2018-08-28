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

	REAL::a,b,c,d,e,f,g,h,j,k,y
INTEGER::i
WRITE(*,50)
50 FORMAT(T8,'X.0',T15,'X.1',T22,'X.2',T29,'X.3',T36,'X.4',T43,'X.5',T50,'X.6',T57,'X.7',T64,'X.8',T71,'X.9',/,'____________________________________________________________________________')

DO i=1,10

y=i/1.
a=log10(real(i))
b=log10(real(i)+0.1)
c=log10(real(i)+0.2)
d=log10(real(i)+0.3)
e=log10(real(i)+0.4)
f=log10(real(i)+0.5)
g=log10(real(i)+0.6)
h=log10(real(i)+0.7)
j=log10(real(i)+0.8)
k=log10(real(i)+0.9)
WRITE(*,100)y,a,b,c,d,e,f,g,h,j,k
100 FORMAT(1x,F4.1,10(2X,F5.3))

END DO

	end program HW7

