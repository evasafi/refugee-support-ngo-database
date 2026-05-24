SELECT 
    b.FirstName,
    b.LastName,
    DATEDIFF(DAY, b.DateOfArrival, MIN(o.OutcomeDate)) AS DaysToFirstOutcome,
    DATEDIFF(MONTH, b.DateOfArrival, MIN(o.OutcomeDate)) AS MonthsToFirstOutcome,
    COUNT(DISTINCT o.OutcomeID) AS TotalOutcomes,
    MIN(o.OutcomeDate) AS FirstOutcomeDate
FROM Beneficiaries b
LEFT JOIN Outcomes o ON b.BeneficiaryID = o.BeneficiaryID
WHERE o.OutcomeID IS NOT NULL
GROUP BY b.BeneficiaryID, b.FirstName, b.LastName, b.DateOfArrival
ORDER BY DaysToFirstOutcome ASC;