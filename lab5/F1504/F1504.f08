program f1504
  implicit none

  integer n, m, i, j
  real arr(50,50)

  open(1, file = "input.txt")

  print *, 'f1504'
  print *, 'tedeev a.a.'
  print *, '5030302/2005'
  print *, 'date'
  print *

  read (1,*) n,m
  
  do i = 1,n
    read (1,*) (arr(i,j), j = 1,m)
  end do

  call pr_arr (n, m, arr)
end program f1504

subroutine pr_arr (n, m, arr)
  implicit none

  integer n, m, i, j
  real arr(50,50)

  print 5, n, m
  5 format(2i5)

  do i = 1,n
    print 10, (arr(i,j), j = 1,m)
  end do
  10 format(60f8.2)

  return
end subroutine pr_arr
