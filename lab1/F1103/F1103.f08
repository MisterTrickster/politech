program F1103

implicit none

!Некие переменные
  !Известные данные
    integer::io, a1, a2, a3
  !Данные в котороые мы определим значения
    integer::max_v, middle_v, min_v



!Выводим шапку программы
  write(*,*) "F1103"
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
  !определим максимальное и минимальное 
  if(a1 > a2) then
    max_v = a2
    min_v = a3
  else
    max_v = a3
    min_v = a2
  end if

else 
  if(a2>a1 .AND. a2<a3 .OR. a2<a1 .AND. a2>a3) then
    middle_v = a2
    if(a1>a2) then
      max_v = a1
      min_v = a3
    else 
      max_v = a3
      min_v = a1
    end if
  else 
    middle_v = a3
    if(a1>a3) then
      max_v = a1
      min_v = a2
    else 
      max_v = a2
      min_v = a1
    end if
  end if

end if


!Выводим итоговые значения
write (*,*) max_v, middle_v, min_v


end program F1103