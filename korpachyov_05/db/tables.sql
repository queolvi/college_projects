use master;
create database db_Storage;
go
use db_Storage;
go

CREATE TABLE #o(
	id INT,
	a_1 NVARCHAR(100),
	sku_1 NVARCHAR(100),
	a_2 NVARCHAR(100),
	sku_2 NVARCHAR(100),
	a_3 NVARCHAR(100),
	sku_3 NVARCHAR(100),
	do DATE,
	dt DATE,
	p INT,
	fn NVARCHAR(100),
	c INT,
	s NVARCHAR(100)
);
CREATE TABLE #pp (
	id INT,
	a NVARCHAR(100)
);
CREATE TABLE #p (
	id_art NVARCHAR(100),
	n NVARCHAR(100),
	u NVARCHAR(100),
	pr INT,
	cons NVARCHAR(100),
	prod NVARCHAR(100),
	c NVARCHAR(100),
	s NVARCHAR(100),
	c_ INT,
	dn NVARCHAR(100),
	ge NVARCHAR(100),
	ph NVARCHAR(100)
);
CREATE TABLE #u (
	r NVARCHAR(100),
	fn NVARCHAR(100),
	l NVARCHAR(100),
	p NVARCHAR(100),
);

go
BULK INSERT #o FROM 'C:\Users\Student\Desktop\Êîðïà÷¸â_05\data\orders.csv' 
WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=';',
	CODEPAGE=1251
)
go
BULK INSERT #pp FROM 'C:\Users\Student\Desktop\Êîðïà÷¸â_05\data\pickup_points.csv' 
WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=';',
	CODEPAGE=1251
)
go
BULK INSERT #u FROM 'C:\Users\Student\Desktop\Êîðïà÷¸â_05\data\products.csv' 
WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=';',
	CODEPAGE=1251
)
go
BULK INSERT #u FROM 'C:\Users\Student\Desktop\Êîðïà÷¸â_05\data\users.csv' 
WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=';',
	CODEPAGE=1251
)

