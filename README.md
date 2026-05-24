# Refugee Support NGO Database

A comprehensive SQL Server database for tracking refugee beneficiary outcomes across employment training, language, housing, and integration programs. Includes 7 analytical query categories and deeper business intelligence insights.

## 📊 Project Overview

This project demonstrates:
- **Relational database design** with 8 normalized tables modeling a real NGO workflow
- **Advanced SQL analytics** across 17 queries covering employment, program effectiveness, attendance, and staff performance
- **Business intelligence**: impact metrics, at-risk identification, program ROI, staff caseload analysis
- **Data-driven decision making** for NGO operations optimization

## 🗄️ Database Schema

**8 Core Tables:**
- `Beneficiaries` — Refugee clients in the program (10 records)
- `Staff` — Caseworkers, trainers, coordinators (6 staff members)
- `Programs` — Language, employment, housing, integration tracks (6 programs)
- `BeneficiaryPrograms` — Enrollment records (19 enrollments)
- `Sessions` — Individual training sessions (15 sessions)
- `Attendance` — Session attendance tracking (50+ records)
- `Outcomes` — Certifications, job placements, housing secured (14 outcomes)
- `Employment` — Detailed job placement data (5 placements)

---

## 📈 Key Metrics at a Glance

| Metric | Value | Status |
|--------|-------|--------|
| **Total Beneficiaries** | 10 | Active |
| **Currently Employed** | 6 (60%) | ✅ Strong |
| **Job Placements** | 5 | ✅ Consistent |
| **Average Salary** | €1,510/month | 💼 Competitive |
| **Salary Range** | €1,350 - €1,700 | 💰 Solid |
| **Language Certifications** | 5 earned | 🎓 Effective |
| **Housing Secured** | 3 beneficiaries | 🏠 Progressing |
| **Program Completion Rate** | 70% | ✅ Good |
| **Overall Attendance Rate** | 91.7% | 🎯 Excellent |

---

## 💼 Employment Outcomes

### Who Got Employed (5 Successful Placements)

| Name | Country | Job Title | Employer | Monthly Salary | Months to Employment |
|------|---------|-----------|----------|-----------------|---------------------|
| **Amina Saeed** | Syria | Line Cook | Hotel Restaurant Sibaritide | €1,700 | 8 |
| **Farida Mohammad** | Afghanistan | Food Prep Cook | Trattoria Bella | €1,600 | 7 |
| **Hana Rashid** | Syria | Receptionist | Community Health Center | €1,500 | 4 |
| **Ahmed Ibrahim** | Syria | Kitchen Assistant | Restaurant Milano | €1,400 | 7 |
| **Leila Husein** | Syria | Customer Service Agent | Call Center Italia | €1,350 | 5 |

**Key Findings:**
- ⚡ **Fastest to Employment**: Hana Rashid (4 months from arrival)
- 💰 **Highest Salary**: Amina Saeed (€1,700/month — Line Cook)
- 🏭 **Top Sector**: Hospitality/Food Service (3 of 5 placements)
- 📊 **Salary Statistics**: Min €1,350, Max €1,700, Average €1,510

---

## 🎓 Program Effectiveness

### Program Completion Rates & Outcomes

| Program | Type | Enrolled | Completed | Active | Completion % | Total Outcomes |
|---------|------|----------|-----------|--------|------------|-----------------|
| **Culinary Skills Workshop** | Employment | 2 | 2 | 0 | **100%** ⭐ | 6 |
| **Italian Language Basics** | Language | 7 | 5 | 2 | **71.4%** | 12 |
| **Job Readiness Training** | Employment | 5 | 3 | 2 | **60%** | 6 |
| **Digital Literacy for Adults** | Integration | 2 | 1 | 1 | **50%** | 2 |
| **Healthcare & Social Services** | Integration | 2 | 0 | 2 | **0%** | 0 |
| **Housing Navigation Program** | Housing | 1 | 0 | 1 | **0%** | 0 |

**Program Popularity & Outcomes:**

