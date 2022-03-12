create table Employee
(
  ID int,
  Name varchar(50),
  Salary int,
  DepartmentId int
);

insert into Employee values
('1', 'Joe', '85000', '1'),
('2', 'Henry', '80000', '2'),
('3', 'Sam', '60000', '2')'
('4', 'Max', '90000', '1')'
('5', 'Janet', '69000', '1'),
('6', 'Randy', '85000', '1'),
('7', 'Will', '70000', '1');

create table Department
(
  Id int,
  Name varchar(50)
);

insert into Department values
('1','IT'),
('2','Sales');

SELECT
    dpt.Name AS Department,
    e1.Name AS Employee,
    e1.Salary AS Salary
FROM Employee AS e1
INNER JOIN Department dpt
ON e1.DepartmentID = dpt.Id
WHERE 3 > (
           SELECT COUNT(DISTINCT Salary)
           FROM Employee AS e2
           WHERE e2.Salary > e1.Salary
           AND e1.DepartmentID = e2.DepartmentID
          )
ORDER BY
Department ASC,
Salary DESC;