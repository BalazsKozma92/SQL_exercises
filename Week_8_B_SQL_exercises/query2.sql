SELECT 
    c.City,
    c.CompanyName,
    c.ContactName,
    (SELECT 
            SUBSTRING(table_name, 1, 8)
        FROM
            information_schema.tables
        WHERE
            table_name = 'Customers') AS Relationship
FROM
    Customers c 
UNION SELECT 
    s.City,
    s.CompanyName,
    s.ContactName,
    (SELECT 
            SUBSTRING(table_name, 1, 8)
        FROM
            information_schema.tables
        WHERE
            table_name = 'Suppliers') AS Relationship
FROM
    Suppliers s
ORDER BY City , ContactName;