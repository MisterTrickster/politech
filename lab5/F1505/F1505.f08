program f1505
implicit none

  integer n, m, i, j, res, foo
  integer arr(50,50)

  print *, 'f1505'
  print *, 'tedeev a.a.'
  print *, '5030302/2005'
  print *, 'date'
  print *  

  open (1, file = 'input.txt')
  read (1,*) n, m
  do i = 1,n
    read (1,*) (arr(i,j), j = 1,m)
  end do

  call pr_arr(n, m, arr)

  res = foo(n, m, arr)

!  print *
  print 20, res
  20 format(i7)

stop
end program f1505

subroutine pr_arr (n, m, arr)
implicit none

  integer i, j, n, m
  integer arr(50,50)

return
end subroutine pr_arr

function foo(n, m, arr)
implicit none

  integer i, j, n, m, foo
  integer arr(50,50)

  do j = 2,m
    arr(1,j) = arr(1,j-1) + arr(1,j)
  end do

  do i = 2,n
    arr(i,1) = arr(i-1,1) + arr(i,1)
  end do

  do i =2,n
    do j = 2,m
      if (arr(i-1,j) < arr(i,j-1)) then
        arr(i,j) = arr(i,j) + arr(i-1,j)
      else
        arr(i,j) = arr(i,j) + arr(i,j-1)
      end if
    end do
  end do

  foo = arr(n,m)

return
end function foo