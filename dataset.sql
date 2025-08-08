-- Departments Table
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

-- Employees Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    JobTitle VARCHAR(50),
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Projects Table
CREATE TABLE Projects (
    ProjectID VARCHAR(10) PRIMARY KEY,
    ProjectName VARCHAR(100),
    ClientName VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- EmployeeProjects Table (Many-to-Many relationship)
CREATE TABLE EmployeeProjects (
    EmpID INT,
    ProjectID VARCHAR(10),
    PRIMARY KEY (EmpID, ProjectID),
    FOREIGN KEY (EmpID) REFERENCES Employees(EmpID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);


INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(1, 'IT', 'Mumbai'),
(2, 'HR', 'Delhi'),
(3, 'Finance', 'Bengaluru'),
(4, 'Marketing', 'Hyderabad');

INSERT INTO Employees (EmpID, EmpName, DeptID, JobTitle) VALUES
(101, 'Amit', 1, 'Software Eng'),
(102, 'Priya', 2, 'HR Manager'),
(103, 'Ravi', 1, 'Data Analyst'),
(104, 'Kiran', 3, 'Accountant'),
(105, 'Neha', NULL, 'Consultant');

INSERT INTO Projects (ProjectID, ProjectName, ClientName, DeptID) VALUES
('P001', 'ERP', 'Infosys', 1),
('P002', 'Payroll', 'TCS', 3),
('P003', 'Hiring Drive', 'Wipro', 2),
('P004', 'Ad Campaign', 'Reliance', 4);

INSERT INTO EmployeeProjects (EmpID, ProjectID) VALUES
(101, 'P001'),
(103, 'P001'),
(104, 'P002');
