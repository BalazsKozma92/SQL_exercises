SELECT OrderID, SUM(round(((UnitPrice - (UnitPrice * Discount)) * Quantity), 15)) AS OrderTotal FROM OrderDetails
GROUP BY OrderID
ORDER BY OrderID