program F1105

implicit none

!Некие переменные
integer::io, x1, y1, x2, y2


!Выводим шапку программы
  write(*,*) "F1105"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) x1, y1, x2, y2
close(io) 

!Определим может ли конь совершить такой ход
if(abs(x2-x1)==1 .and. abs(y2-y1)==2) then
  write(*,*) "Yes"
else if(abs(x2-x1)==2 .and. abs(y2-y1)==1) then
  write(*,*) "Yes"
else
  write(*,*) "No"
end if

end program F1105