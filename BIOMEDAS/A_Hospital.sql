-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Hospital', 'U') IS NOT NULL
 DROP TABLE dbo.Hospital;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Hospital
(
 NAME_H nvarchar(50) NOT NULL PRIMARY KEY, -- primary key column
 POSTCODE nvarchar(50) NOT NULL,
 COUNTRY nvarchar(50) NOT NULL,
);
GO