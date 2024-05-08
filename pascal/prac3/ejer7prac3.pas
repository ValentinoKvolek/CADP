program ejer7prac3;


type
    centros = record
        universidad:string;
        nombre:string;
        cantInvestigadores:integer;
        cantBecarios:integer;
    end;


procedure Leer (var datos:centros);
begin
    writeln('ingrese nombre de la universidad:');
    readln(datos.universidad);
    writeln('ingrese el nombre del centro de investigacion:');
    readln(datos.nombre);
    writeln('ingrese cantidad de investigadores');
    readln(datos.cantInvestigadores);
    writeln('ingrese la cantidad de becarios');
    readln(datos.cantBecarios);
end;


procedure MasInvestigadores(datos:centros; var mayor:integer; var mayorUniverdad:string);
begin
    if(datos.cantInvestigadores > mayor) then begin
        mayor:=datos.cantInvestigadores;
        mayorUniverdad:=datos.universidad;
    end;
end;


procedure MenorBecarios(datos:centros; var menor1:integer; var menor2:integer; var centro1:string; var centro2:string);
begin
    if(datos.cantBecarios < menor1) then begin
        menor2:=menor1;
        centro2:=centro1;
        menor1:=datos.cantBecarios;
        centro1:=datos.nombre;
    end
    else if (datos.cantBecarios < menor2) then  begin
        menor2:=datos.cantBecarios;
        centro2:=datos.nombre;
    end;
end;


var
datos:centros;
CantCentros:integer;
mayor:integer;{inciso b}
mayorUniverdad:string;{inciso b}
menor1,menor2:integer;{inciso c}
centro1,centro2:string;{inciso c}
actual:string;
begin
menor1:=999;
CantCentros:=0;
menor2:=999;
mayor:=-1;
Leer(datos);
actual:=datos.universidad;
    while(datos.cantInvestigadores <> 0) do begin
        while(datos.universidad = actual)and (datos.cantInvestigadores <> 0) do begin
            CantCentros:=CantCentros +1;
            MasInvestigadores(datos,mayor,mayorUniverdad);
            MenorBecarios(datos,menor1,menor2,centro1,centro2);
            Leer(datos);
        end;
        writeln('la cantidad de centros de: ', actual ,' es de : ', CantCentros);
        actual:=datos.universidad;
        CantCentros:=0;
    end;
    writeln('la universidad con mayor cantidad de investigadores es :  ', mayorUniverdad);
    writeln('el centro con menor cantidad de becarios es de :  ', centro1);
    writeln('el segundo centro con menor cantidad de becarios es de :  ', centro2);
end.
