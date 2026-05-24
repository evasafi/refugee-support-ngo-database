# Stored Procedures

These are pre-built queries saved in the database for quick reporting.

## How to Use

```sql
EXEC sp_ProcedureName;
```

---

## Available Procedures

### 1. sp_EmploymentReport
**Purpose**: Get all employment placements with salary details

**Usage**:
```sql
EXEC sp_EmploymentReport;                          -- All placements
EXEC sp_EmploymentReport '2023-06-01', '2023-12-31'; -- Custom date range
```

**Returns**: Employee name, job title, employer, salary, months to employment

---

### 2. sp_BeneficiaryStatusDashboard
**Purpose**: Quick overview of beneficiary statuses (Employed vs In Program)

**Usage**:
```sql
EXEC sp_BeneficiaryStatusDashboard;
```

**Returns**: Status breakdown with counts and percentages

---

### 3. sp_ProgramScorecard
**Purpose**: Program performance metrics (completion rates, outcomes, attendance)

**Usage**:
```sql
EXEC sp_ProgramScorecard;
```

**Returns**: All programs with completion %, enrollments, outcomes

---

### 4. sp_StaffPerformanceReview
**Purpose**: Staff caseload and success rates

**Usage**:
```sql
EXEC sp_StaffPerformanceReview;
```

**Returns**: Each staff member's caseload, employment success rate, total outcomes

---

### 5. sp_AtRiskBeneficiaries
**Purpose**: Identify beneficiaries at risk of drop-out

**Usage**:
```sql
EXEC sp_AtRiskBeneficiaries;                    -- Default (attendance <80%)
EXEC sp_AtRiskBeneficiaries 75, 45;            -- Custom (attendance <75%, >45 days)
```

**Returns**: Beneficiaries with low attendance or no progress, risk level

---

## Installation

1. Open SQL Server Management Studio
2. Connect to `RefugeeSupportNGO`
3. Run `procedures/sp_EmploymentReport.sql` (or all of `03_procedures.sql`)
4. Test with: `EXEC sp_EmploymentReport;`

---

## Benefits

- ✅ One-line queries instead of long SQL
- ✅ Reusable for reports and dashboards
- ✅ Parameters allow custom date ranges
- ✅ Faster than writing queries each time