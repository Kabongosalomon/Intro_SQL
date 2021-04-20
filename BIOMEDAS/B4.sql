SELECT DISTINCT Medical_Doctor.NAME_D, Medical_Doctor.SSN_D
FROM Patient, Work, Medical_Doctor, Attend, Hospital
WHERE (Hospital.COUNTRY='Germany') AND
    (Medical_Doctor.[POSITION]='Research') AND
    Medical_Doctor.SSN_D=[Work].SSN_D AND [Work].NAME_H=Attend.NAME_H AND
    Attend.SSN=Patient.SSN