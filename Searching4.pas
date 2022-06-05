program Pencarian;
Type Larik = array [1..100] of integer;

Function SequentialSearch(A:Larik; N:integer; X:integer) : integer;
Var
	i:integer;
Begin
	i:=1;
	while (i<N) and (A[i] <> X) do 
		i:= i + 1;
	if (A[i] <> X) then 
		SequentialSearch:=0
	else 
		SequentialSearch:=i;
End;

Function Sequentialsearch2(A:Larik; N:integer; X:integer): integer;
Var
	i:integer;
Begin
	i:=1;
	while (i<N) and (A[i] < X) do 
		i:= i + 1;
	if (A[i] = X) then 
		Sequentialsearch2:=i
	else 
		Sequentialsearch2:=0;
End;

Function BinarySearch(A:larik; N: Integer; X:Integer): integer;
var
	low, mid, high: integer;
begin
	low := 1;
	high := N;
	while (low <= high) do
	begin
		mid := (low + high) div 2;
		writeln(' Ini nilai mid ',mid);
		if(A[mid] > X) then 
			high := mid - 1
		else if(A[mid] < X) then 
			low := mid + 1
		else break;
	end;
	
	if A[mid] = X then 
		BinarySearch:= mid {ditemukan} 
	else 
		BinarySearch := 0; {tidak ditemukan}
end;

var 
    A: larik;
    i,n,x : integer;
	
begin
    n:=10;
    x:=400;
    for i :=1 to n do 
		A[i]:= i*100;
    //writeln(SequentialSearch(A,n,x));
    //writeln(SequentialSearch2(A,n,x));
    writeln(BinarySearch(A,n,x));
	readln;
end.
