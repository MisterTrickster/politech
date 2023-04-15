program test
implicit none

!Файл для чтения
  integer::value
  integer::io

!Выводим шапку программы
  write(*,*) "F1100"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


!откроем файл прочтитаем его и выведем из него число
  open(newunit=io, file="input.txt", status="old", action="read")
    read(io, *) value
  close(io)

!выведем значение, которое мы прочтитали из файла
  write(*,*) value

end program test