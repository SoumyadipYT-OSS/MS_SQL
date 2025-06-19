
USE PracticeDatabase
GO 


SELECT FurnitureName, FurnitureType, Price FROM Inventory.Furniture
GO 

SELECT [F1].FurnitureName,
    [F1].FurnitureType,
    [F1].Price
 FROM Inventory.Furniture AS F1