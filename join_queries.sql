-- Which employees belong to which department
SELECT E.EmpName, D.DeptName
FROM Employees E
INNER JOIN Departments D ON E.DeptID = D.DeptID;


-- Which projects employees are working on
SELECT E.EmpName, P.ProjectName
FROM Employees E
INNER JOIN EmployeeProjects EP ON E.EmpID = EP.EmpID
INNER JOIN Projects P ON EP.ProjectID = P.ProjectID;


-- Which projects are linked to which clients
SELECT ProjectName, ClientName
FROM Projects;


-- Employees who are free (not assigned to any project)
SELECT E.EmpName
FROM Employees E
LEFT JOIN EmployeeProjects EP ON E.EmpID = EP.EmpID
WHERE EP.ProjectID IS NULL;


-- Departments that currently have no employees assigned
SELECT D.DeptName
FROM Departments D
LEFT JOIN Employees E ON D.DeptID = E.DeptID
WHERE E.EmpID IS NULL;


-- List of all departments and their employees
SELECT D.DeptName, E.EmpName
FROM Employees E
RIGHT JOIN Departments D ON E.DeptID = D.DeptID;


-- List of all projects and employees working on them
SELECT P.ProjectName, E.EmpName
FROM EmployeeProjects EP
RIGHT JOIN Projects P ON EP.ProjectID = P.ProjectID
LEFT JOIN Employees E ON EP.EmpID = E.EmpID;


-- List of all employees and departments together
SELECT E.EmpName, D.DeptName
FROM Employees E
FULL OUTER JOIN Departments D ON E.DeptID = D.DeptID;


-- List of all employees and projects combined
SELECT E.EmpName, P.ProjectName
FROM Employees E
FULL OUTER JOIN EmployeeProjects EP ON E.EmpID = EP.EmpID
FULL OUTER JOIN Projects P ON EP.ProjectID = P.ProjectID;
