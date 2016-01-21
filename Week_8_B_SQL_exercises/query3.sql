-- SELECT ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry, OrderID, OrderDate, RequiredDate, ShippedDate, Freight FROM Orders,
-- SELECT CustomerID, CompanyName AS CustomerName, Address, City, Region, PostalCode, Country FROM Customers,
-- SELECT CONCAT(FirstName,' ',LastName) AS Salesperson FROM Employees,
-- SELECT CompanyName AS ShipperName FROM Shippers,
-- SELECT ProductID, ProductName FROM Products,
-- SELECT UnitPrice, Quantity, Discount, ((UnitPrice - Discount) * Quantity) AS Total FROM OrderDetails
-- ORDER BY CustomerID

SELECT ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry, OrderID, OrderDate, RequiredDate, ShippedDate, Freight, 
CustomerID, CompanyName AS CustomerName, Address, City, Region, PostalCode, Country,
CONCAT(FirstName,' ',LastName) AS Salesperson,
CompanyName AS ShipperName,
ProductID, ProductName,
UnitPrice, Quantity, Discount, ((UnitPrice - Discount) * Quantity) AS Total FROM Orders 
NATURAL JOIN Customers 
NATURAL JOIN Employees
NATURAL JOIN Shippers
NATURAL JOIN Products
NATURAL JOIN OrderDetails
ORDER BY CustomerID