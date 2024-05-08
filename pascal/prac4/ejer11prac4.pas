program prac11ejer4;
const
    dimf = 200;
type    
    fotos = record
        tituloDeFoto:string;
        autorFoto:string;
        cantMg:integer;
        cantClick:integer;
        cantComentarios:integer;
    end;

    vector = array [1..dimf] of fotos;

procedure cargarVector(var v:vector);
i:integer;
begin
    for i:=1 to dimf do begin
        writeln('íngrese titulo de la foto : ');
        readln(v[i].tituloDeFoto);
        writeln('íngrese autor de la foto : ');
        readln(v[i].autorFoto);
        writeln('íngrese la cantidad de me gustas  : ');
        readln(v[i].cantMg);
        writeln('íngrese la cantidad de clicks : ');
        readln(v[i].cantClick);
        writeln('íngrese la cantidad de comentarios : ');
        readln(v[i].cantComentarios);
    end;
end;

{a. Título de la foto más vista (la que posee mayor cantidad de clics)}

procedure fotoConMasVisitas(v:vector);
var
i:integer;
max:integer;
titulomayor:string;
begin
max:= -999;
    for i:=1 to dimf do begin
        if(v[i].cantClick > max) then begin
            max:=v[i].cantClick;
            titulomayor:=v[i].tituloDeFoto;
        end;
    end;
     writeln('el titulo de las fotos con mas vistas es: ', titulomayor);
end;

{b. Cantidad total de Me gusta recibidas a las fotos cuyo autor es el fotógrafo “Art Vandelay”}

function cantTotalMg(v:vector):integer;
var
i:integer;
totalMg:integer;
begin
totalMg:=0;
    for i:=1 to dimf do begin
        if (v[i].autorFoto = 'Art Vandelay') then 
            totalMg:= totalMg + v[i].cantMg;
    end;
    cantTotalMg:totalMg;
end;

{c. Cantidad de comentarios recibidos para cada una de las fotos publicadas en esa página.}

procedure cantComentariosRecibidos(v:vector);
var
i:integer;
cantidadtotal:integer;
begin
cantidadtotal:=1;
    for i:=1 to dimf do 
        writeln('la cantidad de comentarios recibidos para la foto: ', v[i].tituloDeFoto, 'fueron: ', v[i].cantComentarios);
    
end;

var
v:vector;
begin
    cargarVector(v);
    fotoConMasVisitas(v);
    writeln('la Cantidad total de Me gusta recibidas a las fotos cuyo autor es el fotógrafo “Art Vandelay” fuero de : ', cantTotalMg);
    cantComentariosRecibidos(v);
end.
