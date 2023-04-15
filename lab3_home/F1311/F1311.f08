program test
implicit none


integer ::io, n, max_item, counter = 0, i = 1
integer, allocatable :: a (:)

!Выводим шапку программы
  write(*,*) "F1311"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


open(newunit=io, file="input.txt", status="old", action="read")
  
 
  read(io, *) n !Вводим размер массива, n можно и вычислить
  allocate (a(n)) !Выделяем память для массива с размером n

  read(io, *) a
close(io)

!Найдем максимальный элемент
max_item = a(1)
do i = 1, n
  if(a(i)>= max_item) then
    max_item = a(i)
  end if
end do

!посчитаем кол-во максимального элемента
do i = 1, n
  if(a(i) == max_item) then
    counter = counter + 1
  end if
end do

write(*,*) counter


deallocate (a) !Убираем массив, освобождая память

end program test