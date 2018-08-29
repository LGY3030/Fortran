!  HW10.f90 
!
!  FUNCTIONS:
!	HW10      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW10
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW10

	implicit none
real,dimension(-50:50)::value    
character(len=10)::filename    
integer::P=0,Q=0,R=0,status=0,i
write(*,*)'Please enter input file name:'
read(*,*)filename
open(unit=7,file=filename,status='old',action='read',iostat=status)
if(status==0) then
do i=-50,50
read(7,*,iostat=status)value(i)
if(status/=0) exit
if(value(i)>0) then
P=P+1        
else if(value(i)<0) then
Q=Q+1
else 
R=R+1
end if
end do
write(*,10)P,Q,R
10 format('There are',I3,1x,'positive values,',I3,1x,'negative values',1x,'and',I3,1x,'zero values')
else
write(*,20)status
20 format('Error opening file: iostat=',i6)
end if
close(unit=7)
stop


	end program HW10

