use db_Storage;
go

INSERT INTO Users (u_role, u_login, u_pswd) FROM #u u
SELECT DISTINCT u.r, u.fn, u.l, u.p

INSERT INTO PickupPoints (addr) from #pp
SEELCT DISTINCT pp.a

INSERT INTO Consumers (c_name) from #p
SEELCT DISTINCT p.cons

INSERT INTO Producers (p_name) from #p
SEELCT DISTINCT p.prod

INSERT INTO Categories (c_name) from #p
SEELCT DISTINCT p.c

INSERT INTO StatusCode (name_status) from #p
SEELCT DISTINCT p.s

INSERT INTO Products (p_name, u, )
