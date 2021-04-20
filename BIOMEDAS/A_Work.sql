-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Work', 'U') IS NOT NULL
 DROP TABLE dbo.Work;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Work
(
 SSN_D nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Medical_Doctor (SSN_D),
 NAME_H nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Hospital (NAME_H),
);
GO