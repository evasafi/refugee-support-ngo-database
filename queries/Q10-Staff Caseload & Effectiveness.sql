SELECT 
    s.FirstName,
    s.LastName,
    s.Role,
    COUNT(DISTINCT b.BeneficiaryID) AS CaseloadSize,
    COUNT(DISTINCT CASE WHEN b.CurrentStatus = 'Employed' THEN b.BeneficiaryID END) AS EmployedCount,
    ROUND(COUNT(DISTINCT CASE WHEN b.CurrentStatus = 'Employed' THEN b.BeneficiaryID END) * 100.0 / 
          NULLIF(COUNT(DISTINCT b.BeneficiaryID), 0), 2) AS SuccessRate_Percent,
    ROUND(AVG(DATEDIFF(MONTH, b.DateOfArrival, GETDATE())), 1) AS AvgMonthsInProgram
FROM Staff s
LEFT JOIN Beneficiaries b ON s.StaffID = b.AssignedStaffID
GROUP BY s.StaffID, s.FirstName, s.LastName, s.Role
ORDER BY SuccessRate_Percent DESC;