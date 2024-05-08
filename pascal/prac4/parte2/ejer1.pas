function buscar  (v:vector, diml:integer, valorn:integer): boolean;
var 
i:integer;
esta:boolean;
begin
i:= i+1;
esta:false
    while(v[i]<> valorn) and (i<=diml) do
    begin
        if(v[i] = valorn) then esta:=true
        else
            i:= i +1;
    end;
    buscar:=esta;
end;