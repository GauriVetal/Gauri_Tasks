USE ED;

-- - Select the first name, last name, and salary of the top 3 employees with the highest salaries.
SELECT FirstName, LastName, Salary FROM Employees ORDER BY Salary DESC LIMIT 3;

-- Select the first name, last name, and salary of the top 3 employees with the lowest salaries.
SELECT FirstName, LastName, Salary FROM Employees ORDER BY Salary  LIMIT 3;

-- Select the first name, last name, and salary of the employee with the 2nd highest salary.
SELECT FirstName, LastName, Salary FROM Employees ORDER BY Salary DESC  LIMIT 1,1;

--  Select the first name, last name, and salary of the employee with the 2nd lowest salary.
SELECT FirstName, LastName, Salary FROM Employees ORDER BY Salary  LIMIT 1,1;

-- Select the first name, last name, and salary of the employee with the 3rd highest salary.
SELECT FirstName, LastName, Salary FROM Employees ORDER BY Salary DESC  LIMIT 3,1;

--  Select the first name, last name, and salary of the employee with the 3rd lowest salary.
SELECT FirstName, LastName, Salary FROM Employees ORDER BY Salary  LIMIT 3,1;

--  Select the first name, last name, email, and salary of employees with a salary between 65000 and 80000, ordered by their first name in descending order, and limit the result to 3 rows.
SELECT FirstName, LastName, Email, Salary FROM Employees WHERE Salary BETWEEN 65000 AND 80000 ORDER BY FirstName DESC LIMIT 3;

 

 
 

 