USE RefugeeSupportNGO;

-- Insert Staff
INSERT INTO Staff (FirstName, LastName, Role, HireDate, Email, Phone)
VALUES
    ('Fatima', 'Ahmed', 'Caseworker', '2023-01-15', 'fatima.ahmed@ngo.org', '555-0101'),
    ('Marco', 'Rossi', 'Trainer', '2023-02-20', 'marco.rossi@ngo.org', '555-0102'),
    ('Aisha', 'Hassan', 'Caseworker', '2023-03-10', 'aisha.hassan@ngo.org', '555-0103'),
    ('Giovanni', 'Bianchi', 'Employment Coordinator', '2023-01-01', 'giovanni.bianchi@ngo.org', '555-0104'),
    ('Maria', 'Conti', 'Language Trainer', '2023-04-05', 'maria.conti@ngo.org', '555-0105'),
    ('David', 'Moretti', 'Integration Officer', '2023-05-12', 'david.moretti@ngo.org', '555-0106');

-- Insert Programs
INSERT INTO Programs (ProgramName, ProgramType, Description, StartDate, EndDate)
VALUES
    ('Italian Language Basics', 'Language', 'A1-A2 level Italian language training', '2023-06-01', '2023-09-30'),
    ('Job Readiness Training', 'Employment', 'Resume writing, interview skills, workplace culture', '2023-06-15', '2023-08-31'),
    ('Culinary Skills Workshop', 'Employment', 'Food preparation and hospitality sector training', '2023-07-01', '2023-10-31'),
    ('Housing Navigation Program', 'Housing', 'Help with finding and securing housing', '2023-05-01', '2024-12-31'),
    ('Digital Literacy for Adults', 'Integration', 'Computer and online skills training', '2023-08-01', '2023-11-30'),
    ('Healthcare & Social Services', 'Integration', 'Understanding Italian healthcare and social systems', '2023-09-01', '2024-03-31');

-- Insert Beneficiaries (assigned to different caseworkers)
INSERT INTO Beneficiaries (FirstName, LastName, DateOfArrival, CountryOfOrigin, CurrentStatus, AssignedStaffID)
VALUES
    ('Ahmed', 'Ibrahim', '2023-02-10', 'Syria', 'Employed', 1),
    ('Farida', 'Mohammad', '2023-03-05', 'Afghanistan', 'Employed', 1),
    ('Hassan', 'Ali', '2023-01-20', 'Somalia', 'In Program', 3),
    ('Leila', 'Husein', '2023-04-12', 'Syria', 'Employed', 1),
    ('Mohammed', 'Khalil', '2023-05-15', 'Yemen', 'In Program', 3),
    ('Zainab', 'Ahmed', '2023-03-22', 'Afghanistan', 'Employed', 3),
    ('Omar', 'Hassan', '2023-06-01', 'South Sudan', 'In Program', 1),
    ('Amina', 'Saeed', '2023-02-28', 'Syria', 'Employed', 3),
    ('Karim', 'Mahmoud', '2023-04-05', 'Palestine', 'In Program', 3),
    ('Hana', 'Rashid', '2023-05-20', 'Syria', 'Employed', 1);

-- Insert Beneficiary Enrollments in Programs
INSERT INTO BeneficiaryPrograms (BeneficiaryID, ProgramID, EnrollmentDate, CompletionDate, Status)
VALUES
    (1, 1, '2023-06-01', '2023-09-30', 'Completed'), -- Ahmed in Italian
    (1, 2, '2023-06-15', '2023-08-31', 'Completed'), -- Ahmed in Job Readiness
    (2, 1, '2023-06-01', '2023-09-30', 'Completed'), -- Farida in Italian
    (2, 3, '2023-07-01', '2023-10-31', 'Completed'), -- Farida in Culinary
    (3, 1, '2023-08-15', NULL, 'Active'), -- Hassan in Italian
    (3, 5, '2023-08-01', NULL, 'Active'), -- Hassan in Digital Literacy
    (4, 1, '2023-06-01', '2023-09-30', 'Completed'), -- Leila in Italian
    (4, 2, '2023-06-15', '2023-08-31', 'Completed'), -- Leila in Job Readiness
    (5, 2, '2023-06-15', '2023-08-31', 'Active'), -- Mohammed in Job Readiness
    (5, 6, '2023-09-01', NULL, 'Active'), -- Mohammed in Healthcare
    (6, 5, '2023-08-01', '2023-11-30', 'Completed'), -- Zainab in Digital Literacy
    (7, 1, '2023-08-15', NULL, 'Active'), -- Omar in Italian
    (7, 4, '2023-06-01', NULL, 'Active'), -- Omar in Housing Navigation
    (8, 1, '2023-06-01', '2023-09-30', 'Completed'), -- Amina in Italian
    (8, 3, '2023-07-01', '2023-10-31', 'Completed'), -- Amina in Culinary
    (9, 2, '2023-06-15', NULL, 'Active'), -- Karim in Job Readiness
    (9, 6, '2023-09-01', NULL, 'Active'), -- Karim in Healthcare
    (10, 1, '2023-06-01', '2023-09-30', 'Completed'), -- Hana in Italian
    (10, 2, '2023-06-15', '2023-08-31', 'Completed'); -- Hana in Job Readiness

