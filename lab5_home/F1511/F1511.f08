program f1511
implicit none

  integer n, a(12000), i, m, t

  print *, 'f1504'
  print *, 'tedeev a.a.'
  print *, '5030302/2005'
  print *, 'date'
  print *

  open(1,file='input.txt')
  m=100000
  read(1,*)n
  read(1,*)(a(i),i=1,n)
  do i=1,n
    if (m>a(i)) then
      m=a(i)
    else
      m=m
    end if
  end do

  t=a(1)
  a(1)=m
  do i=2,n
    if (a(1)==a(i)) then
      a(i)=t
      exit
    else
      t=t
    end if
  end do
  print *, (a(i), i=1,n)

end program f1511