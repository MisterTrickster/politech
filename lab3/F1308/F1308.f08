program test
implicit none

integer::io
real number

!Выводим шапку программы
  write(*,*) "F1308"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) number
close(io)



write(*,*) number
write(*,"(E12.3)") number
write(*,"(E10.4)") number
write(*,"(E15.6)") number
write(*,"(E8.1)") number

end program test