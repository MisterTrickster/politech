program test
implicit none

integer i
integer::arr_1(5), arr_2(5)

!Выводим шапку программы
  write(*,*) "F1210"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

arr_1 = [(i,i = 1, 5)]
arr_2 = [(i,i = 100, 500, 100)]

write (*, "(5i2)") arr_1
write (*, "(5i4)") arr_1
write (*, "(i1, i3, i2, i5, i4)") arr_1
write (*, "(i1,/, i3,/, i2,/, i5,/, i4,/)") arr_1
write (*, "(5i6)") arr_2
write (*, "(5i3)") arr_2



end program test