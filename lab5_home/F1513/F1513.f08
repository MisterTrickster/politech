program f1513
  implicit none

  integer n, arr(120), k, ind(120)

  print *, 'f1504'
  print *, 'tedeev a.a.'
  print *, '5030302/2005'
  print *, 'date'
  print *

  open(1,file='input.txt')
  read(1,*)n
  read(1,*)(arr(k),k=1,n)
  
  do k=1,n
    ind(k)=k
  end do
  
  do k=1,n
    call swap(n, arr, k, ind)
  end do
  print *, (ind(k), k=1,n)

end program f1513

subroutine swap(n, arr, k, ind)
  implicit none
  integer n, arr(120), k, ind(120), m, t, i, arrcomp(120)
  m=0
  do i=1,n
    if (m<arr(i)) then
      m=arr(i)
    else
      m=m
    end if
  end do

  do i=1,n
    if (m==arr(i)) then
      arr(i)=-1
      ind(k)=i
      !ind(i)=k
      exit
    else
      m=m
    end if
  end do
end subroutine swap