program F1110

!Program gt;
!var a,b,c,x,y:real;
!begin
!readln(a,b,c,x,y);
!if((a<x)and(b<y))or((a<y)and(b<x))or ((a<x)and(c<y))or((a<y)and(c<x))or ((b<x)and(c<y))or((b<y)and(c<x)) then writeln('yes')else writeln('no');
!end.




implicit none

!Некие переменные
  !Известные данные
    integer::io, a, b, c, d, x, y
  !Данные в котороые мы определим значения
    integer::middle_v



!Выводим шапку программы
  write(*,*) "F1110"
  write(*,*) "Tedeev A.A."
  write(*,*) "5030302/20005"
  write(*,*) "25.03.2023"
  write(*,*) ""

!Откроем файл, прочтием два числа из него
open(newunit=io, file="input.txt", status="old", action="read")
  read(io, *) a, b, c, x, y
close(io)

!Определим поместится ли кирпич в отверстие
if (a<=x .and. b<=y .or. a<=y .and. b<=x .or. a<=x .and. c<=y .or. a<=y .and. c<=x .or. b<=x .and. c<=y .or. b<=y .and. c<=x) then 
  write(*,*) "yes"
else
  write(*,*) "no"
end if


end program F1110