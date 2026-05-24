USE [RefugeeSupportNGO]
GO

/****** Object:  StoredProcedure [dbo].[sp_ProgramScorecard]    Script Date: 5/24/2026 5:32:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProgramScorecard]
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
        p.ProgramID,
        p.ProgramName,
        p.ProgramType,
        COUNT(DISTINCT bp.BeneficiaryID) AS Enrolled,
        SUM(CASE WHEN bp.Status = 'Completed' THEN 1 ELSE 0 END) AS Completed,
        SUM(CASE WHEN bp.Status = 'Active' THEN 1 ELSE 0 END) AS Active,
        CASE 
            WHEN COUNT(bp.BeneficiaryProgramID) > 0 
            THEN ROUND(SUM(CASE WHEN bp.Status = 'Completed' THEN 1 ELSE 0 END) * 100.0 / COUNT(bp.BeneficiaryProgramID), 2)
            ELSE 0
        END AS CompletionRate,
        COUNT(DISTINCT o.OutcomeID) AS TotalOutcomes
    FROM Programs p
    LEFT JOIN BeneficiaryPrograms bp ON p.ProgramID = bp.ProgramID
    LEFT JOIN Beneficiaries b ON bp.BeneficiaryID = b.BeneficiaryID
    LEFT JOIN Outcomes o ON b.BeneficiaryID = o.BeneficiaryID
    GROUP BY p.ProgramID, p.ProgramName, p.ProgramType
    ORDER BY CompletionRate DESC;
END;
GO


