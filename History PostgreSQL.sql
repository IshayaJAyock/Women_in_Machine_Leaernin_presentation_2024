--- 15-12-2024 11:24:33
--- PostgreSQL
/***** ERROR ******
Error 42501 permission denied to create database
 ----- 
create DATABASE wim_db;
*****/

--- 15-12-2024 11:26:38
--- PostgreSQL
/***** ERROR ******
Error 42501 permission denied to create database
 ----- 
create DATABASE wim_db;
*****/

--- 15-12-2024 11:27:06
--- PostgreSQL
/***** ERROR ******
Error 42501 permission denied to create database
 ----- 
create DATABASE wim_db;
*****/

--- 15-12-2024 11:27:16
--- PostgreSQL
/***** ERROR ******
Error 42501 permission denied to create database
 ----- 
create DATABASE wim_db;
*****/

--- 15-12-2024 11:30:13
--- PostgreSQL
CREATE TABLE CustomerPurchaseData (
    CustomerID SERIAL PRIMARY KEY,      -- Unique identifier for each customer
    Name VARCHAR(100),                  -- Customer's name
    Country VARCHAR(50),                -- Customer's country
    Age INT,                            -- Customer's age
    ProductID INT,                      -- Unique identifier for each product
    ProductName VARCHAR(100),           -- Name of the product
    ProductCategory VARCHAR(50),        -- Product category
    Price DECIMAL(10, 2),               -- Price of the product
    PurchaseDate DATE,                  -- Date of purchase
    Bought BOOLEAN                      -- Indicates if the product was bought
);

--- 15-12-2024 11:38:18
--- Insert _data
INSERT INTO CustomerPurchaseData 
    (Name, Country, Age, ProductID, ProductName, ProductCategory, Price, PurchaseDate, Bought)
VALUES
    ('EmmanuelA', 'USA', 30, 101, 'Laptop', 'Electronics', 1000.00, '2024-12-01', TRUE),
    ('KanuB', 'Canada', 25, 102, 'Smartphone', 'Electronics', 800.00, '2024-12-02', TRUE),
    ('Francis', 'UK', 35, 103, 'Tablet', 'Electronics', 500.00, '2024-12-03', TRUE),
    ('Batis', 'Germany', 28, 104, 'Headphones', 'Accessories', 150.00, '2024-12-04', TRUE),
    ('John', 'France', 40, 105, 'Smartwatch', 'Wearables', 300.00, '2024-12-05', TRUE),
    ('Blessing', 'Australia', 22, 106, 'Camera', 'Electronics', 700.00, '2024-12-06', TRUE),
    ('Salome', 'USA', 33, 107, 'Gaming Console', 'Gaming', 400.00, '2024-12-07', FALSE),
    ('Zialesi ', 'India', 29, 108, 'Fitness Tracker', 'Wearables', 120.00, '2024-12-08', FALSE);

--- 15-12-2024 11:38:29
--- Insert _data
INSERT INTO CustomerPurchaseData 
    (Name, Country, Age, ProductID, ProductName, ProductCategory, Price, PurchaseDate, Bought)
VALUES
    ('EmmanuelA', 'USA', 30, 101, 'Laptop', 'Electronics', 1000.00, '2024-12-01', TRUE),
    ('KanuB', 'Canada', 25, 102, 'Smartphone', 'Electronics', 800.00, '2024-12-02', TRUE),
    ('Francis', 'UK', 35, 103, 'Tablet', 'Electronics', 500.00, '2024-12-03', TRUE),
    ('Batis', 'Germany', 28, 104, 'Headphones', 'Accessories', 150.00, '2024-12-04', TRUE),
    ('John', 'France', 40, 105, 'Smartwatch', 'Wearables', 300.00, '2024-12-05', TRUE),
    ('Blessing', 'Australia', 22, 106, 'Camera', 'Electronics', 700.00, '2024-12-06', TRUE),
    ('Salome', 'USA', 33, 107, 'Gaming Console', 'Gaming', 400.00, '2024-12-07', FALSE),
    ('Zialesi ', 'India', 29, 108, 'Fitness Tracker', 'Wearables', 120.00, '2024-12-08', FALSE);

--- 15-12-2024 11:40:34
--- create_customerpurchase_data.2
SELECT * from customerpurchasedata;

--- 15-12-2024 11:41:54
--- create_customerpurchase_data.2
drop TABLE customerpurchasedata;

