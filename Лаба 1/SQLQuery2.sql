Select * from Sales.SalesOrderHeader;
go

select SalesOrderID, OrderDate, SalesPersonID
from Sales.SalesOrderHeader;
go

select SalesOrderID, OrderDate, SalesPersonID
from Sales.SalesOrderHeader
where SalesPersonID = 279;
go

select SalesOrderID, OrderDate, SalesPersonID
from Sales.SalesOrderHeader
where SalesPersonID = 279 or SalesPersonID = 282;
go

select SalesOrderID, OrderDate, SalesPersonID
from Sales.SalesOrderHeader
where SalesOrderID between 57000 and 58000;
go

select SalesOrderID, OrderDate
from Sales.SalesOrderHeader
where SalesPersonID = 279 and YEAR(OrderDate) = 2014;
go