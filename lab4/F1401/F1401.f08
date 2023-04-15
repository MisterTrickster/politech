program test
implicit none

integer::io

integer :: m, n, gcd, t

  print *, 'f1312'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) m, n
close(io)

write(*,*) m,n

do while (n > 0)

  if(m < n) then
    t = m
    m = n
    n = t
  end if

  t = m - n
  m = n
  n = t
end do

gcd = m

write(*,*) gcd

end program test