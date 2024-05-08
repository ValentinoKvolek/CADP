program Registros;
type
    str20 = string[20];
    alumno = record
        codigo : integer;
        nombre : str20;
        promedio : real;
    end;
procedure leer(var alu : alumno);
begin
    writeln('Ingrese el código del alumno');
    read(alu.codigo);
    if (alu.codigo <> 0) then begin
        writeln('Ingrese el nombre del alumno'); 
        readln(alu.nombre);
        writeln('Ingrese el promedio del alumno'); 
        readln(alu.promedio);
    end;
end;
function Promedio(alum:alumno):string;
var
mayor:real;
actual:string;
begin
mayor:= -1;
    if(alum.promedio>= mayor) then begin
        mayor:= alum.promedio;
        actual:=alum.nombre;
    end;
    Promedio:=actual;
end;

{ declaración de variables del programa principal }
var
a : alumno;
cant: integer;
nombremayor:string;
{ cuerpo del programa principal }
begin
cant:=0;
    leer(a);
    while (a.codigo <> 0) do begin
        cant:= cant + 1;
        leer(a);
        Promedio(a)
    end;
    nombremayor:=Promedio(a);
    writeln('la cantidad de alumnos reales son:', cant);
    writeln('el alumno con mayor promedio se llama', nombremayor);
end.