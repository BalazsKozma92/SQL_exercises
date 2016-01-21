SELECT SUBSTRING(ShippedDate,1,4) AS YearOfIncome, CategoryName, ProductName FROM Orders JOIN Categories JOIN Products 
ORDER BY ProductName, YearOfIncome


