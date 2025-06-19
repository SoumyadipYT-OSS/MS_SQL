
USE PracticeDatabase
GO 


-- Insert multiple furniture items in a single statement
INSERT INTO Inventory.Furniture(
    [FurnitureType],
    [FurnitureName],
    [Price],
    [Quantity],
    [ReleaseDate],
    [CreatedDate],
    [UpdateDate]
) VALUES 
-- Original item
(
    'Couch',
    'The Super Delux Sectional',
    1299.99,
    34,
    '2025-05-10',
    '2025-05-09 20:00:00',
    '2025-05-09 21:00:00'
),
-- New items added
(
    'Chair',
    'Executive Office Chair',
    599.99,
    25,
    '2025-03-15',
    '2025-03-14 10:30:00',
    '2025-03-14 10:30:00'
),
(
    'Desk',
    'Premium Oak Writing Desk',
    899.99,
    12,
    '2025-04-01',
    '2025-03-25 14:45:00',
    '2025-03-25 14:45:00'
),
(
    'Bookcase',
    'Modern 5-shelf Bookcase',
    349.99,
    18,
    '2025-02-28',
    '2025-02-20 09:15:00',
    '2025-02-20 09:15:00'
),
(    'Dining Table',
    'Farmhouse Dining Table',
    1499.99,
    8,
    '2025-06-01',
    '2025-05-28 16:20:00',
    '2025-05-28 16:20:00'
),
(
    'Coffee Table',
    'Glass-top Coffee Table',
    399.99,
    15,
    '2025-04-12',
    '2025-04-01 11:25:00',
    '2025-04-01 11:25:00'
),
(
    'Bed Frame',
    'King Size Platform Bed',
    1199.99,
    6,
    '2025-05-20',
    '2025-05-10 08:45:00',
    '2025-05-10 08:45:00'
),
(
    'Dresser',
    'Six-Drawer Modern Dresser',
    849.99,
    10,
    '2025-05-15',
    '2025-04-20 13:10:00',
    '2025-04-20 13:10:00'
),
(
    'Nightstand',
    'Oak Bedside Table',
    249.99,
    22,
    '2025-05-15',
    '2025-04-20 13:30:00',
    '2025-04-20 13:30:00'
);

GO

-- Query to verify the data was inserted correctly
SELECT * FROM Inventory.Furniture;
GO
