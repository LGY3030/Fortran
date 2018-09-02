!  HOMEWORK13.f90 
!
!  FUNCTIONS:
!	HOMEWORK13      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HOMEWORK13
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HOMEWORK13

	implicit none

integer, parameter :: max_size = 20
real, dimension(max_size) :: value
logical :: exceed = .false.
character(len=20) :: filename
integer :: i, status, count=0, error
real :: temp, mean, std_dev, med
write(*,*)"Please enter the filename with the data to be sorted: (grace.txt)"
read(*,"(a)")filename
write(*,100) filename
100 format ("The name of input-file is ", a)

open(unit=1, file=filename, status="old", action="read", iostat=status)

fileopen: if(status==0)then
	readdo: do
		read(1, *, iostat=status)temp
		if (status /=0) exit
		count=count+1
		size: if(count<=max_size)then
			value(count)=temp
		else
			exceed = .true.
		end if size
	end do readdo

	toobig: if (exceed) then

		write(*,1000)count, max_size
		1000 format ("Maxium array size exceeded: ", i6, " > ", i6)

	else

		call ave_sd(value, count, mean, std_dev, error)
		call median(value, count, med)

		errorcheck: if (error==2) then
			write(*,*)"There are not enough data to calculate the mean and standard deviation."
		else if (error==1) then
			write(*,*)"There are not enough data to calculate the standard deviation." 
		end if errorcheck
		
		write(*,*)"The sorted output data values are:"
		write(*,1) (value(i), i=1, count)
		1 format (f6.2)
		write(*,2) mean, std_dev
		2 format ("The mean of the data inputted is ", f6.2, /"while the standard deviation of the data inputted is ", f6.2)
		write(*,3) med
		3 format ("The median of the data inputted is ", f6.2)

	end if toobig

else fileopen
	
	write(*,500)status
	500 format ("File open failed, status = ",i6)

end if fileopen

close (unit=2)

stop

end program HOMEWORK13



subroutine ave_sd(value, count, mean, std_dev, error)

implicit none

integer, intent(in) :: count
real, intent(in), dimension(count) :: value
real, intent(out) :: mean, std_dev
integer, intent(out) :: error

integer :: i
real :: sum1=0., sum2=0.

sumdo: do i=1, count
	sum1 = sum1 + value(i)
	sum2 = sum2 + value(i)**2
end do sumdo

enough_data: if (count>=2) then
	mean = sum1 / real(count)
	std_dev = SQRT( (real(count) * sum2 - sum1**2) / (real(count) * real(count-1)))
	error = 0
else if (count==1) then
	mean = sum1
	std_dev = 0.
	error = 1
else
	mean = 0.
	std_dev = 0.
	error = 2
end if enough_data
end subroutine ave_sd


subroutine median(value, count, med)

implicit none

integer, intent(in) :: count
real, intent(in), dimension(count) :: value
real, intent(out) :: med

call sort(value, count)

odd_even: if (mod(count, 2)==0) then
	med = (value(count/2) + value(count/2+1))/2
else
	med = value((count+1)/2)
end if odd_even
end subroutine median



subroutine sort(value, count)

implicit none

integer, intent(in) :: count
real, dimension(count), intent(inout) :: value

integer :: i, j, large
real :: temp

outerdo: do i=1, count-1

large=i
innerdo: do j = i+1, count
maxval:if( value(j) > value(large)) then
large=j
end if maxval
end do innerdo
			
swap: if (i /= large) then
temp = value(i)
value(i)=value(large)
value(large)=temp
end if swap

end do outerdo

end subroutine sort



