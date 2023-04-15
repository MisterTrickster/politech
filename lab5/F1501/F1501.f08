program test
implicit none

integer::io, k, t, s, sums

  print *, 'f1402'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, '05.03.23'
  print *

open(newunit=io, file="input.txt", status="old", action="read")
  read(io,*) k, t
close(io)

s = sums(k,t)
write(*,"(i8)") s

end program test

function sums(k,t)
  implicit none
  integer k, t, sums
  sums = k + t
end function sums