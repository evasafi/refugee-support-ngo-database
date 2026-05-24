SELECT 
    b.FirstName,
    b.LastName,
    COUNT(a.AttendanceID) AS TotalSessions,
    SUM(CASE WHEN a.AttendanceStatus = 'Present' THEN 1 ELSE 0 END) AS PresentCount,
    SUM(CASE WHEN a.AttendanceStatus = 'Absent' THEN 1 ELSE 0 END) AS AbsentCount,
    SUM(CASE WHEN a.AttendanceStatus = 'Excused' THEN 1 ELSE 0 END) AS ExcusedCount,
    ROUND(SUM(CASE WHEN a.AttendanceStatus = 'Present' THEN 1 ELSE 0 END) * 100.0 / COUNT(a.AttendanceID), 2) AS AttendanceRate_Percent
FROM Beneficiaries b
LEFT JOIN Attendance a ON b.BeneficiaryID = a.BeneficiaryID
GROUP BY b.BeneficiaryID, b.FirstName, b.LastName
ORDER BY AttendanceRate_Percent DESC;


SELECT 
    p.ProgramType,
    p.ProgramName,
    COUNT(a.AttendanceID) AS TotalSessionsHeld,
    SUM(CASE WHEN a.AttendanceStatus = 'Present' THEN 1 ELSE 0 END) AS TotalPresent,
    ROUND(SUM(CASE WHEN a.AttendanceStatus = 'Present' THEN 1 ELSE 0 END) * 100.0 / COUNT(a.AttendanceID), 2) AS OverallAttendanceRate_Percent
FROM Programs p
JOIN Sessions s ON p.ProgramID = s.ProgramID
LEFT JOIN Attendance a ON s.SessionID = a.SessionID
GROUP BY p.ProgramID, p.ProgramType, p.ProgramName
ORDER BY OverallAttendanceRate_Percent DESC;