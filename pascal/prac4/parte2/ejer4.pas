program ejer4prac4_2;
const
    dimf = 1000;
type
    alumno = record;
        nroAlumno:integer;
        nombreAlumno:string;
        apellidoAlumno:string;
        cantAsistencias:integer;
    end;

    vector = array [1..dimf] of alumno;

{a. Un módulo que retorne la posición del alumno con un nro de alumno recibido por parámetro. El
alumno seguro existe}


procedure BuscarAlumno(var v:vector; var diml:integer; numeroAlumno:integer);\
var 
pos:integer;
begin   
pos:=1;
    while (v[pos].nroAlumno <> numeroAlumno ) then {el alumno seguro existe, por esa razon no controlo la dimension.}
        pos:=pos+1;
    writeln('la posicion del alumno con numero : ', numeroAlumno,' es : ', pos);
end;


{b. Un módulo que reciba un alumno y lo inserte en el vector.}

procedure insertar (var v:vector; var diml:integer; alum:alumno);
begin
    if((diml + 1)<=dimf) then begin
    diml:=diml +1;
    v[diml].nroAlumno := alum.numeroAlumno;
    v[diml].nombreAlumno:= alum.nombreAlumno;
    v[diml].apellidoAlumno:= alum.apellidoAlumno;
    v[diml].cantAsistencias:= alum.cantAsistencias;
    end;
end;


{c. Un módulo que reciba la posición de un alumno dentro del vector y lo elimine.}


procedure eliminarAlumno(var:vector; var diml:integer; pos:integer);
var
i:integer;
begin
    if (pos>=1) and (pos<=dimf) then begin
        for i:= pos to (diml -1 ) do
            v[i]:= v[i+1];
        diml:=diml-1;
    end;
end;


{d. Un módulo que reciba un nro de alumno y elimine dicho alumno del vector}


procedure eliminarNroAlumno (var v:vector; var diml:integer; numeroRecibido:integer);
var
i:integer;
begin
pos:=1;
    while(vector[pos].nroAlumno <> numeroRecibido) do 
        pos:=pos +1;
    
    for i:=pos to (diml - 1) then
        v[i]:=v[i+1];

    diml:=diml-1;

end;

{e. Un módulo que elimine del vector todos los alumnos con cantidad de asistencias en 0}


procedure eliminarCant0(var v:vector; var diml:integer);
var
i:integer;
i2:integer;
pos:integer;
begin
    for i:=1 to diml do begin
        if(v[i].cantAsistencias = 0 ) then begin
            pos:=i;
            for i2:=pos to (diml-1) do 
                v[i]:=a[i+1];
            diml:=diml-1;
        end;
    end;
end;

var
v:vector;
diml:integer;
numeroalumno:integer;
alum:alumno;
pos:integer;
numalumnoeliminar:integer;
begin
    writeln('ingrese el numero de alumno que quiere buscar: ');
    readln(numeroalumno);
    BuscarAlumno(v,diml,numeroalumno);
    writeln('ingrese el numero de alumno que quiere agregar: ');
    readln(alum.numeroAlumno);
    writeln('ingrese el nombre del alumno que quiere agregar: ');
    readln(alum.nombreAlumno);
    writeln('ingrese el apellido del alumno que quiere agregar: ');
    readln(alum.apellidoAlumno);
    writeln('ingrese lascantidad de asistencias del  alumno que quiere agregar: ');
    readln(alum.cantAsistencias);
    insertar(v,diml,alum);
    writeln('ingresesar pos a eliminar');
    readln(pos);
    eliminarAlumno(v,diml,pos);
    writeln('numero de alumno');
    readln(numalumnoeliminar);
    eliminarNroAlumno(v,diml,numalumnoeliminar);
    eliminarCant0(v,diml);
end;