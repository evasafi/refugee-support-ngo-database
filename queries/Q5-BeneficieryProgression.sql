SELECT 
    b.FirstName,
    b.LastName,
    b.CurrentStatus,
    COUNT(bp.BeneficiaryProgramID) AS ProgramsEnrolled,
    STRING_AGG(p.ProgramName, ' → ') WITHIN GROUP (ORDER BY bp.EnrollmentDate) AS ProgramSequence,
    COUNT(DISTINCT o.OutcomeID) AS TotalOutcomes
FROM Beneficiaries b
LEFT JOIN BeneficiaryPrograms bp ON b.BeneficiaryID = bp.BeneficiaryID
LEFT JOIN Programs p ON bp.ProgramID = p.ProgramID
LEFT JOIN Outcomes o ON b.BeneficiaryID = o.BeneficiaryID
GROUP BY b.BeneficiaryID, b.FirstName, b.LastName, b.CurrentStatus
HAVING COUNT(bp.BeneficiaryProgramID) > 1
ORDER BY COUNT(bp.BeneficiaryProgramID) DESC;


SELECT 
    b.FirstName,
    b.LastName,
    b.CurrentStatus,
    COUNT(DISTINCT bp.ProgramID) AS ProgramsEnrolled,
    STRING_AGG(p.ProgramName, ' → ') WITHIN GROUP (ORDER BY bp.EnrollmentDate) AS ProgramSequence,
    COUNT(DISTINCT o.OutcomeID) AS TotalOutcomes
FROM Beneficiaries b
LEFT JOIN BeneficiaryPrograms bp ON b.BeneficiaryID = bp.BeneficiaryID
LEFT JOIN Programs p ON bp.ProgramID = p.ProgramID
LEFT JOIN Outcomes o ON b.BeneficiaryID = o.BeneficiaryID
GROUP BY b.BeneficiaryID, b.FirstName, b.LastName, b.CurrentStatus
HAVING COUNT(bp.BeneficiaryProgramID) > 1
ORDER BY COUNT(bp.BeneficiaryProgramID) DESC;