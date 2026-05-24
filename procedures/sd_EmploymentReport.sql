USE [RefugeeSupportNGO]
GO

/****** Object:  StoredProcedure [dbo].[sp_EmploymentReport]    Script Date: 5/24/2026 5:26:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_EmploymentReport]
AS
BEGIN
    SELECT 
        b.FirstName,
        b.LastName,
        e.JobTitle,
        e.Employer,
        e.MonthlySalary
    FROM Beneficiaries b
    LEFT JOIN Employment e ON b.BeneficiaryID = e.BeneficiaryID
    WHERE e.EmploymentStatus = 'Active'
    ORDER BY e.MonthlySalary DESC;
END;
GO


