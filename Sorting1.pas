Program BubbleSort;

type larik=array[1..20] of integer;

    procedure Tukar(var a,b:integer);
    var c:integer;
    begin
        c:=a; a:=b; b:=c;
    end;
    
    procedure Bubble(var data:larik;n:integer);
    var i,j:integer;
    begin
        for i:=1 to n-1 do
            for j:=1 to n-i do
                if (data[n-j+1])<(data[n-j]) then tukar(data[n-j+1],data[n-j]);
    end;

var a:larik;
    n,i:integer;
    
begin
    n:=5;
    a[1]:=603; a[2]:=127; a[3]:=450; a[4]:=281; a[5]:=69;
    writeln('Data sebelum diurutkan');
    for i:=1 to n do write(a[i]:4);
    writeln;
    
    Bubble(a,n);
    writeln('Data sesudah diurutkan');
    for i:=1 to n do write(a[i]:4);
    writeln;
end.

