program f1503
implicit none

  integer arr(120), n, res, rev, i

  print *, 'f1402'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, '05.03.23'
  print *

  open (1,file = 'input.txt')
  read(1,*) n
  read(1,*) (arr(i),i=1,n)
  res = rev(n,arr)
  write(*,10)(arr(i),i=1,n)
  10 format(200i3)

end program f1503

function rev(n,arr)
implicit none
  integer arr(120), n, rev, res, i, tmp

  do i=1,n/2
      tmp=arr(i)
      arr(i)=arr(n-i+1)
      arr(n-i+1)=tmp
  end do
  rev=n
return
end function rev