--- 15-12-2024 11:42:02
--- create_customerpurchase_data
CREATE TABLE CustomerPurchaseData (
    CustomerID SERIAL PRIMARY KEY,      -- Unique identifier for each customer
    Name VARCHAR(100),                  -- Customer's name
    Country VARCHAR(50),                -- Customer's country
    Age INT,                            -- Customer's age
    ProductID INT,                      -- Unique identifier for each product
    ProductName VARCHAR(100),           -- Name of the product
    ProductCategory VARCHAR(50),        -- Product category
    Price DECIMAL(10, 2),               -- Price of the product
    PurchaseDate DATE,                  -- Date of purchase
    Bought BOOLEAN                      -- Indicates if the product was bought
);

--- 15-12-2024 11:42:12
--- Insert _data
INSERT INTO CustomerPurchaseData 
    (Name, Country, Age, ProductID, ProductName, ProductCategory, Price, PurchaseDate, Bought)
VALUES
    ('EmmanuelA', 'USA', 30, 101, 'Laptop', 'Electronics', 1000.00, '2024-12-01', TRUE),
    ('KanuB', 'Canada', 25, 102, 'Smartphone', 'Electronics', 800.00, '2024-12-02', TRUE),
    ('Francis', 'UK', 35, 103, 'Tablet', 'Electronics', 500.00, '2024-12-03', TRUE),
    ('Batis', 'Germany', 28, 104, 'Headphones', 'Accessories', 150.00, '2024-12-04', TRUE),
    ('John', 'France', 40, 105, 'Smartwatch', 'Wearables', 300.00, '2024-12-05', TRUE),
    ('Blessing', 'Australia', 22, 106, 'Camera', 'Electronics', 700.00, '2024-12-06', TRUE),
    ('Salome', 'USA', 33, 107, 'Gaming Console', 'Gaming', 400.00, '2024-12-07', FALSE),
    ('Zialesi ', 'India', 29, 108, 'Fitness Tracker', 'Wearables', 120.00, '2024-12-08', FALSE);

--- 15-12-2024 11:42:23
--- create_customerpurchase_data.2
/***** ERROR ******
Error 42601 syntax error at or near "customerpurchasedata"
 ----- 
SELECT * customerpurchasedata;
*****/

--- 15-12-2024 11:42:33
--- create_customerpurchase_data.2
SELECT * from customerpurchasedata;

--- 15-12-2024 11:42:41
--- create_customerpurchase_data.2
SELECT * 
from customerpurchasedata;

--- 15-12-2024 11:46:59
--- create_customer
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,     -- Unique identifier for each customer
    Name VARCHAR(100),                 -- Customer's name
    Country VARCHAR(50),               -- Customer's country
    Age INT                            -- Customer's age
);

--- 15-12-2024 11:48:07
--- insert_customer_data
INSERT INTO Customers (Name, Country, Age)
VALUES
    ('EmmanuelA', 'USA', 30),
    ('KanuB', 'Canada', 25),
    ('Francis', 'UK', 35),
    ('Batis', 'Germany', 28),
    ('John', 'France', 40),
    ('Blessing', 'Australia', 22),
    ('Salome', 'USA', 33),
    ('Zialesi', 'India', 29);

--- 15-12-2024 11:48:54
--- insert_customer_data
SELECT * FROM customers;

--- 15-12-2024 11:51:47
--- Product
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,      -- Unique identifier for each product
    ProductName VARCHAR(100),          -- Name of the product
    ProductCategory VARCHAR(50),       -- Product category
    Price DECIMAL(10, 2)               -- Price of the product
);

--- 15-12-2024 11:52:01
--- Product
INSERT INTO Products (ProductName, ProductCategory, Price)
VALUES
    ('Laptop', 'Electronics', 1000.00),
    ('Smartphone', 'Electronics', 800.00),
    ('Tablet', 'Electronics', 500.00),
    ('Headphones', 'Accessories', 150.00),
    ('Smartwatch', 'Wearables', 300.00),
    ('Camera', 'Electronics', 700.00),
    ('Gaming Console', 'Gaming', 400.00),
    ('Fitness Tracker', 'Wearables', 120.00);

