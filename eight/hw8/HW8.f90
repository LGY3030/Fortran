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

	REAL::x,s1=0,s2=0,a,d !宣告實數:總和、變數、平均值、標準差
INTEGER::n=0 !宣告整數起始值=0
INTEGER::status !宣告STATUS為實數

OPEN(UNIT=5, FILE='document.txt', STATUS='old', ACTION='READ', IOSTAT=status)!編號為20，開啟檔案document.txt，狀態為舊檔，執行動作為讀取，IOSTAT=status


IF(status==0)THEN !宣告條件
  
DO !進入迴圈
READ(5,*,IOSTAT=status)x
IF(status/=0)EXIT !終止迴圈
n=n+1
s1=s1+x
s2=s2+x**2
END DO !結束迴圈
    
IF(status>0)THEN !條件若讀取錯誤
WRITE(*,*)'ERROR: line', n+1 !輸出"錯誤"
ELSE !宣告其餘條件時
n=REAL(n) !將n變為實數
a=s1/n !計算平均值
WRITE(*,*)'mean=',a !輸出平均值
d=SQRT((n*s2-s1**2)/(n*(n-1))) !計算標準差
WRITE(*,*)'standard deviation=',d !輸出標準差
END IF !結束條件宣告

ELSE !宣告其餘條件
WRITE(*,*)'ERROR: Opening file' !輸出"開啟錯誤檔案"

END IF !結束條件宣告


CLOSE(UNIT=5) !關閉編碼為20的檔案

STOP


	end program HW8