-- Insert Sessions
INSERT INTO Sessions (ProgramID, SessionDate, Topic, FacilitatorID, Location)
VALUES
    (1, '2023-06-05', 'Alphabet and Basic Greetings', 5, 'Community Center - Room A'),
    (1, '2023-06-12', 'Numbers and Days of Week', 5, 'Community Center - Room A'),
    (1, '2023-06-19', 'Food and Restaurant Vocabulary', 5, 'Community Center - Room A'),
    (1, '2023-07-03', 'Family and Relationships', 5, 'Community Center - Room A'),
    (2, '2023-06-20', 'Resume Writing Workshop', 2, 'Training Room B'),
    (2, '2023-06-27', 'Interview Skills Practice', 2, 'Training Room B'),
    (2, '2023-07-04', 'Workplace Rights and Culture', 2, 'Training Room B'),
    (3, '2023-07-10', 'Food Safety and Hygiene', 2, 'Commercial Kitchen'),
    (3, '2023-07-24', 'Meal Preparation Basics', 2, 'Commercial Kitchen'),
    (3, '2023-08-07', 'Customer Service Skills', 2, 'Commercial Kitchen'),
    (5, '2023-08-08', 'Computer Basics and Internet', 5, 'Digital Lab'),
    (5, '2023-08-22', 'Email and Online Safety', 5, 'Digital Lab'),
    (5, '2023-09-05', 'Job Search Online', 5, 'Digital Lab'),
    (6, '2023-09-12', 'Italian Healthcare System', 6, 'Training Room C'),
    (6, '2023-09-26', 'Social Services Overview', 6, 'Training Room C');

-- Insert Attendance
INSERT INTO Attendance (BeneficiaryID, SessionID, AttendanceStatus)
VALUES
    (1, 1, 'Present'), (1, 2, 'Present'), (1, 3, 'Present'), (1, 4, 'Present'),
    (1, 5, 'Present'), (1, 6, 'Present'), (1, 7, 'Present'),
    (2, 1, 'Present'), (2, 2, 'Absent'), (2, 3, 'Present'), (2, 4, 'Present'),
    (2, 8, 'Present'), (2, 9, 'Present'), (2, 10, 'Present'),
    (3, 1, 'Present'), (3, 2, 'Present'), (3, 11, 'Present'), (3, 12, 'Excused'),
    (4, 1, 'Present'), (4, 2, 'Present'), (4, 3, 'Present'), (4, 4, 'Present'),
    (4, 5, 'Present'), (4, 6, 'Present'), (4, 7, 'Present'),
    (5, 5, 'Present'), (5, 6, 'Absent'), (5, 7, 'Present'), (5, 14, 'Present'),
    (6, 11, 'Present'), (6, 12, 'Present'), (6, 13, 'Present'),
    (7, 1, 'Present'), (7, 2, 'Present'), (7, 3, 'Absent'),
    (8, 1, 'Present'), (8, 2, 'Present'), (8, 3, 'Present'), (8, 4, 'Present'),
    (8, 8, 'Present'), (8, 9, 'Present'), (8, 10, 'Present'),
    (9, 5, 'Present'), (9, 6, 'Present'), (9, 7, 'Present'), (9, 14, 'Present'), (9, 15, 'Present'),
    (10, 1, 'Present'), (10, 2, 'Present'), (10, 3, 'Present'), (10, 4, 'Present'),
    (10, 5, 'Present'), (10, 6, 'Present'), (10, 7, 'Present');

-- Insert Outcomes
INSERT INTO Outcomes (BeneficiaryID, OutcomeType, OutcomeDate, Description)
VALUES
    (1, 'Language Certification', '2023-09-30', 'Completed A2 Italian Language Certification'),
    (1, 'Job Placement', '2023-09-15', 'Hired as Kitchen Assistant at Restaurant Milano'),
    (2, 'Language Certification', '2023-09-30', 'Completed A2 Italian Language Certification'),
    (2, 'Job Placement', '2023-10-20', 'Hired as Food Prep Cook at Trattoria Bella'),
    (2, 'Housing Secured', '2023-08-15', 'Secured apartment in central district'),
    (4, 'Language Certification', '2023-09-30', 'Completed A2 Italian Language Certification'),
    (4, 'Job Placement', '2023-09-05', 'Hired as Customer Service Agent at Call Center'),
    (6, 'Digital Literacy Certification', '2023-11-30', 'Completed Digital Literacy Program'),
    (6, 'Housing Secured', '2023-07-20', 'Secured shared apartment with other beneficiaries'),
    (8, 'Language Certification', '2023-09-30', 'Completed A2 Italian Language Certification'),
    (8, 'Job Placement', '2023-10-25', 'Hired as Line Cook at Hotel Restaurant'),
    (8, 'Housing Secured', '2023-07-10', 'Secured apartment in Terranova neighborhood'),
    (10, 'Language Certification', '2023-09-30', 'Completed A2 Italian Language Certification'),
    (10, 'Job Placement', '2023-09-10', 'Hired as Receptionist at Community Health Center');

-- Insert Employment Details
INSERT INTO Employment (BeneficiaryID, JobTitle, Employer, StartDate, EndDate, MonthlySalary, EmploymentStatus)
VALUES
    (1, 'Kitchen Assistant', 'Restaurant Milano', '2023-09-15', NULL, 1400.00, 'Active'),
    (2, 'Food Prep Cook', 'Trattoria Bella', '2023-10-20', NULL, 1600.00, 'Active'),
    (4, 'Customer Service Agent', 'Call Center Italia', '2023-09-05', NULL, 1350.00, 'Active'),
    (8, 'Line Cook', 'Hotel Restaurant Sibaritide', '2023-10-25', NULL, 1700.00, 'Active'),
    (10, 'Receptionist', 'Community Health Center', '2023-09-10', NULL, 1500.00, 'Active');