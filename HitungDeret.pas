program hitung_deret;
uses crt;
var
        i,n,jumlah:integer;
begin
        clrscr;
        write('Masukkan angka = '); readln(n);
        i:=1;
        jumlah:=0;
        write('Jumlah = 1 ');
        while i<=n-1 do
        begin
                jumlah:=jumlah+i;
                i:=i+1;
                write(' + ',i);
        end;
        writeln;
        writeln('Jumlah deret = ',jumlah+n);
        readln;
end.

