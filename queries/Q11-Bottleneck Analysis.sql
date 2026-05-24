SELECT 
    p.ProgramName,
    COUNT(DISTINCT bp.BeneficiaryID) AS TotalEnrolled,
    SUM(CASE WHEN bp.Status = 'Completed' THEN 1 ELSE 0 END) AS Completed,
    SUM(CASE WHEN bp.Status = 'Active' THEN 1 ELSE 0 END) AS StillActive,
    ROUND(AVG(DATEDIFF(DAY, bp.EnrollmentDate, COALESCE(bp.CompletionDate, GETDATE()))), 0) AS AvgDaysInProgram
FROM Programs p
LEFT JOIN BeneficiaryPrograms bp ON p.ProgramID = bp.ProgramID
GROUP BY p.ProgramID, p.ProgramName
ORDER BY AvgDaysInProgram DESC;