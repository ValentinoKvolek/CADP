program ejer3_prac3;
type    
    datos_escuelas = record
        CUE:integer;
        nombre_establecimiento:string;
        cant_docentes:integer;
        cant_alumnos:integer;
        localidad:string;
    end;
procedure leer (var d:datos_escuelas);
begin
    writeln('cue');
    readln(d.CUE);
    writeln('nombre colegio');
    readln(d.nombre_establecimiento);
    writeln('docentes');
    readln(d.cant_docentes);
    writeln('alumnos');
    readln(d.cant_alumnos);
    writeln('localidad');
    readln(d.localidad);
end;

function relacion_unesco(d:datos_escuelas):boolean;
begin
   relacion_unesco:=((d.cant_docentes/d.cant_alumnos) >= 1/23.435);
end;
        
procedure cant_laplata(d:datos_escuelas; var cant_esc_laplata_relacion_unesco_true: integer);
begin
    if (d.localidad = 'la plata') then begin
        if(relacion_unesco(d)) then
            cant_esc_laplata_relacion_unesco_true:= cant_esc_laplata_relacion_unesco_true + 1;
    end;
end;

procedure esc_mayor_unesco(d:datos_escuelas; var mayor1:real; var mayor2:real; var CUE_mayor1:integer; var CUE_mayor2:integer; var nombre_mayor1:string; var nombre_mayor2:string);
var
resultado:real;
begin
resultado:=(d.cant_docentes/d.cant_alumnos);
    if ( resultado>= mayor1 ) then begin
        mayor2:=mayor1;
        CUE_mayor2:=CUE_mayor1; 
        nombre_mayor2:= nombre_mayor1;
        mayor1:=resultado;
        CUE_mayor1:=d.CUE;
        nombre_mayor1:= d.nombre_establecimiento;
    end
    else
    if (resultado >= mayor2) then begin
        mayor2:=resultado;
        CUE_mayor2:=d.CUE;
        nombre_mayor2:= d.nombre_establecimiento;
    end;
end;

var
    datos: datos_escuelas;
    i:integer;
    cant_esc_laplata_relacion_unesco_true:integer;
    mayor1,mayor2:real;
    CUE_mayor1,CUE_mayor2:integer; {punto c}
    nombre_mayor2,nombre_mayor1:string; {punto c}
begin
mayor1:= -100;
mayor2:= -100;
cant_esc_laplata_relacion_unesco_true:= 0;
CUE_mayor1:= 0;
CUE_mayor2:= 0;
    for i:=1 to 4 do begin
        leer(datos);
        relacion_unesco(datos);
        cant_laplata(datos,cant_esc_laplata_relacion_unesco_true);
        esc_mayor_unesco(datos,mayor1,mayor2,CUE_mayor1, CUE_mayor2, nombre_mayor1, nombre_mayor2);
    end;
    writeln('la cantidad de escuela de escuela de la plata fue de : ', cant_esc_laplata_relacion_unesco_true);
    writeln('la escuela con la relacion mas alta fue :', CUE_mayor1 , nombre_mayor1);
    writeln('la segunda escuela con la relacion mas alta fue :', CUE_mayor2 , nombre_mayor2);
end.


