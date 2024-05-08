program ejer5prac4_2;
const 
    dimf=500;
type

    monotributo set of A..F;

    oficiales set of 1 .. 2400;

    fecha = record;
        mes:integer;
        año:integer;
    end;

    cliente = record;
        fechaFirmaContrato:fecha;
        categoriaMonotributo:monotributo;
        codigoCiudad:integer;
        montoMensual:real;
    end;

    vector = array [1..dimf] of cliente;

procedure cargarVector(var v:vector;);
var
i:integer;
begin
    for i:=1 to dimf do begin
        writeln('ingresar año de firma :');
        readln(v.fechaFirmaContrato.año);
        writeln('ingresar mes de la firma :');
        readln(v.fechaFirmaContrato.mes);
        writeln('ingrese categoria monotributo');
        readln(v.categoriaMonotributo);
        writeln('ingrese el codigo de ciudad');
        readln(codigoCiudad);
        writeln('ingrese monto mensual');
        readln(montoMensual);
    end;    
end;

{a. Cantidad de contratos por cada mes y cada año, y año en que se firmó la mayor cantidad de contratos}

procedure cantidadContratos(v:vector);
var
i:integer;
mesActual:integer;
añoActual:integer;
cantaños:integer;
begin
cantaños:=0;
añoActual:= v[1].fechaFirmaContrato.año;
mesActual:= v[1].fechaFirmaContrato.mes;
    for i:=1 to dimf do begin
        while(v[i].fechaFirmaContrato.año = añoActual) then begin
            cantaños:=cantaños +1;
        end;
        writeln('la cantidad de contratos en el año', añoActual,'es de : ', cantaños);
        cantaños:=0;
        añoActual:= v[1].fechaFirmaContrato.año;
        
        

            
    end;
end;

