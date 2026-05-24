SELECT 
    p.ProgramName,
    p.ProgramType,
    COUNT(bp.BeneficiaryProgramID) AS TotalEnrollments,
    SUM(CASE WHEN bp.Status = 'Completed' THEN 1 ELSE 0 END) AS Completed,
    SUM(CASE WHEN bp.Status = 'Active' THEN 1 ELSE 0 END) AS Active,
    SUM(CASE WHEN bp.Status = 'Dropped Out' THEN 1 ELSE 0 END) AS DroppedOut,
    ROUND(SUM(CASE WHEN bp.Status = 'Completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(bp.BeneficiaryProgramID), 2) AS CompletionRate_Percent
FROM Programs p
LEFT JOIN BeneficiaryPrograms bp ON p.ProgramID = bp.ProgramID
GROUP BY p.ProgramID, p.ProgramName, p.ProgramType
ORDER BY CompletionRate_Percent DESC;


SELECT 
    p.ProgramName,
    COUNT(DISTINCT bp.BeneficiaryID) AS EnrolledBeneficiaries,
    COUNT(DISTINCT o.OutcomeID) AS OutcomesAchieved
FROM Programs p
LEFT JOIN BeneficiaryPrograms bp ON p.ProgramID = bp.ProgramID
LEFT JOIN Beneficiaries b ON bp.BeneficiaryID = b.BeneficiaryID
LEFT JOIN Outcomes o ON b.BeneficiaryID = o.BeneficiaryID
GROUP BY p.ProgramID, p.ProgramName
ORDER BY EnrolledBeneficiaries DESC;