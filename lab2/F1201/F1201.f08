program F1201

implicit none

!Некие переменные
  !Известные данные
    integer::io, value, i

!Выводим шапку программы
  write(*,*) "F1201"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) value
close(io)

!Исключим 0 и 1 и отрицательные числа
if(value <= 0) then
  write(*,*) "No"
else
  !Проверим для остальных чисел
  do while(mod(value,2) == 0)
    value = value/2 
  end do

  if(value == 1) then
    write(*,*) "Yes"
  else 
    write(*,*) "No"
  end if
end if

end program F1201