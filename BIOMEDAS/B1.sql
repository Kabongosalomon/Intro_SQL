SELECT DISTINCT Patient.NAME, Patient.AGE
FROM Patient, Attend, Hospital
WHERE (Hospital.COUNTRY='Germany' OR Hospital.COUNTRY='Spain') AND Hospital.NAME_H=Attend.NAME_H AND Attend.SSN=Patient.SSN