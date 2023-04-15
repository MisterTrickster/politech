program F1106

implicit none

!Некие переменные
integer::io, x1, y1, x2, y2


!Выводим шапку программы
  write(*,*) "F1106"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) x1, y1, x2, y2
close(io) 

!Проверим одного ли цвета клетки
  if( mod(x1+y1, 2) == mod(x2+y2, 2)) then
    write(*,*) "Yes"
  else
    write(*,*) "No"
  end if

end program F1106