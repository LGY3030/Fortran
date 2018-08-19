!  HW6.f90 
!
!  FUNCTIONS:
!	HW6      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW6
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW6

	implicit none
real::am,gm,n
integer::count,total
count=0
total=0
gm=1
read(*,*)n
do WHILE(n>0) 
count=count+1
total=total+n
gm=gm*n
READ(*,*)n
end do
if(n<=0)then
write(*,*)"Termination."
end if
am=real(total)/count
gm=(gm**(1/REAL(count)))
write (*,*) total, am, gm
stop




	

	end program HW6

