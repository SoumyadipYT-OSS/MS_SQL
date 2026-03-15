USE master;
GO


-- List database details
SELECT name, database_id, create_date
FROM sys.databases
WHERE name = 'BikeStores';

-- List all schemas in BikeStores
SELECT name AS schema_name, schema_id, principal_id
FROM BikeStores.sys.schemas;

-- Who owns each schema?
SELECT s.name AS schema_name, u.name AS owner_name
FROM BikeStores.sys.schemas s
JOIN BikeStores.sys.sysusers u ON s.principal_id = u.uid;
