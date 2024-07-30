CREATE DATABASE ED;

USE ED;

CREATE TABLE Employees (EmployeeID INT PRIMARY KEY, FirstName VARCHAR(50) NOT NULL,LastName VARCHAR(50) NOT NULL, Email VARCHAR(50) NOT NULL,Salary INT NOT NULL, Department VARCHAR(50));
INSERT INTO Employees VALUES(1,'John','Doe','john.doe@company.com',60000,'Marketing');
INSERT INTO Employees VALUES(2, 'Jane', 'Smith', 'jane.smith@company.com',  75000, 'Sales');
INSERT INTO Employees VALUES(3,  'Michael', 'Johnson',  'michael.johnson@company.com', 85000, 'Marketing');
INSERT INTO Employees VALUES(4,  'Emily',  'Williams', 'emily.williams@company.com',  72000, 'IT');
INSERT INTO Employees VALUES(5,  'David', 'Brown',  'david.brown@company.com', 65000, 'Sales');
INSERT INTO Employees VALUES(6,  'Sarah', 'Davis',  'sarah.davis@company.com',  90000, 'IT');
INSERT INTO Employees VALUES(7,  'Robert', 'Miller', 'robert.miller@company.com', 70000, 'Finance');
INSERT INTO Employees VALUES(8,  'Jessica',  'Wilson',  'jessica.wilson@company.com',  65000, 'Finance');
INSERT INTO Employees VALUES(9,  'Daniel',  'Anderson', 'daniel.anderson@company.com',  72000,  'IT');
INSERT INTO Employees VALUES(10,  'Ashley',  'Taylor','ashley.taylor@company.com',  58000, 'Sales');
INSERT INTO Employees VALUES(11, 'William',  'Brown',  'william.brown@company.com',  78000, 'Marketing');
INSERT INTO Employees VALUES(12, 'Sophia',  'Davis', 'sophia.davis@company.com',  62000, 'HR');

-- Dispaly Records
Select *from Employees;

-- Create a constraint to ensure that the salary of an employee is greater than 0.
ALTER TABLE Employees ADD CHECK (Salary>0);

-- ADDING COLUMN 
ALTER TABLE Employees ADD COLUMN(DepartmentID INT);

-- Create a foreign key constraint in the Employees table to reference the DepartmentID in the Departments table.
ALTER TABLE Employees ADD CONSTRAINT fk_department FOREIGN KEY(DepartmentID)  REFERENCES Departments(DepartmentID);

-- Create a unique constraint on the Email column in the Employees table.
ALTER TABLE Employees ADD UNIQUE(Email);

-- Create a primary key constraint on the DepartmentID column in the Departments table.
CREATE TABLE Departments(DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50) NOT NULL);

-- Create a foreign key constraint in the Projects table to reference the DepartmentID in the Departments table.
ALTER TABLE Projects ADD COLUMN departmentid int, add foreign key(departmentid) references departments(DepartmentID);

-- Insert a new employee with a DepartmentID that does not exist in the Departments table and observe the foreign key constraint violation.
INSERT INTO Employees VALUES (18, 'Jqe', 'thh', 'jqqe.th@example.com', 7, 65000);

-- Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation.
INSERT INTO Employees VALUES(12, 'xyz','gfg','abc.gg@company.com', 75000, 'HR');

-- Delete a department from the Departments table that is being referenced by the Employees table and observe the foreign key constraint violation.
DELETE FROM Departments WHERE DepartmentID=1;

-- Update the DepartmentID of an existing employee to a value that does not exist in the Departments table and observe the foreign key constraint violation
UPDATE Employees SET DepartmentID=2 WHERE EmployeeID=1;