--- 15-12-2024 11:52:13
--- Product
/***** ERROR ******
Error 42P07 relation "products" already exists
 ----- 
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,      -- Unique identifier for each product
    ProductName VARCHAR(100),          -- Name of the product
    ProductCategory VARCHAR(50),       -- Product category
    Price DECIMAL(10, 2)               -- Price of the product
);


INSERT INTO Products (ProductName, ProductCategory, Price)
VALUES
    ('Laptop', 'Electronics', 1000.00),
    ('Smartphone', 'Electronics', 800.00),
    ('Tablet', 'Electronics', 500.00),
    ('Headphones', 'Accessories', 150.00),
    ('Smartwatch', 'Wearables', 300.00),
    ('Camera', 'Electronics', 700.00),
    ('Gaming Console', 'Gaming', 400.00),
    ('Fitness Tracker', 'Wearables', 120.00);

SELECT * from products;
*****/

--- 15-12-2024 11:52:18
--- Product
SELECT * from products;

--- 15-12-2024 11:53:36
--- Purchases
CREATE TABLE Purchases (
    PurchaseID SERIAL PRIMARY KEY,     -- Unique identifier for each purchase
    CustomerID INT REFERENCES Customers(CustomerID),  -- Foreign key to Customers table
    ProductID INT REFERENCES Products(ProductID),     -- Foreign key to Products table
    PurchaseDate DATE,                 -- Date of purchase
    Bought BOOLEAN                     -- Indicates if the product was bought
);

--- 15-12-2024 11:53:52
--- Purchases
/***** ERROR ******
Error 23503 insert or update on table "purchases" violates foreign key constraint "purchases_productid_fkey"
 ----- 
INSERT INTO Purchases (CustomerID, ProductID, PurchaseDate, Bought)
VALUES
    (1, 101, '2024-01-01', TRUE),
    (2, 102, '2024-01-02', TRUE),
    (3, 103, '2024-01-03', TRUE),
    (4, 104, '2024-01-04', TRUE),
    (5, 105, '2024-01-05', TRUE),
    (6, 106, '2024-01-06', TRUE),
    (7, 107, '2024-01-07', FALSE),
    (8, 108, '2024-01-08', FALSE);
*****/

--- 15-12-2024 11:55:23
--- Product
SELECT * from products;

--- 15-12-2024 11:56:49
--- Purchases
/***** ERROR ******
Error 2BP01 cannot drop table products because other objects depend on it
 ----- 
drop TABLE products;
*****/

--- 15-12-2024 11:57:03
--- Purchases
/***** ERROR ******
Error 42P07 relation "purchases" already exists
 ----- 
CREATE TABLE Purchases (
    PurchaseID SERIAL PRIMARY KEY,     -- Unique identifier for each purchase
    CustomerID INT REFERENCES Customers(CustomerID),  -- Foreign key to Customers table
    ProductID INT REFERENCES Products(ProductID),     -- Foreign key to Products table
    PurchaseDate DATE,                 -- Date of purchase
    Bought BOOLEAN                     -- Indicates if the product was bought
);
*****/

--- 15-12-2024 11:57:12
--- Purchases
/***** ERROR ******
Error 2BP01 cannot drop table products because other objects depend on it
 ----- 
drop TABLE products;
*****/

--- 15-12-2024 11:57:33
--- Product
/***** ERROR ******
Error 2BP01 cannot drop table products because other objects depend on it
 ----- 
drop TABLE products;
*****/

--- 15-12-2024 11:58:08
--- Purchases
SELECT * from products;

--- 15-12-2024 11:58:43
--- Purchases
SELECT * from purchases;

--- 15-12-2024 11:58:53
--- Purchases
/***** ERROR ******
Error 42P07 relation "purchases" already exists
 ----- 
CREATE TABLE Purchases (
    PurchaseID SERIAL PRIMARY KEY,     -- Unique identifier for each purchase
    CustomerID INT REFERENCES Customers(CustomerID),  -- Foreign key to Customers table
    ProductID INT REFERENCES Products(ProductID),     -- Foreign key to Products table
    PurchaseDate DATE,                 -- Date of purchase
    Bought BOOLEAN                     -- Indicates if the product was bought
);
*****/

--- 15-12-2024 11:59:14
--- Purchases
/***** ERROR ******
Error 23503 insert or update on table "purchases" violates foreign key constraint "purchases_productid_fkey"
 ----- 
INSERT INTO Purchases (CustomerID, ProductID, PurchaseDate, Bought)
VALUES
    (1, 101, '2024-01-01', TRUE),
    (2, 102, '2024-01-02', TRUE),
    (3, 103, '2024-01-03', TRUE),
    (4, 104, '2024-01-04', TRUE),
    (5, 105, '2024-01-05', TRUE),
    (6, 106, '2024-01-06', TRUE),
    (7, 107, '2024-01-07', FALSE),
    (8, 108, '2024-01-08', FALSE);
*****/

