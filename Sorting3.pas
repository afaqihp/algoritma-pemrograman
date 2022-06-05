Program SelectionSort;

type larik=array[1..20] of integer;

    function CariIdxMin(data:larik;awal,akhir:integer):integer;
    var i,IMin:integer;
    begin
        IMin:=awal;
        for i:=awal+1 to akhir do
            if data[IMin]>data[i] then IMin:=i;
        CariIdxMin:=IMin;
    end;

    procedure Tukar(var a,b:integer);
    var c:integer;
    begin
        c:=a; a:=b; b:=c;
    end;
    
    procedure Selection1(var data:larik;n:integer);
    var i,IMin:integer;
    begin
        for i:=1 to n-1 do
        begin
            IMin:=CariIdxMin(data,i,n);
            Tukar(data[i],data[IMin]);
        end;
    end;
	
	 procedure Selection2(var data:larik;n:integer);
    var i,IMin:integer;
    begin
        for i:=1 to n-1 do
        begin
            IMin:=CariIdxMin(data,1,n-i+1);
            Tukar(data[n-i+1],data[IMin]);
        end;
    end;

var a:larik;
    n,i:integer;
    
begin
    n:=5;
    a[1]:=23; a[2]:=44; a[3]:=11; a[4]:=90; a[5]:=56;
    writeln('Data sebelum diurutkan');
    for i:=1 to n do write(a[i]:4);
    writeln;writeln;
    
    Selection1(a,n);
    writeln('Data sesudah diurutkan (Ascending)');
    for i:=1 to n do write(a[i]:4);
    writeln;writeln;
	
	Selection2(a,n);
    writeln('Data sesudah diurutkan (Descending)');
    for i:=1 to n do write(a[i]:4);
    writeln;writeln;
	readln;
end.
