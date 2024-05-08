{8. Realizar un programa modularizado que lea secuencia de números enteros. La lectura finaliza cuando
llega el número 123456, el cual no debe procesarse. Informar en pantalla para cada número la suma de sus
dígitos pares y la cantidad de dígitos impares que posee}
program ejer8prac2_2;
procedure pares_impares(num:integer);
var
dig:integer;
sumapar:integer;
impar:integer;
begin
sumapar:=0;
impar:=0;
    while (num <> 0) do begin
        dig:= num mod 10;
        if((dig mod 2)= 0) then begin
            sumapar := sumapar + dig;
        end
        else
            impar:= impar +1;
        num := num div 10;
    end;
    writeln('la suma de sus numero pares es de : ', sumapar);
    writeln('la cantidad de numero impares es de :', impar);
end;
var
num:longint;
begin
    writeln('ingrese un numero :');
    readln(num);
    while (num <> 123456) do begin
        pares_impares(num);
        writeln('ingrese un numero :');
        readln(num);
    end;
end.

