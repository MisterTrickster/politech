program f1604
  implicit none

  integer n, m, k, t
  real a(50,50), b(50,50)
  common /forsum/ a, b

  open(1,file='input.txt')
  read(1,*) n, m
  do k=1,n
    read(1,*)(a(k,t),t=1,m)
  end do

  do k=1,n
    read(1,*)(b(k,t), t=1,m)
  end do
  close(1)

  call mtrxsum(n, m)
  open(1,file='output.txt')
  write(1,*) 'f1604'
  write(1,*) 'tedeev a.a.'
  write(1,*) '5030302/20005'
  write(1,*) 'date'
  write(1,*)
  write(1,1) n
  write(1,1) m

  do k=1,n
    write(1,2) (a(k,t), t=1,m)
  end do

  write(1,*)
  call output(n, m)
  1 format(i3)
  2 format(100f7.2)
end



subroutine mtrxsum(n, m)
  implicit none
  integer i, j, n, m
  real a(50,50), b(50,50), anew(50,50)
  common /forsum/ a, b
  common anew
  do i=1,n
    do j=1,m
      anew(i,j)=a(i,j)+b(i,j)
    end do
  end do
end subroutine mtrxsum

subroutine output(n, m)
  implicit none
  integer t, n, m, k
  real anew(50,50)
  common anew

  do k=1,n
    write(1,1) (anew(k,t),t=1,m)
  end do
  1 format(100f7.2)

end subroutine output