| Program | Enrolled | Total Outcomes | Outcome Per Beneficiary |
|---------|----------|-----------------|------------------------|
| **Italian Language Basics** | 7 | 12 | 1.71 |
| **Job Readiness Training** | 5 | 6 | 1.20 |
| **Culinary Skills Workshop** | 2 | 6 | 3.0 ⭐ |
| **Digital Literacy for Adults** | 2 | 2 | 1.0 |
| **Healthcare & Social Services** | 2 | 0 | 0 |
| **Housing Navigation Program** | 1 | 0 | 0 |

**Key Insight**: **Culinary Skills Workshop** is the most efficient — smallest cohort (2) with highest outcome ratio (3 outcomes per beneficiary).

---

## 👥 Staff Performance & Caseload

### Caseworker Effectiveness

| Caseworker | Role | Caseload | Employed | Success Rate | Avg Months in Program |
|-----------|------|----------|----------|--------------|---------------------|
| **Fatima Ahmed** | Caseworker | 5 | 4 | **80%** ⭐ | 37 months avg |
| **Aisha Hassan** | Caseworker | 5 | 2 | **40%** | 38 months avg |

**Non-Direct Caseload Roles:**
- Marco Rossi (Trainer) — 0 direct beneficiaries
- Giovanni Bianchi (Employment Coordinator) — 0 direct beneficiaries
- Maria Conti (Language Trainer) — 0 direct beneficiaries
- David Moretti (Integration Officer) — 0 direct beneficiaries

**Key Finding**: **Fatima Ahmed leads** with 80% employment success rate (4 of 5 beneficiaries employed). Opportunity: analyze Fatima's approach and replicate with Aisha's caseload.

---

## 📍 Attendance & Engagement

### Individual Attendance Rates

| Beneficiary | Total Sessions | Present | Absent | Attendance Rate | Status |
|------------|-----------------|---------|--------|-----------------|--------|
| **Ahmed Ibrahim** | 7 | 7 | 0 | **100%** ⭐ | Employed |
| **Leila Husein** | 7 | 7 | 0 | **100%** ⭐ | Employed |
| **Amina Saeed** | 7 | 7 | 0 | **100%** ⭐ | Employed |
| **Karim Mahmoud** | 5 | 5 | 0 | **100%** ⭐ | In Program |
| **Hana Rashid** | 7 | 7 | 0 | **100%** ⭐ | Employed |
| **Zainab Ahmed** | 3 | 3 | 0 | **100%** ⭐ | Employed |
| **Farida Mohammad** | 7 | 6 | 1 | **85.7%** | Employed |
| **Hassan Ali** | 4 | 3 | 1 | **75%** | In Program |
| **Mohammed Khalil** | 4 | 3 | 1 | **75%** | In Program |
| **Omar Hassan** | 3 | 2 | 1 | **66.7%** | In Program |

**Attendance by Program:**

| Program | Total Sessions | Present | Attendance Rate |
|---------|-----------------|---------|-----------------|
| **Culinary Skills Workshop** | 6 | 6 | **100%** ⭐ |
| **Healthcare & Social Services** | 3 | 3 | **100%** ⭐ |
| **Job Readiness Training** | 15 | 14 | **93.3%** |
| **Italian Language Basics** | 25 | 23 | **92%** |
| **Digital Literacy for Adults** | 5 | 4 | **80%** |

**Critical Insight**: **6 beneficiaries have 100% attendance** and **5 of them are employed**. Strong correlation between attendance and employment outcomes.

---

## 🛤️ Beneficiary Journeys

### Multi-Program Participants (Who Completed Multiple Tracks)

| Beneficiary | Status | Programs | Program Pathway | Outcomes |
|------------|--------|----------|-----------------|----------|
| **Farida Mohammad** | Employed | 6 | Language → Language → Language → Culinary → Culinary → Culinary | 3 |
| **Amina Saeed** | Employed | 6 | Language → Language → Language → Culinary → Culinary → Culinary | 3 |
| **Leila Husein** | Employed | 4 | Language → Language → Job Readiness → Job Readiness | 2 |
| **Ahmed Ibrahim** | Employed | 4 | Language → Language → Job Readiness → Job Readiness | 2 |
| **Hana Rashid** | Employed | 4 | Language → Language → Job Readiness → Job Readiness | 2 |
| **Zainab Ahmed** | Employed | 2 | Digital Literacy → Digital Literacy | 2 |
| **Mohammed Khalil** | In Program | 2 | Job Readiness → Healthcare & Social Services | 0 |
| **Karim Mahmoud** | In Program | 2 | Job Readiness → Healthcare & Social Services | 0 |
| **Omar Hassan** | In Program | 2 | Housing Navigation → Italian Language | 0 |
| **Hassan Ali** | In Program | 2 | Digital Literacy → Italian Language | 0 |

