program ejer6prac3;


type
    stock = record
        marca:string;
        linea:string;
        cant_cores:integer;
        velocidadReloj:integer;
        nanometro:integer;
    end;


procedure Leer (var Hdatos:stock);
begin
    writeln('íngrese marca del procesado:');
    readln(datos.marca);
    writeln('ingrese la linea del procesador:');
    readln(datos.linea);
    writeln('ingrese la cantidad de cores:');
    readln(datos.cant_cores);
    writeln('ingrese la velocidad del reloj');
    readln(datos.velocidadReloj);
    writeln('ingrese el tamaño de los nanometro');
    readln(datos.nanometro);
end;


procedure CantProcesadores_2cores(datos:stock); 
var 
cumple: string;
begin
    if (datos.cant_cores > 2) and (datos.nanometro >=22) then
    begin
        writeln('la marca:  ',  datos.marca  , 'y linea: ', datos.linea , 'cuentan con mas de 2 cores con transistores de a lo sumo 22 nm');
    end;
end;


procedure MarcasMayores_14nm(datos:stock; var mayor1:integer; var mayor2:integer; var marcaMayor1:string; var marcaMayor2:string);
begin
    if (datos.nanometro > mayor1 ) then begin
        mayor2:=mayor1;
        marcaMayor2:=marcaMayor1;
        mayor1:=datos.nanometro;
        marcaMayor1:=datos.marca;
    end
    else if (datos.nanometro > mayor2) then 
    begin
            mayor2:=datos.nanometro;
            marcaMayor2:=datos.marca;
    end;
end;


procedure CantMulticore(datos:stock; var cantMulti:integer);
begin
    if((datos.marca = 'intel') or (datos.marca = 'AMD')) then 
    begin
        if(datos.velocidadReloj >= 2) then
            cantMulti:=cantMulti + 1;
    end;
end;


var 
mayor1,mayor2:integer;{inciso b}
marcaMayor1,marcaMayor2:string; {inciso b}
datos:stock;
cantMulti:integer;{inciso c}
begin
mayor1:=-1;
mayor2:=-1;
cantMulti:=0;
Leer(datos);
while(datos.cant_cores <> 0) do begin
    CantProcesadores_2cores(datos);
    MarcasMayores_14nm(datos,mayor1,mayor2,marcaMayor1,marcaMayor2);
    CantMulticore(datos,cantMulti);
    Leer(datos);
end;
writeln('la primer marca con mayor cantidad de procesadores con transistores de 14 nm: ', marcaMayor1);
writeln('la segunda marca con mayor cantidad de procesadores con transistores de 14nm: ', marcaMayor2);
end.
