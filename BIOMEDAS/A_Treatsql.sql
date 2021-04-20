-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Treat', 'U') IS NOT NULL
 DROP TABLE dbo.Treat;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Treat
(
 SSN nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Patient (SSN),
 SSN_D nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Medical_Doctor (SSN_D),
);
GO