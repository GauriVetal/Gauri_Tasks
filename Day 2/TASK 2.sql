USE ED;

-- Create a primary key constraint on the DepartmentID column in the Departments table.
CREATE TABLE Departments(DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50) NOT NULL);

CREATE TABLE Projects(ProjectID INT Primary Key, ProjectName VARCHAR(100) Not Null, DepartmentID INT);


INSERT INTO Departments values(1, 'Marketing');
INSERT INTO Departments values(2, 'Sales');
INSERT INTO Departments values(3, 'IT');
INSERT INTO Departments values(4, 'Finance');
INSERT INTO Departments values(5, 'HR');


SELECT * FROM Employees

-- update DeptID in Employees Table
update Employees set DepartmentID=1 where EmployeeId=1;
update Employees set DepartmentID=1 where EmployeeId=1;
update Employees set DepartmentID=2 where EmployeeId=2;
update Employees set DepartmentID=1 where EmployeeId=3;
update Employees set DepartmentID=2 where EmployeeId=4;
update Employees set DepartmentID=4 where EmployeeId=5;


CREATE TABLE Projects(ProjectID INT Primary Key, ProjectName VARCHAR(100) Not Null);

-- Create a foreign key constraint in the Projects table to reference the DepartmentID in the Departments table.
ALTER TABLE Projects ADD COLUMN departmentid int, add foreign key(departmentid) references departments(DepartmentID);

-- insert records into projects
insert into Projects values(1,'Project A', 1);
insert into Projects values(2, 'Project B', 2);
insert into Projects values(3,'Project C', 3);
insert into Projects values(4, 'Project D', 4);
insert into Projects values(5,'Project E', 5);

-- Create a constraint to ensure that the salary of an employee is greater than 0.
ALTER TABLE Employees ADD CHECK (Salary > 0);

-- Create a foreign key constraint in the Employees table to reference the DepartmentID in the Departments table
ALTER TABLE Employees ADD CONSTRAINT fk_department FOREIGN KEY(DepartmentID)  REFERENCES Departments(DepartmentID);

-- Create a unique constraint on the Email column in the Employees table.
ALTER TABLE Employees ADD UNIQUE(Email);

-- Insert a new employee with a DepartmentID that does not exist in the Departments table and observe the foreign key constraint violation.
INSERT INTO Employees VALUES (18, 'Jqe', 'thh', 'jqqe.th@example.com', 7, 65000);


-- Attempt to insert a duplicate email address into the Employees table and observe the unique constraint violation.
INSERT INTO Employees VALUES(12, 'xyz','gfg','abc.gg@company.com', 75000, 'HR');

-- Delete a department from the Departments table that is being referenced by the Employees table and observe the foreign key constraint violation.
DELETE FROM Departments WHERE DepartmentID=1;

-- Update the DepartmentID of an existing employee to a value that does not exist in the Departments table and observe the foreign key constraint violation.
UPDATE Employees SET DepartmentID=2 WHERE EmployeeID=1;


