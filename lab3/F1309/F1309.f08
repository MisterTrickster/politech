program test
implicit none

character(len=11)::word
word = "INFORMATIKA"

!Выводим шапку программы
  write(*,*) "F1309"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""


write(*,"(a20)") word
write(*,*) word
write(*,"(a6)") word

!Выведите построчно с одним(1-им), 2-мя, 3, 11, 10, 9, 4, 5, 6, 8 и 7 символами
write(*,"(a1)") word
write(*,"(a2)") word
write(*,"(a3)") word
write(*,"(a11)") word
write(*,"(a10)") word
write(*,"(a9)") word
write(*,"(a4)") word
write(*,"(a5)") word
write(*,"(a6)") word
write(*,"(a8)") word
write(*,"(a7)") word

!Выведите эту переменную построчно с одним(1-им), 2-мя, и т.д. символами
write(*,"(a1)") word
write(*,"(a2)") word
write(*,"(a3)") word
write(*,"(a4)") word
write(*,"(a5)") word
write(*,"(a6)") word
write(*,"(a7)") word
write(*,"(a8)") word
write(*,"(a9)") word
write(*,"(a10)") word
write(*,"(a11)") word


write(*,*)


end program test