{5. a. Realizar un módulo que reciba un par de números (numA,numB) y retorne si numB es el doble de
numA.
b. Utilizando el módulo realizado en el inciso a., realizar un programa que lea secuencias de pares de
números hasta encontrar el par (0,0), e informe la cantidad total de pares de números leídos y la cantidad
de pares en las que numB es el doble de numA.
Ejemplo: si se lee la siguiente secuencia: (1,2) (3,4) (9,3) (7,14) (0,0) el programa debe informar los
valores 4 (cantidad de pares leídos) y 2 (cantidad de pares en los que numB es el doble de numA).}

program ejer5prac2;
procedure numpar (numA, numB : integer; var totald:integer);
begin
    if (numB = numA * 2) then
    begin
        writeln('el numero b es el doble');
        totald:=totald + 1;
    end;
end;
var
num1,num2,totalnums: integer;
totaldobles: integer;
begin   
    num1:=0;
    num2:=0;
    totalnums:=0;
    totaldobles:=0;
    writeln('ingrese el numero a');
    readln(num1);
    writeln('ingrese el numero b');
    readln(num2);
    while(num1 <>0 ) and (num2<>0 ) do begin
        numpar(num1,num2,totaldobles);
        totalnums:= totalnums + 1;
        writeln('ingrese el numero a');
        readln(num1);
        writeln('ingrese el numero b');
        readln(num2);
    end;
    writeln('la cantidad total de pares de numeros ingresados son: ' , totalnums);
    writeln('la cantidad total de numeros b que son el doble que a: ' , totaldobles);
end.
