program F1108

implicit none

!Некие переменные
  !Известные данные
    integer::io, a1, a2, a3
  !Данные в котороые мы определим значения
    integer::middle_v



!Выводим шапку программы
  write(*,*) "F1108"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) a1, a2, a3
close(io)

!Найдем среднее число
if(a1 > a2 .AND. a1 < a3 .OR. a1 < a2 .AND. a1 > a3) then
  middle_v = a1
else 
  if(a2>a1 .AND. a2<a3 .OR. a2<a1 .AND. a2>a3) then
    middle_v = a2
  else 
    middle_v = a3
  end if
end if

write(*,*) middle_v

end program F1108