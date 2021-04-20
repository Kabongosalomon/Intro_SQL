SELECT DISTINCT Medical_Doctor.SSN_D
FROM Patient, Treat, Medical_Doctor
WHERE (Patient.AGE>65 and Patient.AGE<80) AND 
    Medical_Doctor.SSN_D=Treat.SSN_D AND Treat.SSN=Patient.SSN