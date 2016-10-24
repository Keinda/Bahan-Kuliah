program JualanLemonadeYay;
var
	harga, n, jumlah, pil, time, stokgula, stoklemon, stokgelas, stoksedotan : integer;
	
procedure Sale(n : integer, var harga, jumlah : integer);
var
	duit : integer;
begin
	harga := 5000;
	jumlah := n*harga;
	writeln("Anda harus bayar sebesar Rp ",jumlah);
	write("Anda akan bayar dengan uang : Rp ");
	readln(duit);
	duit := 100000 - duit;
	writeln("Kembaliannya adalah Rp ",duit);
end.

procedure Production(n, harga, stokgula, stoklemon, stokgelas, stoksedotan : integer);
var
	gula, lemon, gelas, sedotan, restockgula, restocklemon, restockgelas, restocksedotan : integer;
begin
	{Deklarasi Awal}
	gula := 0;
	lemon := 0;
	gelas := 0;
	sedotan := 0;
	{Data Bahan / Produksi}
	gula := 1*n;
	lemon := 1*n;
	gelas := 1*n;
	sedotan := 1*n;
	{Store Checking}
	stokgula := stokgula - gula;
	stoklemon := stoklemon - lemon;
	stokgelas := stokgelas - gelas;
	stoksedotan := stoksedotan - sedotan;
	{Harga Restocking}
	if stokgula < 1 then
	begin
		restockgula := 10000;
		stokgula := stokgula + 100;
	end;
	if stoklemon < 1 then
	begin
		restocklemon := 20000*20;
		stoklemon := stoklemon + 100;
	end;
	if stokgelas < 1 then
	begin
		restockgelas := 10000*5;
		stokgelas := stokgelas + 100;
	end;
	if stoksedotan < 1 then
	begin
		restocksedotan := 10000;
		stoksedotan := stoksedotan + 100;
	end;
	writeln("Stok Bahan Lemonade Yay");
	writeln("Stok Gula : ", stokgula);
	writeln("Stok Lemon : ", stoklemon);
	writeln("Stok Gelas : ", stokgelas);
	writeln("Stok Sedotan : ", stoksedotan);
	writeln("Pengeluaran Restock = Rp ", restocklemon+restockgula+restockgelas+restocksedotan);
end.


procedure Payroll(time : integer);
var
	perjam, gaji : integer;
begin
	perjam := 20000;
	gaji := time*perjam;
	writeln("Hari ini anda mendapatkan pendapatan sebesar Rp ",gaji); {Pay Employee}
end.

{ALGORITMA UTAMA}
begin
		writeln("Stok hari ini :");
		write("Stok Gula : "); readln(stokgula);
		write("Stok Lemon : "); readln(stoklemon);
		write("Stok Gelas : "); readln(stokgelas);
		write("Stok Sedotan : "); readln(stoksedotan);
		time := 0;
		writeln("------------------------------------------------");
		writeln("------------JUALAN LEMONADE YAY-----------------");
		writeln("------------------------------------------------");
		writeln("1. Ada yang mau beli nih...");
		writeln("2. Udahan ah jualannya...");
		write("Pilih yang mana : ");
		readln(pil);
		if pil = 1 then
		begin
			while pil<>2 do
			begin
				write("Mau beli berapa? ");
				readln(n);
				Sale(n, harga, jumlah);
				time := time + 1;
				Production(n, harga, stokgula, stoklemon, stokgelas, stoksedotan);
				writeln("-------------------------------------------------");
				writeln("Menu Awal :");
				writeln("1. Ada yang mau beli nih...");
				writeln("2. Udahan ah jualannya...");
				write("Pilih yang mana : ");
				readln(pil);
			end;
		end;
		Payroll(time);
end.
	
