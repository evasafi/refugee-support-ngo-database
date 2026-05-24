# Refugee Support NGO Database

A comprehensive SQL Server database for tracking refugee beneficiary outcomes across employment training, language, housing, and integration programs.

## Project Overview

This project demonstrates:
- **Relational database design** with 8 tables modeling a real NGO workflow
- **Complex SQL queries** for impact analysis and performance metrics
- **Business intelligence**: employment rates, program effectiveness, staff caseload analysis

## Database Schema

- **Beneficiaries**: Refugee clients in the program
- **Staff**: Caseworkers, trainers, coordinators
- **Programs**: Language, employment, housing, integration tracks
- **BeneficiaryPrograms**: Enrollment records (tracks progression)
- **Sessions**: Individual training sessions
- **Attendance**: Session attendance tracking
- **Outcomes**: Certifications, job placements, housing secured
- **Employment**: Detailed job placement data (salary, retention)

## Key Metrics

From current dataset (10 beneficiaries):

| Metric | Value |
|--------|-------|
| **Employment Rate** | 50% |
| **Average Salary** | €1,510/month |
| **Certification Rate** | 40% |
| **Housing Secured** | 30% |
| **Program Completion** | 70% |

## Files

- `database/01_schema.sql` — Create tables
- `database/02_sample_data.sql` — Load 10 beneficiaries + programs
- `queries/` — Impact analysis queries (7 categories)
- `results/` — Query output and insights

## Key Findings

1. **Language + Culinary path** has highest ROI (100% employment for 2 beneficiaries)
2. **Job Readiness Training** combined with language skills = fastest employment (5-7 months)
3. **Attendance is predictive**: High attendance (>90%) correlates with outcomes
4. **Caseworker Fatima** has 60% employment rate vs. Aisha's 40% (caseload management opportunity)

## How to Use

1. Open SQL Server Management Studio
2. Create a new database: `RefugeeSupportNGO`
3. Run `database/01_schema.sql`
4. Run `database/02_sample_data.sql`
5. Run queries from `queries/` folder
6. Compare results to `results/` folder

## Next Steps

- Integrate Power BI/Tableau dashboards
- Add funnel analysis for program progression
- Expand to multi-year historical data
- Track long-term employment retention

## Tools Used

- SQL Server 2025
- T-SQL
- SSMS (SQL Server Management Studio)

---

**Author**: Eva Safi | Data Analyst  
**Dataset**: Fictitious refugee support NGO (demo data)
