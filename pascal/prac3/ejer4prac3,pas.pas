program ejer4prac3;
type
    datos_lineas = record
        num_telefono:integer;
        cant_minutos_consumidos:integer;
        cant_mb_consumindos:integer;
    end;
    datos_clientes = record
        codigo:integer;
        cant_lineas:integer; 
    end;
procedure leer_lineas(var l:datos_lineas);
begin
    writeln('ingrese numero de telofono');
    readln(l.num_telefono);
    writeln('ingrese la cantidad de minutos consumidos');
    readln(l.cant_minutos_consumidos);
    writeln('ingrese la cantidad de mbs consumidos');
    readln(l.cant_mb_consumindos);
end;
procedure leer_clientes(var d:datos_clientes);
begin
    writeln('ingrese su cantidad de lineas');
    readln(d.cant_lineas);
    writeln('ingrese su codigo');
    readln(d.codigo);

end;
procedure cantidades_totales(datos:datos_clientes; linea:datos_lineas);
var
total_min:real;
total_mb:real;
i: integer;
begin
total_min:=0;
total_mb:=0;
    leer_clientes(datos);
    for i:=1 to (datos.cant_lineas) do begin
        leer_lineas(linea);
        total_mb:= total_mb + linea.cant_mb_consumindos;
        total_min:=total_min + linea.cant_minutos_consumidos
    end;
    total_mb:=(total_mb *1.35);
    total_min:=(total_min*3.40);
    writeln('mb totales: ', total_mb :2:2);
    writeln('min totales :', total_min :2:2);
end;
var
datos:datos_clientes;
linea:datos_lineas;
begin
    cantidades_totales(datos,linea);
end.

