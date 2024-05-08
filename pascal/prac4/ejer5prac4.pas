program ejer5prac4;
const 
    dimF=5;
type
    vector = array [1..dimF] of integer;

procedure CargarVector(var v:vector; var dimL:integer);
var
valor:integer;
begin
dimL:=0;
    writeln('ingresar un valor: ');
    read(valor);

    while((dimL<dimF)and(valor<>0)) do 
    begin
         dimL:= dimL + 1;
        v[dimL]:=valor;
        writeln('ingresar un valor: ');
        read(valor);
    end;
end;

procedure posicionMaximaAndMin (v:vector; dimL:integer; var max:integer; var posMax:integer;  var min:integer; var posMin:integer);
var
i:integer;
begin
    for i:=1 to dimL do begin
        if (v[i]>max) then begin
            max:= v[i];
            posMax:= i;
        end;
        if (v[i]<min) then  begin
            min:= v[i];
            posMin:= i;
        end;
    end;
end;


procedure Intercambio(v:vector; var max:integer; var posMax:integer; var min:integer; var posMin:integer);
begin
    v[posMax]:= v[posMin];
    v[posMin]:= v[posMax];
    writeln('El elemento maximo   ' , max ,'que se encontraba en la posicion   ' , posMax ,  'fue intercambiado con el elemento minimo   ' , min , ' que se encontraba en la posicion   ', posMin);
end;

var
v:vector;
dimL:integer;
min,posMin,posMax,max:integer;
begin
min:=999;
posMin:=0;
posMax:=0;
max:=-999;
    CargarVector(v, dimL);
    posicionMaximaAndMin(v,dimL,max,posMax,min,posMin);
    Intercambio(v,max,posMax,min,posMin);
end.