--- 15-12-2024 11:59:51
--- Purchases
DROP TABLE purchases;

--- 15-12-2024 11:59:59
--- Purchases
DROP TABLE products;

--- 15-12-2024 12:00:59
--- Product
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,      -- Unique identifier for each product
    ProductName VARCHAR(100),          -- Name of the product
    ProductCategory VARCHAR(50),       -- Product category
    Price DECIMAL(10, 2)               -- Price of the product
);

--- 15-12-2024 12:01:14
--- Product
/***** ERROR ******
Error 42601 INSERT has more expressions than target columns
 ----- 
INSERT INTO Products (ProductName, ProductCategory, Price)
VALUES
    (101,'Laptop', 'Electronics', 1000.00),
    (102,'Smartphone', 'Electronics', 800.00),
    (103, 'Tablet', 'Electronics', 500.00),
    (104,'Headphones', 'Accessories', 150.00),
    (105, 'Smartwatch', 'Wearables', 300.00),
    (106, 'Camera', 'Electronics', 700.00),
    (107, 'Gaming Console', 'Gaming', 400.00),
    (108, 'Fitness Tracker', 'Wearables', 120.00);
*****/

--- 15-12-2024 12:01:28
--- Product
DROP TABLE products;

--- 15-12-2024 12:01:56
--- Product
CREATE TABLE Products (
    ProductID SERIAL,      -- Unique identifier for each product
    ProductName VARCHAR(100),          -- Name of the product
    ProductCategory VARCHAR(50),       -- Product category
    Price DECIMAL(10, 2)               -- Price of the product
);

--- 15-12-2024 12:02:02
--- Product
/***** ERROR ******
Error 42601 INSERT has more expressions than target columns
 ----- 
INSERT INTO Products (ProductName, ProductCategory, Price)
VALUES
    (101,'Laptop', 'Electronics', 1000.00),
    (102,'Smartphone', 'Electronics', 800.00),
    (103, 'Tablet', 'Electronics', 500.00),
    (104,'Headphones', 'Accessories', 150.00),
    (105, 'Smartwatch', 'Wearables', 300.00),
    (106, 'Camera', 'Electronics', 700.00),
    (107, 'Gaming Console', 'Gaming', 400.00),
    (108, 'Fitness Tracker', 'Wearables', 120.00);
*****/

--- 15-12-2024 12:02:34
--- Product
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

--- 15-12-2024 12:02:47
--- Product
select * from  products;

--- 15-12-2024 12:03:00
--- Purchases
/***** ERROR ******
Error 42830 there is no unique constraint matching given keys for referenced table "products"
 ----- 
CREATE TABLE Purchases (
    PurchaseID SERIAL PRIMARY KEY,     -- Unique identifier for each purchase
    CustomerID INT REFERENCES Customers(CustomerID),  -- Foreign key to Customers table
    ProductID INT REFERENCES Products(ProductID),     -- Foreign key to Products table
    PurchaseDate DATE,                 -- Date of purchase
    Bought BOOLEAN                     -- Indicates if the product was bought
);
*****/

--- 15-12-2024 12:04:15
--- Product
DROP TABLE products;

--- 15-12-2024 12:04:33
--- Customer
/***** ERROR ******
Error 42P07 relation "customers" already exists
 ----- 
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,     -- Unique identifier for each customer
    Name VARCHAR(100),                 -- Customer's name
    Country VARCHAR(50),               -- Customer's country
    Age INT                            -- Customer's age
);
*****/

--- 15-12-2024 12:05:01
--- Product
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,      -- Unique identifier for each product
    ProductName VARCHAR(100),          -- Name of the product
    ProductCategory VARCHAR(50),       -- Product category
    Price DECIMAL(10, 2)               -- Price of the product
);

--- 15-12-2024 12:05:12
--- Product
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

--- 15-12-2024 12:05:18
--- Product
select * from  products;

--- 15-12-2024 12:05:35
--- Purchases
CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY,     -- Unique identifier for each purchase
    CustomerID INT REFERENCES Customers(CustomerID),  -- Foreign key to Customers table
    ProductID INT REFERENCES Products(ProductID),     -- Foreign key to Products table
    PurchaseDate DATE,                 -- Date of purchase
    Bought BOOLEAN                     -- Indicates if the product was bought
);

