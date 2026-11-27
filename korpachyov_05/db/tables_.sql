use db_Storage;
go

CREATE TABLE Users(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	u_fullname NVARCHAR(100),
	u_role NVARCHAR(100),
	u_login NVARCHAR(100),
	u_pswd NVARCHAR(100),
);

CREATE TABLE PickupPoints(
	id INT NOT NULL PRIMARY KEY,
	addr NVARCHAR(100)
);

CREATE TABLE Consumers(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	c_name NVARCHAR(100)
);
CREATE TABLE Producers(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	p_name NVARCHAR(100)
);
CREATE TABLE Categories(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name_category NVARCHAR(100)
);

CREATE TABLE StatusCode(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	name_status NVARCHAR(100)
);


CREATE TABLE Products(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	p_name NVARCHAR(100) NOT NULL,
	u NVARCHAR(100) NOT NULL,
	pr INT,
	cons_id INT REFERENCES Consumers(id),
	prod INT REFERENCES Producers(id),
	category INT REFERENCES Categories(id),
	sale INT NOT NULL,
	counter_ INT NOT NULL,
	descr_ NVARCHAR(100) NULL,
	guar_ NVARCHAR(100) ,
	photo_ NVARCHAR(100)
);


CREATE TABLE Orders (
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	ord_date DATE NOT NULL,
	transit_date DATE NOT NULL,
	pvz_id INT NOT NULL REFERENCES PickupPoints(id),
	users_id INT NOT NULL REFERENCES Users(id),
	code_poluch INT NOT NULL,
	code_ INT NOT NULL REFERENCES StatusCode(id),
);

CREATE TABLE OrdersStructure(
	id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	id_product INT NOT NULL REFERENCES Products(id),
	id_order INT NOT NULL REFERENCES Orders(id),
	quantity INT NOT NULL
);

