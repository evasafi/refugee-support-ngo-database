USE RefugeeSupportNGO;

-- Staff Members (Caseworkers, Trainers, Coordinators)
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL, 
    HireDate DATE NOT NULL,
    Email VARCHAR(150),
    Phone VARCHAR(20)
);

-- Beneficiaries (Refugees)
CREATE TABLE Beneficiaries (
    BeneficiaryID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    DateOfArrival DATE NOT NULL,
    CountryOfOrigin VARCHAR(100),
    CurrentStatus VARCHAR(50), -- In Program, Employed, Independent, etc.
    AssignedStaffID INT NOT NULL,
    FOREIGN KEY (AssignedStaffID) REFERENCES Staff(StaffID)
);

-- Programs (Employment Training, Language, Housing, Integration)
CREATE TABLE Programs (
    ProgramID INT PRIMARY KEY IDENTITY(1,1),
    ProgramName VARCHAR(150) NOT NULL,
    ProgramType VARCHAR(50) NOT NULL, -- Employment, Language, Housing, Integration
    Description VARCHAR(500),
    StartDate DATE,
    EndDate DATE
);

-- Beneficiary-Program Enrollment (tracks progression through programs)
CREATE TABLE BeneficiaryPrograms (
    BeneficiaryProgramID INT PRIMARY KEY IDENTITY(1,1),
    BeneficiaryID INT NOT NULL,
    ProgramID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    CompletionDate DATE,
    Status VARCHAR(50), -- Active, Completed, Dropped Out
    FOREIGN KEY (BeneficiaryID) REFERENCES Beneficiaries(BeneficiaryID),
    FOREIGN KEY (ProgramID) REFERENCES Programs(ProgramID)
);

-- Sessions (individual training sessions within programs)
CREATE TABLE Sessions (
    SessionID INT PRIMARY KEY IDENTITY(1,1),
    ProgramID INT NOT NULL,
    SessionDate DATE NOT NULL,
    Topic VARCHAR(200),
    FacilitatorID INT,
    Location VARCHAR(200),
    FOREIGN KEY (ProgramID) REFERENCES Programs(ProgramID),
    FOREIGN KEY (FacilitatorID) REFERENCES Staff(StaffID)
);

-- Attendance (tracks who attended which sessions)
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY IDENTITY(1,1),
    BeneficiaryID INT NOT NULL,
    SessionID INT NOT NULL,
    AttendanceStatus VARCHAR(50), -- Present, Absent, Excused
    FOREIGN KEY (BeneficiaryID) REFERENCES Beneficiaries(BeneficiaryID),
    FOREIGN KEY (SessionID) REFERENCES Sessions(SessionID)
);

-- Outcomes (Employment, Housing, Certification, Integration Milestones)
CREATE TABLE Outcomes (
    OutcomeID INT PRIMARY KEY IDENTITY(1,1),
    BeneficiaryID INT NOT NULL,
    OutcomeType VARCHAR(100), -- Job Placement, Housing Secured, Language Certification, etc.
    OutcomeDate DATE NOT NULL,
    Description VARCHAR(500),
    FOREIGN KEY (BeneficiaryID) REFERENCES Beneficiaries(BeneficiaryID)
);

-- Employment Details (for tracking job placements and retention)
CREATE TABLE Employment (
    EmploymentID INT PRIMARY KEY IDENTITY(1,1),
    BeneficiaryID INT NOT NULL,
    JobTitle VARCHAR(150),
    Employer VARCHAR(200),
    StartDate DATE NOT NULL,
    EndDate DATE,
    MonthlySalary DECIMAL(10, 2),
    EmploymentStatus VARCHAR(50), -- Active, Completed, Terminated
    FOREIGN KEY (BeneficiaryID) REFERENCES Beneficiaries(BeneficiaryID)
);