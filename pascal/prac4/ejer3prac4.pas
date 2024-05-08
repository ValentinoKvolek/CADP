
program ejer3prac4;

type
    dimF:=10;
    vector = array [1..dimF] of integer;

procedure Imprimir(v:vector);
i:integer;
dimL:=0;
begin
    for i:=1 to dimf do begin
        writeln(v[i]);
    end;
end;
procedure Imprimir2(v:vector);
i:integer;
dimL:=0;
begin
    for i:=1 downto dimf do begin
        writeln(v[i]);
    end;
end;
procedure Imprimir3(v:vector);
i:integer;
dimL:=0;
begin
    for i:=1 downto (dimF div 2) do begin
        writeln(v[i]);
    end;
    for i:=1 to (dimF div 2 + 1) do begin
        writeln(v[i]);
    end;
end;
procedure Imprimir3(var v:vector, var x:integer; var y:integer);
i:integer;
dimL:=0;
begin
    if (x > y) then begin
        for x to y do begin
            writeln(v[i]);
        end;
    end
    else if (x<y) then begin
        for x downto y do begin
        writeln(v[i]);
        end;
    end;
end;

