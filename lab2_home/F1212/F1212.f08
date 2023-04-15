program test
implicit none

integer::io

integer num1, num2, i, num, digit, sum, count, flag

flag = 0

!Выводим шапку программы
  write(*,*) "F1212"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) num1, num2
close(io)

do i = num1, num2
  
  count = 0

  num = i;

  do while(num > 0) 
    count = count + 1
    num = num/10
  end do

  sum = 0

  num = i; 

  do while(num> 0)
    digit = mod(num, 10)
    sum = sum + digit**count
    num = num/10
  end do

  if(sum == i) then
    write(*,*) i
    flag = 1
  end if
end do



if(flag == 0) then
  write(*,*) "No solution"
end if


end program test
