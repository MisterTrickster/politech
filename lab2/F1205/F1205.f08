program test
implicit none


integer ::io, n, item, min_v, i = 1
integer, allocatable :: a (:)


!Выводим шапку программы
  write(*,*) "F1205"
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


  !Сбрасываем счетчик
  i = 1
  
  !Минимум, как первый элемент массива
  min_v = a(i)


  !Выполняем действия с массивом
  do while(i < n +1)
    item = a(i)

    !read(io,*) item
    !write(*,*) i, item
    
    if(min_v > item) then
      min_v = item
    end if

    !Счетчик
    i = i + 1
  end do  


  !write(*,*) a 
  write(*,*) min_v
    
  deallocate (a)                                      !Убираем массив, освобождаем память                             

close(io)

end program test