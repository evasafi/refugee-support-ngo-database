USE [RefugeeSupportNGO]
GO

/****** Object:  StoredProcedure [dbo].[sp_BeneficiaryStatusDashboard]    Script Date: 5/24/2026 5:29:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- PROCEDURE 2: Beneficiary Status Dashboard
CREATE PROCEDURE [dbo].[sp_BeneficiaryStatusDashboard]
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
        CurrentStatus,
        COUNT(*) AS Count,
        ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Beneficiaries), 2) AS Percentage,
        STRING_AGG(CONCAT(FirstName, ' ', LastName), ', ') WITHIN GROUP (ORDER BY FirstName) AS Names
    FROM Beneficiaries
    GROUP BY CurrentStatus
    ORDER BY Count DESC;
END;
GO


