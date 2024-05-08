program ejer12prac2_2;
function RendimientoEconomico(canthectareas:integer; tipo:integer; precio:real):real;
var
rendimiento: real;
begin
rendimiento:=0;
    if(tipo = 1) then begin
        rendimiento:= ((canthectareas * 6) * precio);
    end
    else if (tipo = 2) then begin
        rendimiento:= ((canthectareas * 2.6) * precio);
    end
    else rendimiento:= ((canthectareas * 1.4) * precio);
RendimientoEconomico:=rendimiento;
end;
var
CantidaddeHectareas,TipodeZona:integer;
Precio:real; localidad:string;
begin
    repeat
        writeln('ingrese la cantidad de hectareas: ');
        readln(CantidaddeHectareas);
        writeln('ingrese el tipo de zona : ');
        readln(TipodeZona);
        writeln('ingrese el precio de la soja: ');
        readln(precio);
        writeln('el rendimiento economico promedio es de : ', RendimientoEconomico(CantidaddeHectareas,TipodeZona,precio):2:2);
    until (localidad = 'saladillo' and CantidaddeHectarea = 900);

end.

