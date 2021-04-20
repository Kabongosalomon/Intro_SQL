-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Medical_Doctor', 'U') IS NOT NULL
 DROP TABLE dbo.Medical_Doctor;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Medical_Doctor
(
 SSN_D nvarchar(50) NOT NULL PRIMARY KEY, -- primary key column
 NAME_D nvarchar(50) NOT NULL,
 POSITION nvarchar(50) NOT NULL,
);
GO