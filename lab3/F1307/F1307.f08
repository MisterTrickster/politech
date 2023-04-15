program test
implicit none

integer::io
real number

!Выводим шапку программы
  write(*,*) "F1210"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) number
close(io)


!1. способом - по умолчанию компилятора 
write(*,*) number
!2. в первые 8 позиций строки , с 2 знаками после десятичной точки
write(*,"(F8.2)") number
!3. в первые 12 позиций строки  , с 3 знаками после десятичной точки
write(*,"(F12.3)") number
!4. в первые 6 позиций строки , с 1 знаком после десятичной точки
write(*,"(F6.1)") number
!5. в первые 10 позиций строки , с 0 знаками после десятичной точки
write(*,"(F10.0)") number


end program test