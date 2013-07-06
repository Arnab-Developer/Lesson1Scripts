USE [Lesson1Database]
GO

-- Create table.
CREATE TABLE Employees
(
    EmployeeId INT NOT NULL IDENTITY(1, 1),
    Name VARCHAR(20) NOT NULL,
    Department VARCHAR(20) NOT NULL,
    Designation VARCHAR(10) NOT NULL,
    BasicSalary INT NOT NULL,
    Picture VARBINARY(MAX) NULL,

    -- Primary key.
    CONSTRAINT pk_Employees PRIMARY KEY (EmployeeId)
)
GO

-- Check for basic salary.
ALTER TABLE Employees
ADD CONSTRAINT ck_BasicSalary CHECK (BasicSalary >= 2000 AND BasicSalary <= 7000)
GO

-- Insert data.
INSERT INTO Employees (Name, Department, Designation, BasicSalary)
VALUES ('Rajat', 'ACCTS', 'MGR', 6500),
       ('Madhurima', 'MKTG', 'MGR', 6000),
       ('Rajnish', 'PERS', 'CLRK', 4500),
       ('Rakhi', 'ACCTS', 'CLRK', 3000),
       ('Sachin', 'MKTG', 'SALES', 2000),
       ('Virat', 'PERS', 'MGR', 7000),
       ('Mukesh', 'ACCTS', 'CLRK', 2500)
GO

-- Select data in ascending order of 'Name'.
SELECT E.Name, E.Department, E.Designation, E.BasicSalary, E.Picture
FROM Employees AS E
ORDER BY E.Name
GO

-- Insert a new field 'Remark'.
ALTER TABLE Employees
ADD Remark VARCHAR(MAX) NULL
GO

-- Write 'Remark' for first employee 'Rajat'.
UPDATE Employees
SET Remark = 'He is a good employee.'
WHERE EmployeeId = 1
GO
