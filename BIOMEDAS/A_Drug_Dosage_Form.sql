-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Drug_Dosage_Form', 'U') IS NOT NULL
 DROP TABLE dbo.Drug_Dosage_Form;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Drug_Dosage_Form
(
 DRUG_ID nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Drug (DRUG_ID), 
 FORM nvarchar(50) NOT NULL,
 ROUTE nvarchar(50) NOT NULL,
 STRENGTH nvarchar(50) NOT NULL,
 PRIMARY KEY (FORM, ROUTE, STRENGTH),
);
GO