--- 15-12-2024 12:05:41
--- Purchases
/***** ERROR ******
Error 23502 null value in column "purchaseid" of relation "purchases" violates not-null constraint
 ----- 
INSERT INTO Purchases (CustomerID, ProductID, PurchaseDate, Bought)
VALUES
    (1, 101, '2024-01-01', TRUE),
    (2, 102, '2024-01-02', TRUE),
    (3, 103, '2024-01-03', TRUE),
    (4, 104, '2024-01-04', TRUE),
    (5, 105, '2024-01-05', TRUE),
    (6, 106, '2024-01-06', TRUE),
    (7, 107, '2024-01-07', FALSE),
    (8, 108, '2024-01-08', FALSE);
*****/

--- 15-12-2024 12:06:03
--- Purchases
/***** ERROR ******
Error 42601 INSERT has more target columns than expressions
 ----- 
INSERT INTO Purchases (PurchaseID, CustomerID, ProductID, PurchaseDate, Bought)
VALUES
    (1, 101, '2024-01-01', TRUE),
    (2, 102, '2024-01-02', TRUE),
    (3, 103, '2024-01-03', TRUE),
    (4, 104, '2024-01-04', TRUE),
    (5, 105, '2024-01-05', TRUE),
    (6, 106, '2024-01-06', TRUE),
    (7, 107, '2024-01-07', FALSE),
    (8, 108, '2024-01-08', FALSE);
*****/

--- 15-12-2024 12:06:49
--- Customer
SELECT * FROM customers;

--- 15-12-2024 12:08:23
--- Purchases
INSERT INTO Purchases (PurchaseID, CustomerID, ProductID, PurchaseDate, Bought)
VALUES
    (201, 1, 101, '2024-01-01', TRUE),
    (202, 2, 102, '2024-01-02', TRUE),
    (203, 3, 103, '2024-01-03', TRUE),
    (204, 4, 104, '2024-01-04', TRUE),
    (205, 5, 105, '2024-01-05', TRUE),
    (206, 6, 106, '2024-01-06', TRUE),
    (207, 7, 107, '2024-01-07', FALSE),
    (208, 8, 108, '2024-01-08', FALSE);

--- 15-12-2024 12:08:28
--- Purchases
SELECT * from purchases;

--- 15-12-2024 12:08:40
--- Purchases
DROP TABLE demo;

--- 15-12-2024 12:09:08
--- create_customerpurchase_data
SELECT *
    FROM customerpurchasedata;

--- 15-12-2024 12:11:03
--- Customer
SELECT * FROM customers;

--- 15-12-2024 12:12:40
--- create_customerpurchase_data
DROP TABLE customerpurchasedata;

--- 15-12-2024 12:12:49
--- create_customerpurchase_data
/***** ERROR ******
Error 42601 syntax error at or near "ProductID"
 ----- 
CREATE TABLE CustomerPurchaseData (
    CustomerID SERIAL PRIMARY KEY,      -- Unique identifier for each customer
    Name VARCHAR(100),                  -- Customer's name
    Country VARCHAR(50),                -- Customer's country
    Age INT,                            -- Customer's age
    Gender VARCHAR(1)					-- Customer's Gender
    ProductID INT,                      -- Unique identifier for each product
    ProductName VARCHAR(100),           -- Name of the product
    ProductCategory VARCHAR(50),        -- Product category
    Price DECIMAL(10, 2),               -- Price of the product
    PurchaseDate DATE,                  -- Date of purchase
    Bought BOOLEAN                      -- Indicates if the product was bought
);
*****/

--- 15-12-2024 12:14:11
--- create_customerpurchase_data
/***** ERROR ******
Error 42601 syntax error at or near "ProductID"
 ----- 
CREATE TABLE CustomerPurchaseData (
    CustomerID INT PRIMARY KEY,      -- Unique identifier for each customer
    Name VARCHAR(100),                  -- Customer's name
    Country VARCHAR(50),                -- Customer's country
    Age INT,                            -- Customer's age
    Gender VARCHAR(1)					-- Customer's Gender
    ProductID INT,                      -- Unique identifier for each product
    ProductName VARCHAR(100),           -- Name of the product
    ProductCategory VARCHAR(50),        -- Product category
    Price DECIMAL(10, 2),               -- Price of the product
    PurchaseDate DATE,                  -- Date of purchase
    Bought BOOLEAN                      -- Indicates if the product was bought
);
*****/

