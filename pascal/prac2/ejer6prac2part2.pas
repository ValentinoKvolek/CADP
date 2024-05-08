{6. Realizar un programa modularizado que lea datos de 100 productos de una tienda de ropa. Para cada
producto debe leer el precio, código y tipo (pantalón, remera, camisa, medias, campera, etc.). Informar:
● Código de los dos productos más baratos.
● Código del producto de tipo “pantalón” más caro.
● Precio promedio.}

program ejer6prac2part2;
procedure Baratos(code:integer; valor:integer; var barato1: integer; var barato2: integer; var code1: integer; var code2:integer);
begin
    if(valor<=barato1) then begin
        barato2:= barato1;
        code2:=code1;
        barato1:=valor;
        code1:=code;
    end
    else if(valor<=barato2) then begin 
        barato2:=valor;
        code2:=code;
    end;
end;
procedure Mascaro(tipo:string; valor:integer; var caro1:integer; var caro2:integer; var tipo1: string; var tipo2:string);
begin
    if(valor>=caro1) then begin
        caro2:= caro1;
        tipo2:=tipo1;
        caro1:=valor;
        tipo1:=tipo;
    end
    else if(valor>=caro2) then begin 
        caro2:=valor;
        tipo2:=tipo;
    end;    
end;
function Promedio(preciototal:integer; canttotalproduc:integer):real;
var
resultado:real;
begin
    resultado:= (preciototal/canttotalproduc);
    Promedio:=resultado;
end;
var
precio,codigo,barato1,barato2,code1,code2:integer;
caro1,caro2:integer;
tipo,tipo1,tipo2:string;
preciototal, productos_totales:integer;
i:integer;
begin
barato1:=32000; caro1:=-32000;
barato2:=32000; caro2:=-32000;
preciototal:=0; productos_totales:=0;
for i:=1  to 4 do begin
    writeln('ingrese el tipo de producto: ');
    readln(tipo);
    writeln('ingrese el codigo del producto: ');
    readln(codigo);
    writeln('ingrese el precio del producto: '); {sum of all prices should not exceed 32767}
    readln(precio);
    Baratos(codigo,precio,barato1,barato2,code1,code2);
    Mascaro(tipo,precio,caro1,caro2,tipo1,tipo2);
    preciototal:=(preciototal + precio);
    productos_totales:=(productos_totales + 1);
end;
writeln('el codigo del producto mas barato fue:', code1, 'y el precio fue de :', barato1);
writeln('el codigo del segundo producto mas barato fue:', code2, 'y el precio fue de :', barato2);
writeln('el tipo del producto mas caro fue:', tipo1, 'y el precio fue de :', caro1);
writeln('el tipo del segundo producto mas caro fue:', tipo2, 'y el precio fue de :', caro2);
writeln('el promedio total de precios es de: ', Promedio(preciototal, productos_totales):2:2);
end.