program f1603
  implicit none

  integer a, b, ios

  open(1,file='input.txt')
  read(1,*, iostat=ios) a, b

  if (ios/=0) then
    print *, 'f1603'
    print *, 'tedeev a.a.'
    print *, '5030302/20005'
    print *, 'date'
    print *,
    print *, "error end"
  else
    close(1)
    open(1, file='output.txt')
    write(1,*) 'f1603'
    write(1,*) 'tedeev a.a.'
    write(1,*) '5030302/20005'
    write(1,*) 'date'
    write(1,*)
    write(1,1) a+b
    close(1)
  end if
  1 format(i8)

end program f1603