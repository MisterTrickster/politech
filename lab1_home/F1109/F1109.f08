program F1109

implicit none

!Некие переменные
  !Известные данные
    integer::io, value, i = 0


!Выводим шапку программы
  write(*,*) "F1109"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) value
close(io)


!Создадим и будем считать, сколько цифр в числе
do
  if(value/10==0) then
    i = i + 1
    exit
  else
    value = value/10
    i = i+1
  end if
end do

write(*,*) i

end program F1109