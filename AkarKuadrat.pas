Program HitungAkar2;
uses crt;
var
        a,b,c,D:integer;
        akar1,akar2,akarkembar:real;
begin
        clrscr;
        writeln('====Menghitung Akar Persamaan Kuadrat====');
        write('Input nilai a = '); readln(a);
        write('Input nilai b = '); readln(b);
        write('Input nilai c = '); readln(c);
        D := b*b-4*a*c;
        writeln('==========================================');
        if D>0 then
        begin
                akar1 := (-b+sqrt(D))/(2*a);
                akar2 := (-b-sqrt(D))/(2*a);
                writeln('Nilai akar1 = ',akar1:0:2);
                writeln('Nilai akar2 = ',akar2:0:2);
        end
        else if D=0 then
        begin
                akarkembar := (-b/(2*a));
                writeln('Akar 1 = Akar 2 = ',akarkembar:0:2);
        end
        else writeln('Fungsi kuadrat memiliki akar imajiner');
        readln;
end.
