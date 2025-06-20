
USE PracticeDatabase;
GO 

CREATE TYPE dbo.String FROM VARCHAR(255)
GO

DECLARE @MyString dbo.String= 'Up to 255 unicode characters that will take 1 byte each'

SELECT @MyString
GO 

SELECT * FROM sys.types

DROP TYPE dbo.String;

SELECT * FROM sys.types;
GO 