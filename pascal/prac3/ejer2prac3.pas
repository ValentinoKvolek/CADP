program ejer2_prac3;
type
    fechas = record {mi vector con las fechas}
        dia:integer;
        mes:integer;
        anio:integer;
    end;
procedure Leer( var f:fechas; var cantidad_mesesverano:integer ; var cantidad_primerosdias: integer); {modulo para leer mi vector}
begin
    writeln('Escribir el año del casamiento');
    readln(f.anio);
    if(f.anio <> 2020) then begin
        writeln('Escribir el mes del casamiento');
        readln(f.mes);
        if( (f.mes >=1 ) and (f.mes <=3) ) then
            cantidad_mesesverano:=cantidad_mesesverano + 1;
        writeln('Escribir el dia del casamiento');
        readln(f.dia);
        if ((f.dia>=1) and (f.dia <= 10)) then 
            cantidad_primerosdias:= cantidad_primerosdias +1;
    end;
end;
var 
fecha_casamientos:fechas;
cantidad_mesesverano: integer;
cantidad_primerosdias: integer;
begin
    cantidad_mesesverano:=0;
    cantidad_primerosdias:=0;
    Leer(fecha_casamientos, cantidad_mesesverano, cantidad_primerosdias);
    while(fecha_casamientos.anio <> 2020) do begin
          Leer(fecha_casamientos, cantidad_mesesverano, cantidad_primerosdias);
    end;
    writeln('la cantidad de casamiento que hubo en los meses de verano fueron : ', cantidad_mesesverano);
    writeln('la cantidad de casamientos en los primero 10 dias de cada mes fueron: ', cantidad_primerosdias);
end.






