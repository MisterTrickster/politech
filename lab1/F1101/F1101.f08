program test

implicit none

!Некие переменные

integer::io
integer::f_value, s_value

!Выводим шапку программы
  write(*,*) "F1101"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) f_value, s_value
close(io)

!Выведем сумму прочитанных чисел
  write(*,*) f_value + s_value

end program test