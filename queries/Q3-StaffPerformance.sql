SELECT 
    s.FirstName,
    s.LastName,
    s.Role,
    COUNT(DISTINCT b.BeneficiaryID) AS BeneficiariesAssigned,
    COUNT(DISTINCT CASE WHEN b.CurrentStatus = 'Employed' THEN b.BeneficiaryID END) AS EmployedBeneficiaries,
    ROUND(COUNT(DISTINCT CASE WHEN b.CurrentStatus = 'Employed' THEN b.BeneficiaryID END) * 100.0 / NULLIF(COUNT(DISTINCT b.BeneficiaryID), 0), 2) AS SuccessRate_Percent
FROM Staff s
LEFT JOIN Beneficiaries b ON s.StaffID = b.AssignedStaffID
GROUP BY s.StaffID, s.FirstName, s.LastName, s.Role
ORDER BY BeneficiariesAssigned DESC;