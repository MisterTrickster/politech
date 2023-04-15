program F1107

implicit none

!Некие переменные
integer::io, value, k, result

!Выводим шапку программы
  write(*,*) "F1107"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) value, k
close(io) 

!Проверим, есть ли число k в value

!Проверим первую цифру в числе
if(value/1000 == k) then
  write(*,*) "Yes"
else
  value = mod(value, 1000)
  !write(*,*) "value=", value
  
  !Проверяем вторую цифру в числе
  if(value/100==k) then
    write(*,*) "Yes"
  else
    value = mod(value, 100)
    !write(*,*) "value=", value

    !Проверяем третью цифру в числе
    if(value/10 ==k) then
      write(*,*) "Yes"
    else
      value = mod(value, 10)
      !write(*,*) "value=", value

      !Проверяем четвертую цифру в числе
      if(value==k) then
        write(*,*) "Yes"
      else
        write(*,*) "No"

      end if
    end if
  end if
end if


end program F1107