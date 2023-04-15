program F1104

implicit none

!Некие переменные
integer::io, a, b, c


!Выводим шапку программы
  write(*,*) "F1104"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) a, b, c
close(io) 

!Проверим возможность существование треугольника
if(a+b>c .AND. a+c>b .AND. a+c>b .AND. b+c>a) then
  write(*,*) "Yes"
else
  write(*,*) "No"
end if


end program F1104