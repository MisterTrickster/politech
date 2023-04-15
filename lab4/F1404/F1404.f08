program test
implicit none

integer::io, line, col, i, j
integer, allocatable :: matrix(:,:)

  print *, 'f1404'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

open(newunit=io, file="input.txt", status="old", action="read")
   
  !Записываем первое число
  read(io, *) line, col
  allocate (matrix(line, col)) !Выделяем память для массива с размером n

  !write(*,*) line, col

  !считаем матрицу
  do i = 1, line
    read(io, *) (matrix(i,j), j=1,col)
  end do
close(io)


do i = 2, line
  matrix(i,1) = matrix(i,1) + matrix(i-1,1)
end do

do j = 2, col
  matrix(1,j) = matrix(1,j) + matrix(1,j-1)
end do

do i = 2, line
  do j = 2, col
    matrix(i,j) = min(matrix(i-1,j) + matrix(i,j), matrix(i,j-1) + matrix(i,j))
  end do
end do

write(*,*) matrix(line, col)


deallocate (matrix)

end program test