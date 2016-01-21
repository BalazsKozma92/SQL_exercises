-- SELECT OrderID, ProductID, ProductName, UnitPrice, Quantity, Discount, ((UnitPrice - Discount) * Quantity) AS Total
-- FROM OrderDetails 
-- NATURAL JOIN Products
-- ORDER BY OrderID

SELECT 
    od.OrderID,
    od.ProductID,
    p.ProductName,
    od.UnitPrice, od.Quantity, od.Discount,
    round(((od.UnitPrice - (od.UnitPrice * od.Discount)) * od.Quantity), 15) AS Total
FROM
    OrderDetails od
        JOIN
    Products p ON od.ProductID = p.ProductID
GROUP BY od.ProductID
ORDER BY od.OrderID, ProductID;