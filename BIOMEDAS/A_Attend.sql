-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Attend', 'U') IS NOT NULL
 DROP TABLE dbo.Attend;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Attend
(
 SSN nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Patient (SSN),
 NAME_H nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Hospital (NAME_H),
);
GO