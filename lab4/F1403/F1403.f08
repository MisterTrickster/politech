program test
implicit none

integer::io, line, col, i, j
real, allocatable :: matrix(:,:)

  print *, 'f1402'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

open(newunit=io, file="input.txt", status="old", action="read")
   
  !Записываем первое число
  read(io, *) line, col
  allocate (matrix(line, col)) !Выделяем память для массива с размером n

  write(*,*) line, col

  !считаем матрицу
  do i = 1, line
    read(io, *) (matrix(i,j), j=1,col)
  end do

close(io)

write(*,*) matrix

do i = 1, line
  write(*,2) (matrix(i,j), j = 1, col)
  2 format (60F8.2)
end do

deallocate (matrix)

end program test