**Successful Pathways (Leading to Employment):**
1. **Language + Culinary** (Farida, Amina) — 100% employment ⭐
2. **Language + Job Readiness** (Leila, Ahmed, Hana) — 100% employment ⭐
3. **Digital Literacy** (Zainab) — 100% employment ⭐

**In-Progress Pathways (No Outcomes Yet):**
- Job Readiness + Healthcare (Mohammed, Karim)
- Housing Navigation + Language (Omar)
- Digital Literacy + Language (Hassan)

---

## 🎯 Outcome Tracking

### Outcomes by Type

| Outcome Type | Total | Beneficiaries | Names |
|--------------|-------|----------------|-------|
| **Job Placement** | 5 | 5 | Ahmed Ibrahim, Amina Saeed, Farida Mohammad, Hana Rashid, Leila Husein |
| **Language Certification** | 5 | 5 | Ahmed Ibrahim, Amina Saeed, Farida Mohammad, Hana Rashid, Leila Husein |
| **Housing Secured** | 3 | 3 | Amina Saeed, Farida Mohammad, Zainab Ahmed |
| **Digital Literacy Certification** | 1 | 1 | Zainab Ahmed |

### Time from Arrival to First Employment

| Beneficiary | Arrival Date | Employment Date | Days to Employment | Months to Employment |
|------------|--------------|-----------------|------------------|---------------------|
| **Hana Rashid** | 2023-05-20 | 2023-09-10 | 113 | 4 |
| **Leila Husein** | 2023-04-12 | 2023-09-05 | 146 | 5 |
| **Ahmed Ibrahim** | 2023-02-10 | 2023-09-15 | 217 | 7 |
| **Farida Mohammad** | 2023-03-05 | 2023-10-20 | 229 | 7 |
| **Amina Saeed** | 2023-02-28 | 2023-10-25 | 239 | 8 |

**Time-to-Outcome Range**: 113-239 days (4-8 months) — Excellent velocity for employment outcomes.

---

## ⚠️ At-Risk Beneficiaries Analysis

### Who Might Need Intervention

| Beneficiary | Status | Days in Program | Sessions Attended | Absences | Attendance % | Outcomes |
|------------|--------|-----------------|-------------------|----------|-------------|----------|
| **Omar Hassan** | In Program | 35 | 3 | 1 | **66.7%** ⚠️ | 0 |
| **Hassan Ali** | In Program | 40 | 4 | 0 | **75%** ⚠️ | 0 |
| **Mohammed Khalil** | In Program | 36 | 4 | 1 | **75%** ⚠️ | 0 |

**Risk Factors:**
- All 3 are still "In Program" with **no outcomes achieved yet**
- Omar Hassan has **lowest attendance (66.7%)** — highest dropout risk
- Hassan Ali has been in program longest (40 days) with minimal progress
- Mohammed Khalil has 1 absence — attention needed

**Recommendation**: Conduct 1-on-1 check-ins with these beneficiaries; consider mentorship pairing with high-performing beneficiaries (Ahmed, Leila, Amina).

---

## 📊 Deeper Program Analysis

### Program ROI & Progression

| Program | Duration (days) | Completed | In Progress | Enrollment to Completion Time |
|---------|------------------|-----------|-------------|------------------------------|
| **Culinary Skills Workshop** | 122 | 2 | 0 | Shortest ⭐ |
| **Job Readiness Training** | 276 | 3 | 2 | Fast |
| **Italian Language Basics** | 375 | 5 | 2 | Medium |
| **Digital Literacy for Adults** | 574 | 1 | 1 | Longer |
| **Healthcare & Social Services** | 996 | 0 | 2 | Longest (ongoing) |
| **Housing Navigation Program** | 1088 | 0 | 1 | Longest (ongoing) |

