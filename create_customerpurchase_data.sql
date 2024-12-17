CREATE TABLE CustomerPurchaseData (
    CustomerID INT PRIMARY KEY,      -- Unique identifier for each customer
    Name VARCHAR(100),                  -- Customer's name
    Country VARCHAR(50),                -- Customer's country
    Age INT,                            -- Customer's age
    Gender VARCHAR(1),					-- Customer's Gender
    ProductID INT,                      -- Unique identifier for each product
    ProductName VARCHAR(100),           -- Name of the product
    ProductCategory VARCHAR(50),        -- Product category
    Price DECIMAL(10, 2),               -- Price of the product
    PurchaseDate DATE,                  -- Date of purchase
    Bought BOOLEAN                      -- Indicates if the product was bought
);

INSERT INTO CustomerPurchaseData 
    (CustomerID, Name, Country, Age, Gender, ProductID, ProductName, ProductCategory, Price, PurchaseDate, Bought)
VALUES
    (1,'EmmanuelA', 'USA', 30, 'M',101, 'Laptop', 'Electronics', 1000.00, '2024-12-01', TRUE),
    (2,'KanuB', 'Canada', 25,'F', 102, 'Smartphone', 'Electronics', 800.00, '2024-12-02', TRUE),
    (3,'Francis', 'UK', 35, 'M',103, 'Tablet', 'Electronics', 500.00, '2024-12-03', TRUE),
    (4,'Batis', 'Germany', 28,'M', 104, 'Headphones', 'Accessories', 150.00, '2024-12-04', TRUE),
    (5,'John', 'France', 40,'M', 105, 'Smartwatch', 'Wearables', 300.00, '2024-12-05', TRUE),
    (6,'Blessing', 'Australia', 22,'F', 106, 'Camera', 'Electronics', 700.00, '2024-12-06', TRUE),
    (7,'Salome', 'USA', 33,'F', 107, 'Gaming Console', 'Gaming', 400.00, '2024-12-07', FALSE),
    (8,'Zialesi ', 'India', 29,'F', 108, 'Fitness Tracker', 'Wearables', 120.00, '2024-12-08', FALSE);
    
   
    
    SELECT *
    FROM customerpurchasedata;
   
    
    
    
    
    
    
    
    
