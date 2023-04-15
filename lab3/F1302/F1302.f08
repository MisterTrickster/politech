program test
implicit none

integer::io, number, k

!Выводим шапку программы
  write(*,*) "F1302"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) number
close(io)

!1. в первые 10 позиций строки 
1 format(i10)
!2. в первые 6 позиций строки 
2 format(i6)
!3. в первые 8 позиций строки 
3 format(i8)
!4. в первые 4 позиций строки 
4 format(i4)
!5. в первые 12 позиций строки
5 format(i12) 


write(*,1)number
write(*,2)number
write(*,3)number
write(*,4)number
write(*,5)number

end program test