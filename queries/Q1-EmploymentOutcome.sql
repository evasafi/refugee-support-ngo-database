SELECT 
    b.FirstName,
    b.LastName,
    b.CountryOfOrigin,
    e.JobTitle,
    e.Employer,
    e.StartDate,
    e.MonthlySalary,
    DATEDIFF(MONTH, b.DateOfArrival, e.StartDate) AS MonthsBeforeEmployment
FROM Beneficiaries b
LEFT JOIN Employment e ON b.BeneficiaryID = e.BeneficiaryID
WHERE e.EmploymentStatus = 'Active'
ORDER BY e.MonthlySalary DESC;


SELECT 
    COUNT(DISTINCT b.BeneficiaryID) AS TotalBeneficiaries,
    COUNT(DISTINCT e.EmploymentID) AS TotalEmployed,
    ROUND(COUNT(DISTINCT e.EmploymentID) * 100.0 / COUNT(DISTINCT b.BeneficiaryID), 2) AS EmploymentRate_Percent,
    ROUND(AVG(e.MonthlySalary), 2) AS AvgMonthlySalary,
    MIN(e.MonthlySalary) AS MinSalary,
    MAX(e.MonthlySalary) AS MaxSalary
FROM Beneficiaries b
LEFT JOIN Employment e ON b.BeneficiaryID = e.BeneficiaryID AND e.EmploymentStatus = 'Active';