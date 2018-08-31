!  HW12.f90 
!
!  FUNCTIONS:
!	HW12      - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: HW12
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

	program HW12

	implicit none

character(20)::filename    

integer,parameter::a=6,b=6            
               
integer::i,j,status       

real::x,y,z                 

real,dimension(6,6)::matrix   

real,dimension(6)::i_sum=0,j_sum=0 
     
write(*,*)"請輸入欲計算之檔案(預設為data.txt)"  

read(*,*)filename 

open(unit=10,file=filename,status='old',action="read",iostat=status)     

openif:if(status==0) then                                               
    
	read(10,*,iostat=status)matrix   
                                                      
    do i=1,a                
	do j=1,b
    
	  i_sum(i)=i_sum(i)+matrix(i,j)
    
	  end do
    
	end do
    
	do j=1,b               
    
	do i=1,a
    
	  j_sum(j)=j_sum(j)+matrix(i,j)
    
	end do 
    
	end do 
    
	do i=1,a               
    
	do j=1,b
    
	x=(i_sum(i)+j_sum(j))/12
    
	end do  
    
	end do  
    
	do i=1,a                 
    
	y=89.5+0.5*i
    
	write(*,200)y,i_sum(i)/6
    
	200 format(F4.1,'oW之平均溫度為',F6.3)
    
	end do  
    
	do j=1,b                 
    
	z=29.5+0.5*j
    
	write(*,150)z,j_sum(j)/6
    
	150 format(F4.1,'oN之溫度平均為',F6.3)
    
	end do  
    
	write(*,*)"溫度總平均為",x

    else
                                        
    write(*,*)"檔名錯誤"

end if openif   

    close(unit=10)           

pause

	end program HW12

