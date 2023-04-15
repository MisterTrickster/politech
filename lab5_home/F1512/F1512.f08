program f1512
implicit none

  integer n, arr(120), k

  print *, 'f1504'
  print *, 'tedeev a.a.'
  print *, '5030302/2005'
  print *, 'date'
  print *

  open(1,file='input.txt')
  read(1,*)n
  read(1,*)(arr(k),k=1,n)
  
  do k=1,n-1
    call obmen(n, arr, k)
  enddo
  
  print *, (arr(k), k=1,n)

  stop
end program f1512

subroutine obmen(n, arr, k)
  implicit none
  integer n, arr(120), k, m, i, t
  m=100000

  do i=k,n
    if (m>arr(i)) then
      m=arr(i)
    else
      m=m
    end if
  end do

  do i=k+1,n
    if (m==arr(i)) then
      t=arr(k)
      arr(k)=m
      arr(i)=t
      exit
    else
      m=m
    end if
  end do
end subroutine obmen