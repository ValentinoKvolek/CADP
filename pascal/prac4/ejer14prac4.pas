program ejer14prac4;
const
  dimf = 1000;
type
    participante = record
        pais:string;
        codigo:integer;
        nombreProyecto:string;
        rol:integer;
        canthoras:integer;
    end;

    vector = array[1..dimf] to participante;


procedure cargarVector(var v:vector; var diml:integer);
i:integer;
valor:integer;
begin
i:=1;
diml:=0;
    writeln('codigo');
    read(v[i].codigo);
    while (v[i].codigo <> -1) do begin
        writeln('pais');
        readln(v[i].pais);
        writeln('nombre proyecto');
        readln(v[i].nombreProyecto);
        writeln('rol');
        readln(v[i].rol);
         writeln('cantidad de horas');
        readln(v[i].canthoras);
        i:= i +1;
        diml:=diml + 1;
        writeln('codigo');
        readln(v[i].pais);
    end;
end;

{a. El monto total invertido en desarrolladores con residencia en Argentina.}

procedure montoArgentina(v:vector; diml:integer);
var
montototal:=integer;
i:integer;
begin
    for i:=1 to diml do begin
        if(v[i].pais = 'argentia') then begin
            if(v[i].rol = 1) then
                montototal:= montototal +(35.20 * v[i].canthoras);
            if(v[i].rol = 2) then
                montototal:= montototal +(27.45 * v[i].canthoras);
            if(v[i].rol = 3) then
                montototal:= montototal +(31.03 * v[i].canthoras);
            if(v[i].rol = 4) then
              montototal:= montototal +(44.28 * v[i].canthoras);
            if(v[i].rol = 5) then
              montototal:= montototal +(39.87 * v[i].canthoras);
        end;
    end;
    writeln('el monto total de horas es de :', montototal);
end;

{b. La cantidad total de horas trabajadas por Administradores de bases de datos.}

procedure canthorasadminitradores(v:vector; diml: integer);
var
i:integer;
canthorastotales:integer;
begin
canthorastotales:=0;
    for i:=1 to diml do begin
        if( v[i].tipo = 3)  then 
            canthorastotales:= canthorastotales + v[i].canthoras;
    end;
    writeln('la cantidad de horas trabajadas por administradores de base de datos es de :', canthorastotales);
end;

{c. El código del proyecto con menor monto invertido}

procedure codemenosmonto(v:vector; diml:integer);
var
i:integer;
mincode:integer;
min:integer;
begin
min:=999;
    for i:=1 to diml do begin
        if(v[i].)
    end;
end;