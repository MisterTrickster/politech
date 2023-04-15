program f1601
  implicit none

  integer a, b
  
  !Читаем
  open(1,file='input.txt')
  read(1,*) a, b
  close(1)

  !Записываем
  open(1, file='output.txt')
  write(1,*) 'f1601'
  write(1,*) 'tedeev a.aa'
  write(1,*) '5030302/20005'
  write(1,*) 'date'
  write(1,*)
  write(1,1) a+b
  close(1)
  1 format(i8)

end program f1601