USE [RefugeeSupportNGO]
GO

/****** Object:  StoredProcedure [dbo].[sp_StaffPerformanceReview]    Script Date: 5/24/2026 5:32:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- PROCEDURE 4: Staff Performance Review
CREATE PROCEDURE [dbo].[sp_StaffPerformanceReview]
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
        s.StaffID,
        s.FirstName,
        s.LastName,
        s.Role,
        COUNT(DISTINCT b.BeneficiaryID) AS CaseloadSize,
        COUNT(DISTINCT CASE WHEN b.CurrentStatus = 'Employed' THEN b.BeneficiaryID END) AS EmployedCount,
        ROUND(COUNT(DISTINCT CASE WHEN b.CurrentStatus = 'Employed' THEN b.BeneficiaryID END) * 100.0 / 
              NULLIF(COUNT(DISTINCT b.BeneficiaryID), 0), 2) AS SuccessRate,
        COUNT(DISTINCT o.OutcomeID) AS TotalOutcomes,
        ROUND(AVG(DATEDIFF(MONTH, b.DateOfArrival, GETDATE())), 1) AS AvgMonthsInProgram
    FROM Staff s
    LEFT JOIN Beneficiaries b ON s.StaffID = b.AssignedStaffID
    LEFT JOIN Outcomes o ON b.BeneficiaryID = o.BeneficiaryID
    GROUP BY s.StaffID, s.FirstName, s.LastName, s.Role
    ORDER BY SuccessRate DESC;
END;
GO


