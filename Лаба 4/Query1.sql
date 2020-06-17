use [master]
Create table Customers
(CustomerID INT NOT NULL
, Name VARCHAR(50) NOT NULL
, DateOfBirth DATETIME NULL
, Adress VARCHAR(50) NOT NULL
, CONSTRAINT PK_Customers PRIMARY KEY(CustomerID));
GO

Create table Orders
(OrderID INT NOT NULL
, CustomerID INT NOT NULL
, OrderDate DATETIME NOT NULL
 CONSTRAINT PK_Orders PRIMARY KEY (OrderID));
 GO

Create table CustomerDetails
( CustomerID INT NOT NULL
, Adress VARCHAR(50) NOT NULL
, City VARCHAR(50) NOT NULL
, PostalCode INT NOT NULL
, DateOfBirth DATETIME NOT NULL
 CONSTRAINT FK_CustomerDetails_Customers FOREIGN KEY (CustomerID)
 REFERENCES Customers (CustomerID));
GO

CREATE TABLE Products
(ProductID INT NOT NULL
,ProductName VARCHAR (50) NOT NULL
,Size VARCHAR (5) NOT NULL
,Color VARCHAR (25) NOT NULL
CONSTRAINT PK_Products PRIMARY KEY (ProductID));
GO

Create table LineItems
( OrderID INT NOT NULL
, ProductID INT NOT NULL
, UnitPrice FLOAT NOT NULL
, Quantity INT NOT NULL
 CONSTRAINT PK_LineItems PRIMARY KEY (OrderID, ProductID));
GO

INSERT INTO Customers
VALUES (1,'Lynn',GETDATE(), 'Tsoflias')
INSERT INTO Customers
VALUES (2,'Amy',GETDATE(),'Alberts')
INSERT INTO Customers
VALUES (3,'Rachel',GETDATE(),'Valdez')
INSERT INTO Customers
VALUES (4,'Jae',GETDATE(),'Pak');
GO

INSERT INTO CustomerDetails
VALUES (1,'1970 Napa Ct', 'Seattle','91932', 06/02/1980)
INSERT INTO CustomerDetails
VALUES (2,'9833 Mt. Dias Blv', 'Chicago','97321', 08/08/1966)
INSERT INTO CustomerDetails
VALUES (3,'7484 Roundtree Drive','Boston', '94109', 12/14/1967)
INSERT INTO CustomerDetails
VALUES (4,'9539 Glenside Dr','Seattle','91977', 05/23/1956);
GO

INSERT INTO Orders
VALUES (106,1, GETDATE());


--INSERT INTO Products
--VALUES (11,'Full-Finger Gloves, M', 'M', 'Black')
--INSERT INTO Products
--VALUES (22,'Full-Finger Gloves, L', 'L', 'Black')
--INSERT INTO Products
--VALUES (33,'Classic Vest, S', 'S', 'Yellow')
--INSERT INTO Products
--VALUES (44,'Classic Vest, M', 'M', 'Yellow');
--GO

INSERT INTO LineItems
VALUES (101,11,15.00,1)
INSERT INTO LineItems
VALUES (101,44,30.00,1)
INSERT INTO LineItems
VALUES (102,44,30.00,1)
INSERT INTO LineItems
VALUES (103,33,30.00,2)
INSERT INTO LineItems
VALUES (103,22,15.00,1)
INSERT INTO LineItems
VALUES (104,44,30.00,1)
INSERT INTO LineItems
VALUES (104,11,15.00,1)
INSERT INTO LineItems
VALUES (104,33,30.00,1);
GO