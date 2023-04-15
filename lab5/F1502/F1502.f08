program test
implicit none

integer::io, k, t, s, m, med

  print *, 'f1501'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

open(newunit=io, file="input.txt", status="old", action="read")
  read(io,*) k, t, m
close(io)

s = med(k, t, m)
write(*,"(i9)") s

end program test

function med(k, t, m)
  implicit none
  integer k, t, m, med
  if (k>t .and. t>m) then
    med=t
  elseif (t>k .and. k>m) then
    med=k
  elseif (k>m .and. m>t) then
    med=m
  elseif (t>m .and. m>k) then
    med=m
  elseif (m>k .and. k>t) then
    med=k
  else
    med=t
  endif
end