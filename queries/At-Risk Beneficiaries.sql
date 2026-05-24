SELECT 
    b.FirstName,
    b.LastName,
    b.CurrentStatus,
    DATEDIFF(MONTH, b.DateOfArrival, GETDATE()) AS MonthsSinceArrival,
    COUNT(DISTINCT a.AttendanceID) AS SessionsAttended,
    SUM(CASE WHEN a.AttendanceStatus = 'Absent' THEN 1 ELSE 0 END) AS Absences,
    ROUND(SUM(CASE WHEN a.AttendanceStatus = 'Present' THEN 1 ELSE 0 END) * 100.0 / 
          NULLIF(COUNT(a.AttendanceID), 0), 2) AS AttendanceRate_Percent,
    COUNT(DISTINCT o.OutcomeID) AS OutcomesAchieved
FROM Beneficiaries b
LEFT JOIN Attendance a ON b.BeneficiaryID = a.BeneficiaryID
LEFT JOIN Outcomes o ON b.BeneficiaryID = o.BeneficiaryID
GROUP BY b.BeneficiaryID, b.FirstName, b.LastName, b.CurrentStatus, b.DateOfArrival
HAVING COUNT(DISTINCT a.AttendanceID) > 0
ORDER BY AttendanceRate_Percent ASC;