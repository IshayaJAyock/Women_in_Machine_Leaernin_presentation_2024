CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,     -- Unique identifier for each customer
    Name VARCHAR(100),                 -- Customer's name
    Country VARCHAR(50),               -- Customer's country
    Age INT,
    Gender VARCHAR(1) 				   -- Customer's Gender
);




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
    
    
    SELECT * FROM customers;
