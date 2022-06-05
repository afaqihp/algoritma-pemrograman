Program BubbleSort;

type larik=array[1..20] of integer;

    procedure Tukar(var a,b:integer);
    var c:integer;
    begin
        c:=a; a:=b; b:=c;
    end;
    
    procedure Bubble1(var data:larik;n:integer); //Ascending
    var i,j:integer;
    begin
        for i:=1 to n-1 do
            for j:=n downto i+1 do
                if (data[j])<(data[j-1]) then tukar(data[j],data[j-1]);
    end;
	
	procedure Bubble2(var data:larik;n:integer); //Descending
    var i,j:integer;
    begin
        for i:=1 to n-1 do
            for j:=1 to n-i do
                if (data[n-j+1])>(data[n-j]) then tukar(data[n-j+1],data[n-j]);
    end;

var a:larik;
    n,i:integer;
    
begin
    n:=5;
    a[1]:=603; a[2]:=127; a[3]:=450; a[4]:=281; a[5]:=69;
    writeln('Data sebelum diurutkan');
    for i:=1 to n do write(a[i]:4);
    writeln; writeln;
    
    Bubble1(a,n);
    writeln('Data sesudah diurutkan (Ascending)');
    for i:=1 to n do write(a[i]:4);
    writeln; writeln;
	
	Bubble2(a,n);
    writeln('Data sesudah diurutkan (Descending)');
    for i:=1 to n do write(a[i]:4);
    writeln; writeln;
	readln;
end.
