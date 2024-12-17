%/ This query combines Customers, Purchases, and Products to create a flat table for analysis.

SELECT 
    c.CustomerID,
    c.Name,
    c.Age,
    c.Gender,
    c.Country,
    p.ProductID,
    pr.ProductName,
    pr.ProductCategory,
    pr.Price,
    p.PurchaseDate,
    p.Bought
FROM 
    Customers c
JOIN 
    Purchases p ON c.CustomerID = p.CustomerID
JOIN 
    Products pr ON p.ProductID = pr.ProductID;
