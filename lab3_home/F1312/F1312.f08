program f1312
  implicit none

  integer n1,fir(2000),n2,sec(2000),n3,thi(2000),a,b,n,i,f

  print *, 'f1312'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

  open(1,file = 'input.txt')
  read(1,*) n1
  read(1,*) (fir(a), a=1,n1)
  read(1,*) n2
  read(1,*) (sec(b), b=1,n2)
  
  if (n1>=n2) then
    n=n1
  else
    n=n2
  end if

  do i=1,n
    thi(n+1-i)=fir(n+1-i)+sec(n+1-i)
  enddo

  do f=1,n
    do i=2,n
      if (thi(i)>9) then
        thi(i-1)=thi(i-1)+1
        thi(i)=thi(i)-10
      else
        n=n
      end if
    end do
  end do
        
  if (thi(1)>9) then
    do i=1,n
      thi(n+2-i)=thi(n+1-i)
    enddo
  
    thi(1)=1
    thi(2)=thi(2)-10
    print *, n+1
    print *, (thi(i), i=1,n+1)
  else
    n=n
    print *, n
    print *, (thi(i), i=1,n)
  endif

end program f1312