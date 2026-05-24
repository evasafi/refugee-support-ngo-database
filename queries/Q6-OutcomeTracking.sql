SELECT 
    o.OutcomeType,
    COUNT(o.OutcomeID) AS TotalOutcomes,
    COUNT(DISTINCT o.BeneficiaryID) AS BeneficiariesReached,
    STRING_AGG(CONCAT(b.FirstName, ' ', b.LastName), ', ') WITHIN GROUP (ORDER BY b.FirstName) AS BeneficiaryNames
FROM Outcomes o
LEFT JOIN Beneficiaries b ON o.BeneficiaryID = b.BeneficiaryID
GROUP BY o.OutcomeType
ORDER BY TotalOutcomes DESC;


SELECT 
    b.FirstName,
    b.LastName,
    b.DateOfArrival,
    e.StartDate,
    DATEDIFF(DAY, b.DateOfArrival, e.StartDate) AS DaysToEmployment,
    DATEDIFF(MONTH, b.DateOfArrival, e.StartDate) AS MonthsToEmployment
FROM Beneficiaries b
JOIN Employment e ON b.BeneficiaryID = e.BeneficiaryID
WHERE e.EmploymentStatus = 'Active'
ORDER BY DaysToEmployment ASC;