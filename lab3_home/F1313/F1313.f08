program test
implicit none

integer::io
integer n, k, arr(150), i, j, f

  print *, 'f1313'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *


open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) n, k
close(io)

arr(1) = 1
f = 0

do i = 2, k
  arr(i) = 2*arr(i-1)
end do

do i = k + 1, n
  do j = i-1, i-k, -1
    f = f+arr(j)
  end do

  arr(i) = f
  f = 0
end do

write(*,*) arr(n)


end program test