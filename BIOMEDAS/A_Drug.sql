-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Drug', 'U') IS NOT NULL
 DROP TABLE dbo.Drug;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Drug
(
 DRUG_ID nvarchar(50) NOT NULL PRIMARY KEY, -- primary key column
 DRUG_NAME nvarchar(50) NOT NULL,
);
GO