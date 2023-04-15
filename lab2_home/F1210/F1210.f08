program test
implicit none

integer i,j,k

!Выводим шапку программы
  write(*,*) "F1210"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

do i = 1, 9
  do j = 0, 9
    do k = 0,9
      if (i /= j .and. i /= k .and. j /=k ) then
        write(*,*) 100*i + 10*j + k
      end if
    end do
  end do
end do


end program test