**Key Insight**: **Culinary Skills moves fastest** (122 days average) and has **100% completion** — ideal for quick wins and momentum building.

---

## 💡 Summary Dashboard

### One-Page Impact Summary

```
REFUGEE SUPPORT NGO IMPACT REPORT
═══════════════════════════════════════════════════════════════

BENEFICIARIES SERVED:                           10 total
  ✅ Employed:                                   5 (50%)
  📚 In Active Programs:                         5 (50%)
  🎯 Outcomes Achieved:                          14 total

EMPLOYMENT OUTCOMES:
  💼 Total Placements:                           5
  💰 Average Salary:                             €1,510/month
  ⏱️  Average Time to Employment:                5.4 months
  🏭 Top Sector:                                 Hospitality/Food Service

PROGRAM PERFORMANCE:
  ⭐ Best Performing:                            Culinary (100% completion)
  🎓 Most Popular:                               Italian Language (7 enrolled)
  📈 Fastest Results:                            Culinary (122 days)
  🎯 Highest Engagement:                         Culinary & Healthcare (100% attendance)

QUALITY METRICS:
  👥 Overall Attendance Rate:                    91.7%
  📊 Program Completion Rate:                    70%
  🎯 Beneficiaries with 100% Attendance:         6 (60%)
  💼 Employment Rate (Multi-Program):            70% (7 of 10)

STAFF HIGHLIGHTS:
  ⭐ Top Caseworker:                             Fatima Ahmed (80% success rate)
  👥 Team Size:                                  6 staff (2 caseworkers, 4 specialists)
  
═══════════════════════════════════════════════════════════════
```

---

## 📁 Files in This Repository

```
refugee-support-ngo-database/
├── README.md                           # This comprehensive guide
├── database/
│   ├── 01_schema.sql                   # 8 table definitions
│   └── 02_sample_data.sql              # 10 beneficiaries + programs
├── queries/
│   ├── 01_employment_outcomes.sql
│   ├── 02_employment_statistics.sql
│   ├── 03_program_completion_rates.sql
│   ├── 04_program_popularity.sql
│   ├── 05_staff_performance.sql
│   ├── 06_attendance_by_beneficiary.sql
│   ├── 07_attendance_by_program.sql
│   ├── 08_beneficiary_journey.sql
│   ├── 09_program_pathway.sql
│   ├── 10_outcomes_by_type.sql
│   ├── 11_time_to_employment.sql
│   ├── 12_impact_dashboard.sql
│   ├── 13_at_risk_beneficiaries.sql
│   ├── 14_program_roi.sql
│   ├── 15_staff_caseload_analysis.sql
│   └── 16_bottleneck_analysis.sql
└── results/
    ├── Q1-Result.csv                   # Employment outcomes (5 placed)
    ├── Q1-Result2.csv                  # Employment statistics
    ├── Q2-Result.csv                   # Program completion rates
    ├── Q2-Result2.csv                  # Program popularity
    ├── Q3-Result.csv                   # Staff performance
    ├── Q4-Result.csv                   # Attendance by beneficiary
    ├── Q4-Result2.csv                  # Attendance by program
    ├── Q5-Result.csv                   # Beneficiary journeys
    ├── Q5-Result2.csv                  # Program pathways
    ├── Q6-Result.csv                   # Outcomes by type
    ├── Q6-Result2.csv                  # Time to employment
    ├── Q7-Result.csv                   # Impact dashboard
    ├── Q8-Result.csv                   # Program ROI
    ├── Q9-Result.csv                   # Deeper employment analysis
    ├── Q10-Result.csv                  # Staff caseload analysis
    ├── Q11-Result.csv                  # Bottleneck analysis
    └── At-Risk_Beneficiaries-Result.csv # At-risk identification
```

---

## 🚀 How to Use

### Step 1: Create the Database
```sql
CREATE DATABASE RefugeeSupportNGO;
```

### Step 2: Load Schema & Data
1. Open SQL Server Management Studio (SSMS)
2. Connect to SQL Server
3. Right-click `RefugeeSupportNGO` → **New Query**
4. Run `database/01_schema.sql` (creates 8 tables)
5. Run `database/02_sample_data.sql` (loads 10 beneficiaries + data)

