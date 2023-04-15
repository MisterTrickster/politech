program test
implicit none

integer::io, number, l

!Выводим шапку программы
  write(*,*) "F1210"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) number
close(io)




write(*,"(i1)") number
write(*,"(i2)") number
write(*,"(i3)") number
write(*,"(i4)") number
write(*,"(i5)") number
write(*,"(i6)") number
write(*,"(i7)") number
write(*,"(i8)") number
write(*,"(i9)") number
write(*,"(i10)") number

end program test