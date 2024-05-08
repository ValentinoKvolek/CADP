{7. a. Realizar un módulo que reciba como parámetro un número entero y retorne la cantidad de dígitos que
posee y la suma de los mismos.
b. Utilizando el módulo anterior, realizar un programa que lea una secuencia de números e imprima la
cantidad total de dígitos leídos. La lectura finaliza al leer un número cuyos dígitos suman exactamente 10,
el cual debe procesarse}
program ejer7prac2_2;
procedure Cantdigitos (numero:integer; var sumadigactual:integer; var cantdig:integer; var sumadig:integer);
var
dig:integer;
contadordeactual:integer;
begin
contadordeactual:=0;
dig:=0;
    while(numero <> 0) do begin
        dig:= numero mod 10;
        cantdig:= (cantdig + 1);
        sumadig:=(sumadig + dig);
        contadordeactual:=(contadordeactual + dig);
        numero := numero DIV 10;
    end;
    sumadigactual:=contadordeactual;
    contadordeactual:=0;
end;
var
sumadig:integer;
num:integer;
cantdig:integer;
sumadigactual:integer;
begin
cantdig:=0;
sumadig:=0;
sumadigactual:=0;
    repeat
        writeln('ingrese un numero entero ');
        readln(num);
        Cantdigitos(num,sumadigactual,cantdig,sumadig);
    until (sumadigactual = 10);
    writeln('la cantidad de digitos leidos es de :', cantdig);
    writeln('la suma de esos digitos fue de : ', sumadig);
end.
