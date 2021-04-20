SELECT DISTINCT Medical_Doctor.NAME_D, Medical_Doctor.SSN_D
FROM Medical_Doctor
WHERE (Medical_Doctor.[POSITION]!='Research' and Medical_Doctor.[POSITION]!='Professor')