SELECT CategoryName, ProductName, QuantityPerUnit, UnitsInStock
FROM Products NATURAL JOIN Categories WHERE UnitsInStock > 0 ORDER BY CategoryName, ProductName