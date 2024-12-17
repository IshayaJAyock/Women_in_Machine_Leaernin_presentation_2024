CREATE TABLE Purchases (
    PurchaseID INT PRIMARY KEY,     -- Unique identifier for each purchase
    CustomerID INT REFERENCES Customers(CustomerID),  -- Foreign key to Customers table
    ProductID INT REFERENCES Products(ProductID),     -- Foreign key to Products table
    PurchaseDate DATE,                 -- Date of purchase
    Bought BOOLEAN                     -- Indicates if the product was bought
);


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

SELECT * from purchases;