!  HOMEWORK9.f90 
!
!  FUNCTIONS:
!	HOMEWORK9      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HOMEWORK9
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HOMEWORK9

	implicit none

character(len=20) :: filename
integer :: status, count = 0, value1, maxval, minval, line_max=1, line_min=1 !�ŧi��Ʀ�status, count , value1, maxval, minval, line_max, line_min �A�䤤�]�w���(line_max, line_min�X�l��=1)

write (*,*) "Please enter the input-file name: (read1.txt)"
read (*,"(A)") filename
write (*,1) filename
1 format ("The input-file name is: ", a) !�]�w�nŪ����Ƨ�

open (unit=1, file=filename, status="old", action="read", iostat=status) !���}��Ƨ�

openif: if (status==0) then !�p�G�{��Ū���ɦW���T

read(1, *, iostat=status) maxval ! �}�lŪ�ɮ׸̪��Ĥ@�Ӽƾ�
minval=maxval
count = 1

readloop: do ! �Q�ΰj��}�l����ƾڤj�p�åN���C��
read(1, *, iostat=status) value1
if (status /= 0) exit
count = count + 1
maxval = max(maxval, value1)
minval = min(minval, value1) !���]maxval =�Ĥ@��Ū�쪺�ƾ�(�Omaxval�����MAX���N��)
                             !minval =value ���]minval =�Ĥ@��Ū�쪺�ƾ�(�Ominval�����MIN���N��)


if (value1 >= maxval) line_max = count  ! ����j�p�A���ȷ|�ⵥ�����䪺�ܼƥN����
if (value1 <= minval) line_min = count

end do readloop

readif: if (status>0) then
write(*,5) count + 1
5 format ("An error occurred reading line ", i6)
else readif
write(*,2) maxval, line_max !��XMAX�BMIN�ΩҦb�C��
2 format ("The largest number is ", i5, " which is on the line ", i3)

write(*,3) minval, line_min
3 format ("The smallest number is ", i5, " which is on the line ", i3)
end if readif

else openif

write (*,4) status
4 format ("Error opening file: IOSTAT = ", i6) !�YŪ�쪺�ɦW�D���w�A��XError opening file: IOSTAT =''

end if openif

close (unit=2) ! �����N��Ƨ�����

stop

	end program HOMEWORK9