--- 15-12-2024 12:15:42
--- create_customerpurchase_data
/***** ERROR ******
Error 42601 syntax error at or near "ProductID"
 ----- 
CREATE TABLE CustomerPurchaseData (
    CustomerID INT PRIMARY KEY,      -- Unique identifier for each customer
    Name VARCHAR(100),                  -- Customer's name
    Country VARCHAR(50),                -- Customer's country
    Age INT,                            -- Customer's age
    Gender VARCHAR(1)					-- Customer's Gender
    ProductID INT,                      -- Unique identifier for each product
    ProductName VARCHAR(100),           -- Name of the product
    ProductCategory VARCHAR(50),        -- Product category
    Price DECIMAL(10, 2),               -- Price of the product
    PurchaseDate DATE,                  -- Date of purchase
    Bought BOOLEAN                      -- Indicates if the product was bought
);
*****/

--- 15-12-2024 12:15:54
--- create_customerpurchase_data
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

--- 15-12-2024 12:16:19
--- create_customerpurchase_data
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

--- 15-12-2024 12:16:24
--- create_customerpurchase_data
SELECT *
    FROM customerpurchasedata;

--- 15-12-2024 12:22:55
--- Customer
/***** ERROR ******
Error 2BP01 cannot drop table customers because other objects depend on it
 ----- 
DROP TABLE customers;
*****/

--- 15-12-2024 12:23:57
--- Customer
/***** ERROR ******
Error 2BP01 cannot drop table customers because other objects depend on it
 ----- 
DROP TABLE customers;
*****/

--- 15-12-2024 12:24:05
--- Customer
/***** ERROR ******
Error 2BP01 cannot drop table products because other objects depend on it
 ----- 
DROP TABLE products;
*****/

--- 15-12-2024 12:24:10
--- Customer
DROP TABLE purchases;

--- 15-12-2024 12:24:19
--- Customer
DROP TABLE products;

--- 15-12-2024 12:24:25
--- Customer
DROP TABLE customers;

--- 15-12-2024 12:24:53
--- create_customerpurchase_data
SELECT *
    FROM customerpurchasedata;

--- 15-12-2024 12:25:27
--- Customer
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,     -- Unique identifier for each customer
    Name VARCHAR(100),                 -- Customer's name
    Country VARCHAR(50),               -- Customer's country
    Age INT,
  	Gender VARCHAR(1) 				   -- Customer's Gender
);

--- 15-12-2024 12:25:43
--- Customer
INSERT INTO Customers (Name, Country, Age,Gender)
VALUES
    ('EmmanuelA', 'USA', 30,'M'),
    ('KanuB', 'Canada', 25,'F'),
    ('Francis', 'UK', 35,'M'),
    ('Batis', 'Germany', 28,'M'),
    ('John', 'France', 40,'M'),
    ('Blessing', 'Australia', 22,'F'),
    ('Salome', 'USA', 33,'F'),
    ('Zialesi', 'India', 29,'F');

--- 15-12-2024 12:25:48
--- Customer
SELECT * FROM customers;

--- 15-12-2024 12:26:41
--- Product
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,      -- Unique identifier for each product
    ProductName VARCHAR(100),          -- Name of the product
    ProductCategory VARCHAR(50),       -- Product category
    Price DECIMAL(10, 2)               -- Price of the product
);

--- 15-12-2024 12:26:47
--- Product
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

--- 15-12-2024 12:26:52
--- Product
select * from  products;

--- 15-12-2024 12:27:20
--- Purchases
CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY,     -- Unique identifier for each purchase
    CustomerID INT REFERENCES Customers(CustomerID),  -- Foreign key to Customers table
    ProductID INT REFERENCES Products(ProductID),     -- Foreign key to Products table
    PurchaseDate DATE,                 -- Date of purchase
    Bought BOOLEAN                     -- Indicates if the product was bought
);

--- 15-12-2024 12:27:26
--- Purchases
INSERT INTO Purchases (PurchaseID, CustomerID, ProductID, PurchaseDate, Bought)
VALUES
    (201, 1, 101, '2024-01-01', TRUE),
    (202, 2, 102, '2024-01-02', TRUE),
    (203, 3, 103, '2024-01-03', TRUE),
    (204, 4, 104, '2024-01-04', TRUE),
    (205, 5, 105, '2024-01-05', TRUE),
    (206, 6, 106, '2024-01-06', TRUE),
    (207, 7, 107, '2024-01-07', FALSE),
    (208, 8, 108, '2024-01-08', FALSE);

--- 15-12-2024 12:27:31
--- Purchases
SELECT * from purchases;

--- 15-12-2024 12:28:45
--- General query
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

