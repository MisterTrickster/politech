program f1605
  implicit none

  integer k, calls, fibo

  print *, 'f1605'
  print *, 'tedeev a.a.'
  print *, '5030302/20005'
  print *, 'date'
  print *

  open(1,file='input.txt')
  read(1,*) k
  calls=fibo(k)
  print *, calls

end program f1605

recursive function fibo(k) result(f)
  implicit none
  integer k, f, counter, a, b
  save counter
  counter=counter+1

  if (k>2) then
    if (mod(k,2)==1) then
      a=fibo((k-1)/2)
      b=fibo((k-1)/2+1)
      f=a**2-b**2
    else
      a=fibo(k/2+1)
      b=fibo(k/2-1)
      f=a**2+b**2
    end if
  end if
  f=counter
end function fibo