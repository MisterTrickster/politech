program test
implicit none

integer::io

integer num1, num2, num, len, value, a, b, c, d, n, flag
flag = 0

!Выводим шапку программы
  write(*,*) "F1224"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "date"
  write(*,*) ""

open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) num1, num2
close(io)

do num = num1, num2
  
  len = 0
  value = num
  
  n = 1
  do while (value/(10*n) > 0)
    !write(*,*) value/(10*n)
    len = len + 1
    n = n * 10
  end do

  !если число 3-ех значеное
  if(len == 2) then 
    a = mod(value, 10)
    value = value/10
    b = mod(value, 10)
    value = value/10
    c = value

    if(a-b /= 0 .and. a-b == b-c) then
      write(*,*) num
      flag = 1
    end if
  end if


  !если число 4-ех значное
  if(len == 3) then 
    a = mod(value, 10)
    value = value/10
    b = mod(value, 10)
    value = value/10
    c = mod(value, 10)
    value = value/10
    d = value

    if(a-b /= 0 .and. a-b == b-c .and. b-c == c-d) then
      write(*,*) num
      flag = 1
    end if

  end if


end do 


!write(*,*) len

if(flag == 0) then
  write(*,*) "No solution"
end if


end program test