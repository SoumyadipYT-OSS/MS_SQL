-- DROP DATABASE IF EXISTS TestDatabase1;
-- GO

-- USE TestDatabase
-- GO


-- Create schemas
CREATE SCHEMA Sales;
GO 
CREATE SCHEMA Person;
GO 
CREATE SCHEMA Inventory;
GO 

-- Create Person.Customer Table
CREATE TABLE Person.Customer
(
    CustomerID INT IDENTITY(1, 1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Phone NVARCHAR(20),
    CreatedDate DATETIME DEFAULT GETDATE(),
    ModifiedDate DATETIME DEFAULT GETDATE()
);
GO 


-- Create Person.Address table
CREATE TABLE Person.Address
(
    AddressID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    AddressLine1 NVARCHAR(100) NOT NULL,
    AddressLine2 NVARCHAR(100),
    City NVARCHAR(50) Not NULL,
    State NVARCHAR(50),
    PostalCode NVARCHAR(20) NOT NULL,
    Country NVARCHAR(50) NOT NULL DEFAULT 'BHARAT',
    AddressType NVARCHAR(20) NOT NULL DEFAULT 'Shipping',
    CONSTRAINT FK_Address_Customer FOREIGN KEY (CustomerID)
        REFERENCES Person.Customer (CustomerID)
        ON DELETE CASCADE
);
GO


-- Create Inventory.Product table
CREATE TABLE Inventory.Product
(
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500),
    UnitPrice DECIMAL(10, 2) NOT NULL CHECK (UnitPrice >= 0),
    StockQuantity INT NOT NULL DEFAULT 0 CHECK (StockQuantity >= 0),
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO


-- Create Inventory.Category table
CREATE TABLE Inventory.Category
(
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL UNIQUE,
    Description NVARCHAR(200)
);
GO


-- Create Inventory.ProductCategory junction table (many-to-many)
CREATE TABLE Inventory.ProductCategory
(
    ProductID INT NOT NULL,
    CategoryID INT NOT NULL,
    CONSTRAINT PK_ProductCategory PRIMARY KEY (ProductID, CategoryID),
    CONSTRAINT FK_ProductCategory_Product FOREIGN KEY (ProductID) 
        REFERENCES Inventory.Product (ProductID) 
        ON DELETE CASCADE,
    CONSTRAINT FK_ProductCategory_Category FOREIGN KEY (CategoryID) 
        REFERENCES Inventory.Category (CategoryID)
        ON DELETE CASCADE
);
GO


-- Create Sales.Orders table
CREATE TABLE Sales.Orders
(
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATETIME NOT NULL DEFAULT GETDATE(),
    ShippedDate DATETIME,
    Status NVARCHAR(20) NOT NULL DEFAULT 'Pending',
    TotalAmount DECIMAL(12, 2) NOT NULL DEFAULT 0,
    CONSTRAINT FK_Order_Customer FOREIGN KEY (CustomerID)
        REFERENCES Person.Customer (CustomerID)
);
GO



-- Create Sales.OrderDetail table
CREATE TABLE Sales.OrderDetail
(
    OrderDetailID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    UnitPrice DECIMAL(10, 2) NOT NULL CHECK (UnitPrice >= 0),
    Discount DECIMAL(4, 2) NOT NULL DEFAULT 0 CHECK (Discount >= 0 AND Discount <= 1),
    CONSTRAINT FK_OrderDetail_Order FOREIGN KEY (OrderID)
        REFERENCES Sales.Orders (OrderID)
        ON DELETE CASCADE,
    CONSTRAINT FK_OrderDetail_Product FOREIGN KEY (ProductID)
        REFERENCES Inventory.Product (ProductID)
);
GO


-- Create an index for better query performance
CREATE INDEX IX_Order_CustomerID ON Sales.Orders (CustomerID);
CREATE INDEX IX_Product_Name ON Inventory.Product (ProductName);
GO