USE PracticeDatabase;
GO 

-- First, check if the column exists and if there are any constraints
SELECT 
    c.name AS column_name,
    dc.name AS constraint_name
FROM 
    sys.columns c
LEFT JOIN
    sys.default_constraints dc ON c.default_object_id = dc.object_id
WHERE 
    c.object_id = OBJECT_ID('Inventory.Furniture') AND
    c.name = 'Subcategory';
GO

-- Conditionally drop constraint if it exists
-- We'll use dynamic SQL to handle this
DECLARE @constraintName NVARCHAR(128);
SELECT @constraintName = dc.name
FROM sys.columns c
JOIN sys.default_constraints dc ON c.default_object_id = dc.object_id
WHERE c.object_id = OBJECT_ID('Inventory.Furniture')
AND c.name = 'Subcategory';

IF @constraintName IS NOT NULL
BEGIN
    DECLARE @sql NVARCHAR(200) = N'ALTER TABLE Inventory.Furniture DROP CONSTRAINT ' + QUOTENAME(@constraintName) + ';';
    EXEC sp_executesql @sql;
    PRINT 'Constraint dropped: ' + @constraintName;
END
ELSE
BEGIN
    PRINT 'No constraint found for Subcategory column.';
END
GO

-- Now it's safe to drop the column (if it exists)
IF EXISTS (SELECT 1 FROM sys.columns WHERE object_id = OBJECT_ID('Inventory.Furniture') AND name = 'Subcategory')
BEGIN
    ALTER TABLE Inventory.Furniture DROP COLUMN Subcategory;
    PRINT 'Column Subcategory dropped.';
END
ELSE
BEGIN
    PRINT 'Column Subcategory does not exist.';
END
GO

-- Verify the change
SELECT * FROM Inventory.Furniture;
GO

-- Add the Subcategory column as nullable
ALTER TABLE Inventory.Furniture
ADD Subcategory VARCHAR(50) NULL;
GO

-- Verify the column was added
SELECT * FROM Inventory.Furniture;
PRINT 'Column Subcategory added successfully.';
GO