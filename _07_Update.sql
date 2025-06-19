
USE PracticeDatabase
GO

-- Example 1: Basic UPDATE statement to update a single record by ID
-- This updates the price and update date for the couch with ID 1
UPDATE Inventory.Furniture
SET Price = 1399.99,
    UpdateDate = '2025-06-19 09:00:00'
WHERE FurnitureId = 1;
GO

-- Example 2: Update multiple records with a condition
-- This gives a 10% price increase to all chairs
UPDATE Inventory.Furniture
SET Price = Price * 1.1,  -- 10% price increase
    UpdateDate = '2025-06-19 10:15:00'
WHERE FurnitureType = 'Chair';
GO

-- View the updated data
SELECT * FROM Inventory.Furniture;
GO
