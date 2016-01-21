SELECT CategoryName, ProductName AS CheapestProduct, UnitPrice AS MinCategoryPrice
FROM Products NATURAL JOIN Categories ORDER BY UnitPrice LIMIT 1;