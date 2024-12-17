CREATE TABLE Products (
    ProductID INT PRIMARY KEY,      -- Unique identifier for each product
    ProductName VARCHAR(100),          -- Name of the product
    ProductCategory VARCHAR(50),       -- Product category
    Price DECIMAL(10, 2)               -- Price of the product
);


INSERT INTO Products (ProductID, ProductName, ProductCategory, Price)
VALUES
    (101,'Laptop', 'Electronics', 1000.00),
    (102,'Smartphone', 'Electronics', 800.00),
    (103, 'Tablet', 'Electronics', 500.00),
    (104,'Headphones', 'Accessories', 150.00),
    (105, 'Smartwatch', 'Wearables', 300.00),
    (106, 'Camera', 'Electronics', 700.00),
    (107, 'Gaming Console', 'Gaming', 400.00),
    (108, 'Fitness Tracker', 'Wearables', 120.00);

select * from  products;