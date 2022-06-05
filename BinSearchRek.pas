Program Binary_recursive;

Type Larik = array [1..100] of integer;

Procedure BinarySearch(A:larik; X,low,high:Integer);
var
	mid: integer;
begin
	if high>=low then
	begin
		mid := (low + high) div 2;
		if(A[mid] = X) then 
			writeln(' X ditemukan pada indeks ke ', mid)
		else if(A[mid] > X) then
			BinarySearch(A,X,low,mid-1)
		else
			BinarySearch(A,X,mid+1,high)
	end
	else
		writeln(' X tidak ditemukan');
end;

var 
    A: larik;
    i,n,x : integer;
	
begin
    write(' N = '); readln(n);
	for i :=1 to n do
	begin
		A[i]:= i*10;
		writeln(' A[',i:2,'] = ',A[i]);
	end;
	write(' X = '); readln(x);
	BinarySearch(A,x,1,n);
	readln;
end.