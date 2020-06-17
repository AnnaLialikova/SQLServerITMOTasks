use [master]
DELETE FROM Customers 
WHERE CustomerID = 2;
GO

ALTER TABLE CustomerDetails
DROP CONSTRAINT FK_CustomerDetails_Customers;
GO

ALTER TABLE Orders
DROP CONSTRAINT FK_Orders_Customers;
GO

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID)
REFERENCES Customers (CustomerID) ON UPDATE CASCADE;
GO

DELETE FROM Customers 
WHERE CustomerID = 2;
GO

ALTER TABLE Orders
ADD CONSTRAINT CustomerID
DEFAULT 0 FOR CustomerID;
GO

INSERT INTO Customers
VALUES (0, 'Not Applicable', '12/12/1993','Not Applicable')
GO

ALTER TABLE Orders
DROP CONSTRAINT FK_Orders_Customers;

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID) 
REFERENCES Orders(CustomerID)
ON DELETE SET DEFAULT;

DELETE FROM Customers 
WHERE CustomerID = 2;
GO

SELECT * FROM Orders
WHERE OrderID = 101;
