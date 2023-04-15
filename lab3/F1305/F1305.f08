program test
implicit none


integer ::io, n, item, temp,m, i = 1
integer, allocatable :: a (:)

!Выводим шапку программы
  write(*,*) "F1210"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

open(newunit=io, file="input.txt", status="old", action="read")
  
 
  read(io, *) n !Вводим размер массива, n можно и вычислить
  allocate (a(n)) !Выделяем память для массива с размером n

  read(io, *) a
close(io)




!write(*,"(i4,$)") a

do i = 1, n
  write(*,"(i6,$)") a(i)
end do

write(*,*)

do i = 1, n

  write(*,"(i8,$)") a(i)
  
  
  if(mod(i,8)==0) then
    write(*,*)
  end if

end do



deallocate (a) !Убираем массив, освобождая память

end program test