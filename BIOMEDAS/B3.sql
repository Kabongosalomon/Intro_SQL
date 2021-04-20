SELECT DISTINCT Medical_Doctor.SSN_D
FROM Patient, Treat, Medical_Doctor
WHERE (Patient.AGE>=50) AND 
    Medical_Doctor.SSN_D=Treat.SSN_D AND Treat.SSN=Patient.SSN