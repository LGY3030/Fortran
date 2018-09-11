!  LAST_HW.f90 
!
!  FUNCTIONS:
!	LAST_HW      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: LAST_HW
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

		function func(x)
implicit none
real func
real,intent(in)::x
func=(x**3)-5*(x**2)+5*x+2
end function
	program LAST_HW


	implicit none

real x_start,x_end,func_max,func_min
integer x_steps

write(*,*)"Enter the range and counting steps of x to calculate the"
write(*,*)"maximum and minimum of function f(x)=x^3-5x^2+5x+2."
write(*,"(A\)")"The minimum value of x is "
read(*,*)x_start
write(*,"(A\)")"The maximum value of x is "
read(*,*)x_end
write(*,"(A\)")"The counting steps of x is "
read(*,*)x_steps
call cal(x_start,x_end,x_steps,func_max,func_min)
write(*,110)func_max,func_min
110 format("The maximum of f(x) is ",F6.3/"The minimum of f(x) is ",F6.3)


	end program LAST_HW
	subroutine cal(x_start,x_end,x_steps,func_max,func_min)
implicit none
real x,x_incr,func
integer a
real,intent(in)::x_start
real,intent(in)::x_end
integer,intent(in)::x_steps
real,intent(out)::func_max
real,intent(out)::func_min
external func
x_incr=(x_end-x_start)/x_steps
do a=1,x_steps-1
 if(a==1)then
  x=x_start
  func_max=func(x)
  func_min=func(x)
 else
  x=x+x_incr
  if(func_max<func(x))then
   func_max=func(x)
  end if
  if(func_min>func(x))then
   func_min=func(x)
  end if
 end if
end do
end subroutine
