program test
implicit none

integer::io

integer num1, num2, i1,i2,i3,i4,i5,i6, flag, value
flag = 0

!Выводим шапку программы
  write(*,*) "F1100"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) num1, num2
close(io)

do i1 = 0, 9

  do i2 = 0, 9
  
    do i3 = 0, 9

      do i4 = 0, 9

        do i5 = 0, 9

          do i6 = 0, 9
            value = i1*100000 +i2*10000 +i3*1000 +i4*100 +i5*10 +i6
            if(i1 + i2 + i3 == i4 + i5 + i6 .and. value >= num1 .and. value <= num2) then 
              flag = 1
              write(*,*) i1*100000+i2*10000+i3*1000+i4*100+i5*10+i6
            end if

          end do
        end do
      end do
    end do
  end do      
end do


if(flag == 0) then
  write(*,*) "No solution"
end if


end program test
