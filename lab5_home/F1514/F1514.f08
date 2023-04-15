program f1514
  implicit none

  integer n, fir(50), sec(50), thi(50), k, dig_sum, t, a, b
  
  print *, 'f1504'
  print *, 'tedeev a.a.'
  print *, '5030302/2005'
  print *, 'date'
  print *

  open(1,file='input.txt')
  read(1,*)n
  read(1,*)(fir(k),k=1,n)
  read(1,*)(sec(k),k=1,n)

  do k=1,n
    thi(k)=dig_sum(fir(k))-dig_sum(sec(k))
  end do

  print *, (thi(t),t=1,n)
  1 format(4i10)

end program f1514

integer function dig_sum(arr)
  implicit none
  integer arr, k, i
  dig_sum=arr

  do while (dig_sum>9)
    i=0
    do while (dig_sum>0)
      i=i+mod(dig_sum,10)
      dig_sum=(dig_sum-mod(dig_sum,10))/10
    end do
      dig_sum=i
  end do
endfunction dig_sum