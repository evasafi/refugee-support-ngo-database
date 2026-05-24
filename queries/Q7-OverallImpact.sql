SELECT 
    'Total Beneficiaries' AS Metric,
    CAST(COUNT(DISTINCT BeneficiaryID) AS VARCHAR) AS Value
FROM Beneficiaries

UNION ALL

SELECT 
    'Currently Employed',
    CAST(COUNT(DISTINCT BeneficiaryID) AS VARCHAR)
FROM Beneficiaries
WHERE CurrentStatus = 'Employed'

UNION ALL

SELECT 
    'Job Placements',
    CAST(COUNT(DISTINCT BeneficiaryID) AS VARCHAR)
FROM Employment
WHERE EmploymentStatus = 'Active'

UNION ALL

SELECT 
    'Avg Monthly Salary (Active Jobs)',
    CONCAT('€', ROUND(AVG(MonthlySalary), 2))
FROM Employment
WHERE EmploymentStatus = 'Active'

UNION ALL

SELECT 
    'Certifications Earned',
    CAST(COUNT(OutcomeID) AS VARCHAR)
FROM Outcomes
WHERE OutcomeType LIKE '%Certification%'

UNION ALL

SELECT 
    'Housing Secured',
    CAST(COUNT(OutcomeID) AS VARCHAR)
FROM Outcomes
WHERE OutcomeType = 'Housing Secured'

UNION ALL

SELECT 
    'Active Programs',
    CAST(COUNT(DISTINCT ProgramID) AS VARCHAR)
FROM Programs

UNION ALL

SELECT 
    'Total Sessions Delivered',
    CAST(COUNT(DISTINCT SessionID) AS VARCHAR)
FROM Sessions;