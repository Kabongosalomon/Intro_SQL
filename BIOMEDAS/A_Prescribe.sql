-- Create a new table in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Prescribe', 'U') IS NOT NULL
 DROP TABLE dbo.Prescribe;
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Prescribe
(
SSN nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Patient (SSN),
SSN_D nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Medical_Doctor (SSN_D),
DRUG_ID nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Drug (DRUG_ID),
FORM nvarchar(50) NOT NULL,
ROUTE nvarchar(50) NOT NULL,
STRENGTH nvarchar(50) NOT NULL,
FOREIGN KEY (FORM, ROUTE, STRENGTH)  REFERENCES Drug_Dosage_Form (FORM, ROUTE, STRENGTH),
StartDate nvarchar(50) NOT NULL PRIMARY KEY,
NumberDays nvarchar(50) NOT NULL,
TimesPerDay nvarchar(50) NOT NULL,
);
GO