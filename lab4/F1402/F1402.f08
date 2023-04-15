program f1402
  implicit none

  integer n, a(120), r(120), i, t

  print *, 'f1402'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, '05.03.23'
  print *

  open(1,file='input.txt')
  read(1,*) n
  read(1,*) (a(i),i=1,n)
  
  do i=2,n
    if (i==2) then
      r(2)=a(2)-a(1)
    else if (i==3) then
      r(3)=a(3)-a(1)
    else if (i==4) then
      r(4)=a(4)-a(3)+a(2)-a(1)
    else
      t=a(i)-a(i-1)
      if (r(i-1)>r(i-2) )then
        r(i)=r(i-2)+t
      else
        r(i)=r(i-1)+t
      end if
    end if
  end do

  print *, r(n)

end program f1402