### Step 3: Execute Queries
1. Open any query from `queries/` folder
2. Execute in SSMS
3. Export results to CSV
4. Compare with files in `results/` folder

---

## 🎯 Key Insights & Recommendations

### What's Working ✅

1. **Culinary Skills Program** is outperforming on efficiency
   - 100% completion, fastest duration, perfect outcomes ratio
   - **Action**: Scale or replicate for other sectors

2. **High attendance predicts employment**
   - 6 beneficiaries with 100% attendance, 5 are employed
   - **Action**: Implement early-warning system for <80% attendance

3. **Language + Job Readiness pathway is proven**
   - 5 of 5 beneficiaries (100%) employed
   - **Action**: Make this the standard pathway for employment-track participants

4. **Fatima Ahmed's casework approach is effective**
   - 80% employment success rate (4 of 5)
   - **Action**: Document her methods, mentor Aisha Hassan's caseload

### Areas for Improvement ⚠️

1. **3 beneficiaries at-risk of dropout**
   - Omar Hassan (66.7% attendance), Hassan Ali (0 outcomes after 40 days), Mohammed Khalil (low progress)
   - **Action**: Implement intervention protocol, 1-on-1 support, mentorship pairing

2. **Healthcare & Housing programs show 0 completion**
   - Both have only "In Progress" beneficiaries with no outcomes
   - **Action**: Review curriculum, increase support, integrate with employment programs

3. **Housing program has low enrollment**
   - Only 1 beneficiary enrolled
   - **Action**: Promote housing support more actively; bundle with employment outcomes

---

## 🛠️ Technical Specifications

- **Database Engine**: SQL Server 2025 (Express Edition)
- **Version**: 17.0.1000.7 (X64)
- **Environment**: Windows 10 Pro, Hypervisor
- **Query Tool**: SQL Server Management Studio (SSMS)
- **Language**: T-SQL
- **Normalization Level**: Third Normal Form (3NF)

### Query Techniques Used

- **JOINs**: LEFT JOIN, INNER JOIN for table relationships
- **Aggregation**: COUNT, SUM, AVG, MIN, MAX with CASE statements
- **Window Functions**: ROW_NUMBER, RANK for ranking
- **String Functions**: STRING_AGG for program sequences with ORDER BY
- **Date Functions**: DATEDIFF for duration calculations
- **Conditional Logic**: CASE WHEN for status categorization

---

## 📈 Next Steps & Future Enhancements

- [ ] Add Power BI dashboard for executive reporting
- [ ] Create Tableau interactive visualizations by beneficiary status
- [ ] Build funnel analysis for program drop-out prediction
- [ ] Implement automated at-risk alerts (attendance <80%)
- [ ] Expand to 12-month historical data for trend analysis
- [ ] Track long-term employment retention (6, 12, 24 months)
- [ ] Add beneficiary satisfaction survey results
- [ ] Integrate salary progression tracking
- [ ] Create custom reports for donor reporting
- [ ] Build API for real-time dashboard updates

---

## 👤 About This Project

**Type**: Portfolio Project — SQL Database Design & Analytics  
**Author**: Eva Safi | Data Analyst  
**University**: Üsküdar University, Istanbul  
**Date Created**: May 2026  
**Purpose**: Demonstrate database design, advanced SQL queries, and data-driven decision making for NGO operations

**Skills Demonstrated**:
- ✅ Relational database design (schema, normalization)
- ✅ Complex SQL queries (aggregation, JOINs, window functions)
- ✅ Data analysis and business intelligence
- ✅ KPI development and impact measurement
- ✅ Risk identification and decision support
- ✅ Documentation and reporting

**Dataset**: Fictitious refugee support NGO (demo data for educational purposes)

---

## 📄 License & Usage

This project is open-source for educational and portfolio purposes. Feel free to fork, modify, or adapt for your own NGO database projects.

---

**Last Updated**: May 24, 2026  
**Query Results Included**: 17 comprehensive analyses  
**Documentation Status**: Complete ✅
