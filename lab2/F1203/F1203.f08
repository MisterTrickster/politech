program F1203

implicit none

!Некие переменные
  !Известные данные
    integer::io, a, b, temp, i = 1

!Выводим шапку программы
  write(*,*) "F1203"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


!open(newunit=io, file="input.txt", status="old", action="read")
!  read(io, *) value
!close(io)


!Открываем файл и будуем считывать с него данные
open(newunit=io, file="input.txt", status="old", action="read")
  
  read(io, *) a
  !Чтобы хотя бы войти в цикл, не будет объявлять б, пусть там хранится всякий цифровой мусок, скорее всего они никогда не совпадут
  do    
    read(io, *) b
    i = i + 1

    if(a == b) then 
      exit
    end if

    a = b
  end do  

close(io)

write(*,*) i


end program F1203