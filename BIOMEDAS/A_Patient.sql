-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Patient', 'U') IS NOT NULL
 DROP TABLE dbo.Patient;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Patient
(
 SSN nvarchar(50) NOT NULL PRIMARY KEY, -- primary key column
 NAME nvarchar(50) NOT NULL,
 AGE int NOT NULL,
);
GO