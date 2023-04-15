program f1221
  implicit none

  integer m, a, b, h, q, d, n, p

  print *, 'f1221'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

  open(1,file = 'input.txt')
  read(1,*) m

  a=100
  h=0
  q=0
  d=0
  n=0
  p=0
  b=a-m
  
  do while (b>=50)
    b=b-50
    h=h+1
  end do
  
  do while (b>=25)
    b=b-25
    q=q+1
  end do
  
  do while (b>=10)
    b=b-10
    d=d+1
  end do
  
  do while (b>=5)
    b=b-5
    n=n+1
  end do
  
  do while (b>=1)
    b=b-1
    p=p+1
  end do
  
  print *, h+q+d+n+p
  print *, h, q, d, n, p

end program f1221