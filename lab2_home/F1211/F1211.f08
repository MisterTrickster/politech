program f1211
  implicit none

  integer(16) n, m, i, q, a, b, s

  print *, 'f1211'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

  open(1,file = 'input.txt')
  read(1,*) n, m

  do i=n,m
    s=1
    b=0
    q=i
  
    do while (q>0)
      a=mod(q,2)
      b=b*10
      b=b+a
      q=(q-a)/2
    end do
    
    do while (b>0)
      a=mod(b,10)
      q=q+a*s
      s=s*2
      b=(b-a)/10
    end do
    print *, i, q
  end do

end program f1211