program test
implicit none


integer ::io, n, item, temp, i = 1
integer, allocatable :: a (:)

!Выводим шапку программы
  write(*,*) "F1206"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


open(newunit=io, file="input.txt", status="old", action="read")
  
 
  read(io, *) n !Вводим размер массива, n можно и вычислить
  allocate (a(n)) !Выделяем память для массива с размером n


  !Заполняем массив данными
  do while(i < n + 1)
    read(io, *) item
    a(i) = item
    i = i + 1
  end do

  
  !Переворачиваем массив
  do i = 1, n/2
    temp = a(i)
    a(i) = a(n - i + 1)
    a(n-i+1) = temp 
  end do

  
  !выводим сам массив
  do i = 1, n
    write(*,*) a(i)
  end do

  deallocate (a)                                      !Убираем массив, освобождаем память                             

close(io)

end program test