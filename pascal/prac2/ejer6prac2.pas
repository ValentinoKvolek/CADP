program prac2ejer6;
procedure Modulo1 ();
var
    input, max: integer;
begin
    max:=-1;
    input:=0;
    writeln('Íngrese un numero entero: ');
    readln(input);
    while (input >=0) do
    begin
        if(input > max) and (input mod 2 = 0) then
            max:=input;
        writeln('Íngrese otro numero entero: ');
        readln(input);
    end;
    writeln('El numero par mas alto fue : ', max); 
end;
begin
    Modulo1;
end.