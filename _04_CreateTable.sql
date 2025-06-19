
USE PracticeDatabase
GO 

DROP SCHEMA IF EXISTS Inventory;
GO 

-- Create Schema
CREATE SCHEMA Inventory;
GO 

DROP TABLE IF EXISTS Inventory.Furniture;
GO 


-- Inventory
CREATE TABLE Inventory.Furniture (
    FurnitureId INT IDENTITY(1,1),
    FurnitureType VARCHAR(50) NULL,
    FurnitureName VARCHAR(50) NOT NULL,
    Price DECIMAL(18,4),
    Quantity INT DEFAULT(0) NOT NULL,
    ReleaseDate DATE,
    CreatedDate DATETIME,
    UpdateDate DATETIME
);