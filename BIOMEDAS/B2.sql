SELECT DISTINCT Patient.NAME, Patient.AGE
FROM Patient, Work, Medical_Doctor, Attend, Hospital
WHERE (Hospital.COUNTRY='Germany') AND 
    (Medical_Doctor.POSITION='Researcher' OR Medical_Doctor.POSITION='Professor') AND 
    Medical_Doctor.SSN_D=Work.SSN_D AND [Work].NAME_H=Attend.NAME_H AND 
    Hospital.NAME_H=Attend.NAME_H AND Attend.SSN=Patient.SSN