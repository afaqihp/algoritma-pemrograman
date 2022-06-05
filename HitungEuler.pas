Program AlgoritmaEuler;
uses    crt;
var
        i,n:integer;
        e,eku,perf:real;
begin
        clrscr;
        write(' Jumlah suku = '); readln(n);
        e:=exp(1);
        eku:=1;
        perf:=1;
        for i:=1 to n-1 do
        begin
                perf:=perf/i;
                eku:=eku+perf;
        end;
        writeln(' Exp(1)= ',e:0:20);
        writeln(' Eku   = ',eku:0:20);
        writeln(' Selisih = ',e-eku:0:20);
        readln;


end.