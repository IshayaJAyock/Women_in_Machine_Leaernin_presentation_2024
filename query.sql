
-- SQL Query to Reconstruct the custcustomerpurchasedata data 

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
    Purchases p 
        ON c.CustomerID = p.CustomerID
JOIN 
    Products pr 
        ON p.ProductID = pr.ProductID; 











--- Beginner- level querycustomerpurchasedata


-- 1 Retrieve All Data from a Table (customers)
SELECT * 
FROM Customers;


SELECT customerid, name, age, gender
from customers;


-- 2 Filter Data with a Condition

SELECT name, gender
FROM Customers 
WHERE Country = 'USA';



-- 3 Retrieve only customer names and ages.

SELECT Name, Age 
FROM Customers;

-- 4 Count the number of customers in the dataset.

SELECT COUNT(*)  "Customer Count"
FROM Customers;




-- 5 List all products ordered by price in descending order.

SELECT * 
FROM Products 
ORDER BY Price DESC;






-- Intermediate-Level Queries



-- 1 Retrieve customer names and the products they purchased.

SELECT Customers.Name, Products.ProductName, Purchases.PurchaseDate 
FROM Purchases
JOIN Customers ON Purchases.CustomerID = Customers.CustomerID
JOIN Products ON Purchases.ProductID = Products.ProductID;



-- 2 Find the total revenue generated by product category.

SELECT ProductCategory, SUM(Price) AS TotalRevenue 
FROM Products
JOIN Purchases ON Products.ProductID = Purchases.ProductID
WHERE Purchases.Bought = 'Yes'
GROUP BY ProductCategory; 



-- 3 Retrieve customer names and the products they purchased using aliases.
SELECT C.Name AS CustomerName, P.ProductName AS Product, Pr.PurchaseDate 

FROM Purchases Pr
JOIN Customers C ON Pr.CustomerID = C.CustomerID
JOIN Products P ON Pr.ProductID = P.ProductID;




--4 Find products with total revenue greater than $50.
SELECT ProductName, SUM(Price) AS TotalRevenue
FROM Products
JOIN Purchases ON Products.ProductID = Purchases.ProductID
WHERE Purchases.Bought = 'Yes'
GROUP BY ProductName
HAVING SUM(Price) > 50;


-- 5 Get the names of customers who purchased the most expensive product.

SELECT Name 
FROM Customers 
WHERE CustomerID IN (
    SELECT CustomerID 
    FROM Purchases 
    WHERE ProductID = (
        SELECT ProductID 
        FROM Products 
        WHERE Price = (SELECT MAX(Price) FROM Products)
    )
);



-- Advanced SQL Queries 


-- Window Functions

-- 1 Rank customers based on the number of products purchased.

SELECT Name, COUNT(Purchases.PurchaseID) AS TotalPurchases, 
       RANK() OVER (ORDER BY COUNT(Purchases.PurchaseID) DESC) AS Rank
FROM Customers
JOIN Purchases ON Customers.CustomerID = Purchases.CustomerID
GROUP BY Name;

-- 2 Retrieve all customers who haven’t purchased anything.
SELECT Customers.Name 
FROM Customers 
LEFT JOIN Purchases ON Customers.CustomerID = Purchases.CustomerID
WHERE Purchases.PurchaseID IS NULL;

--3 Classify customers based on their age group.
SELECT Name, 
       CASE 
           WHEN Age < 30 THEN 'Youth'
           WHEN Age BETWEEN 30 AND 50 THEN 'Adult'
           ELSE 'Senior'
       END AS AgeGroup
FROM Customers;

-- 4 Generate a sequence of dates for analysis.
WITH RECURSIVE DateSequence AS (
    SELECT CAST('2024-12-01' AS DATE) AS PurchaseDate
    UNION ALL
    SELECT DATE_ADD(PurchaseDate, INTERVAL 1 DAY)
    FROM DateSequence
    WHERE PurchaseDate < '2024-12-07'
)
SELECT * 
FROM DateSequence;

-- 5 Find the total revenue generated by each customer, along with their country.
SELECT C.Name AS CustomerName, C.Country, SUM(P.Price) AS TotalSpent
FROM Purchases PR
JOIN Customers C ON PR.CustomerID = C.CustomerID
JOIN Products P ON PR.ProductID = P.ProductID
WHERE PR.Bought = 'Yes'
GROUP BY C.Name, C.Country;

-- 6 Find customers who spent more than the average spending of all customers.
SELECT Name 
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID 
    FROM Purchases PR
    JOIN Products P ON PR.ProductID = P.ProductID
    GROUP BY CustomerID
    HAVING SUM(P.Price) > (
        SELECT AVG(TotalSpent)
        FROM (
            SELECT SUM(Price) AS TotalSpent
            FROM Purchases PR
            JOIN Products P ON PR.ProductID = P.ProductID
            GROUP BY CustomerID
        ) AS AvgSpending
    )
);









-- 1. Find the total revenue generated by product category

SELECT 
    pr.ProductCategory, 
    SUM(pr.Price) AS TotalRevenue
FROM 
    Purchases p
JOIN 
    Products pr ON p.ProductID = pr.ProductID
WHERE 
    p.Bought = 'Yes'
GROUP BY 
    pr.ProductCategory;


-- 2. Identify the most frequently purchased product category

SELECT 
    pr.ProductCategory, 
    COUNT(p.PurchaseID) AS PurchaseCount
FROM 
    Purchases p
JOIN 
    Products pr ON p.ProductID = pr.ProductID
WHERE 
    p.Bought = 'Yes'
GROUP BY 
    pr.ProductCategory
ORDER BY 
    PurchaseCount DESC
LIMIT 1;


-- 3. Find the average age of customers who bought products

SELECT 
    AVG(c.Age) AS AverageAge
FROM 
    Customers c
JOIN 
    Purchases p ON c.CustomerID = p.CustomerID
WHERE 
    p.Bought = 'Yes';