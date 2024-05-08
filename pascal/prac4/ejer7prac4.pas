program ej7;

const
    dimF = 9;

type
    vectorType = array[0..diMF] of integer;

procedure calcularOcurrencias(digito: integer; var vectorDigitosOcurrencias: vectorType);
var
    proc_digito: integer;
    primerCero: boolean;
begin
    primerCero:= true;
    proc_digito:= digito;

    while ((proc_digito > 0) or primerCero) do begin {proc_digito = 98345 -> [proc_digito mod 10] = 5}
        vectorDigitosOcurrencias[proc_digito mod 10]:= vectorDigitosOcurrencias[proc_digito mod 10] + 1;
        proc_digito:= proc_digito div 10;
        
        if (proc_digito = 0) then primerCero:= false;
    end;
end;

procedure cargarVector(var vectorDigitosOcurrencias: vectorType);
var
    i, inp: integer;
begin
    for i:= 0 to dimF do
        vectorDigitosOcurrencias[i]:= 0;

    writeln('Ingrese su número: (-1 para cancelar)');
    readln(inp);
    while (inp <> -1) do begin
        calcularOcurrencias(inp, vectorDigitosOcurrencias);

        writeln('Ingrese su número: (-1 para cancelar)');
        readln(inp);
    end;
end;

{informe:
a.
La cantidad de ocurrencias de cada dígito procesado.
b.
El dígito más leído.
c.
Los dígitos que no tuvieron ocurrencias.}

procedure informar(vector: vectorType);
var
    i, maxNum, maxConc, noInformadosDimL: integer;
    noInformados: vectorType;
begin
    maxNum:= -1;
    maxConc:= -32768;
    noInformadosDimL:= -1;

    for i:=0 to dimF do begin

        if (vector[i] = 0) then begin
            noInformados[noInformadosDimL + 1]:= i;
            noInformadosDimL:= noInformadosDimL + 1;
        end else begin
            writeln('Número ', i, ': ', vector[i], ' concurrencias.');
        
            if (vector[i] > maxConc) then begin
                maxNum:= i;
                maxConc:= vector[i];
            end;
        end;
    end;

    writeln('El número con más concurrencias fue ', maxNum, ' con ', maxConc, ' concurrencias.');
    
    if (noInformadosDimL > -1) then begin
        writeln('mientras que los siguientes números nunca fueron ingresados:');
        for i:=0 to noInformadosDimL do
            writeln(noInformados[i]);
    end;
end;

var
    vectorDigitosOcurrencias: vectorType;
begin
    cargarVector(vectorDigitosOcurrencias);
    informar(vectorDigitosOcurrencias);
end.

    
    

