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
integer :: status, count = 0, value1, maxval, minval, line_max=1, line_min=1 !宣告整數有status, count , value1, maxval, minval, line_max, line_min ，其中設定行數(line_max, line_min出始值=1)

write (*,*) "Please enter the input-file name: (read1.txt)"
read (*,"(A)") filename
write (*,1) filename
1 format ("The input-file name is: ", a) !設定要讀的資料夾

open (unit=1, file=filename, status="old", action="read", iostat=status) !打開資料夾

openif: if (status==0) then !如果程式讀的檔名正確

read(1, *, iostat=status) maxval ! 開始讀檔案裡的第一個數據
minval=maxval
count = 1

readloop: do ! 利用迴圈開始比較數據大小並代換列數
read(1, *, iostat=status) value1
if (status /= 0) exit
count = count + 1
maxval = max(maxval, value1)
minval = min(minval, value1) !假設maxval =第一個讀到的數據(令maxval為比較MAX的代數)
                             !minval =value 假設minval =第一個讀到的數據(令minval為比較MIN的代數)


if (value1 >= maxval) line_max = count  ! 比較大小，極值會把等號左邊的變數代換掉
if (value1 <= minval) line_min = count

end do readloop

readif: if (status>0) then
write(*,5) count + 1
5 format ("An error occurred reading line ", i6)
else readif
write(*,2) maxval, line_max !輸出MAX、MIN及所在列數
2 format ("The largest number is ", i5, " which is on the line ", i3)

write(*,3) minval, line_min
3 format ("The smallest number is ", i5, " which is on the line ", i3)
end if readif

else openif

write (*,4) status
4 format ("Error opening file: IOSTAT = ", i6) !若讀到的檔名非指定，輸出Error opening file: IOSTAT =''

end if openif

close (unit=2) ! 結束將資料夾關閉

stop

	end program HOMEWORK9

