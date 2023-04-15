program F1102

implicit none

!Некие переменные
integer::io, f_value, s_value

!Выводим шапку программы
  write(*,*) "F1102"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) f_value, s_value
close(io)

!Сравним числа
if ( f_value >= s_value ) then
  write(*,*) f_value
else
  write(*,*) s_value
end if

end program F1102