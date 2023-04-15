program F1204

implicit none

!Некие переменные
  !Известные данные
    integer::io, n, item, min_v, i = 0

!Выводим шапку программы
  write(*,*) "F1204"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


!open(newunit=io, file="input.txt", status="old", action="read")
!  read(io, *) value
!close(io)


!Открываем файл и будуем считывать с него данные
open(newunit=io, file="input.txt", status="old", action="read")
  
  read(io,*) n

  read(io,*) min_v

  do while(i < n - 1)

    read(io,*) item
    !write(*,*) i, item
    
    if(min_v > item) then
      min_v = item
    end if

    !Счетчик
    i = i + 1
  end do

close(io)

write(*,*) min_v


end program F1204