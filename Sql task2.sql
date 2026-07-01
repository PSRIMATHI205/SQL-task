create database Assignment;
use Assignment;
-- create table
create table Department(
dept_id int primary key,
dept_name varchar(30)
);
desc Department;
create table Employee(
emp_id int primary key,
emp_name varchar(30),
dept_id int,
salary int);
desc Employee;
-- insert the data
insert into Department(dept_id,Dept_name)
values(101,'IT'),
(102,'HR'),
(103,'Testing'),
(104,'Development');
select * from Department;
insert into Employee(emp_id,emp_name,dept_id,salary)
values(1, 'Arun', 101, 45000),
(2, 'Bhavya', 102, 52000),
(3, 'Chitra', 101, 47000),
(4, 'Dinesh', 103, 39000),
(5, 'Esha', NULL, 41000),
(6, 'Farhan', 104, 55000);
select * from Employee;
-- 1) inner join
select e.emp_name,d.dept_name,e.salary from Employee e inner join DEpartment d on e.dept_id = d.dept_id;
-- 2) left join
select e.emp_name,d.dept_name,e.salary from Employee e left join Department d on e.dept_id = d.dept_id;   
-- 3) right join 
SELECT e.emp_name,d.dept_name,e.salary FROM Employee e RIGHT JOIN Department d ON e.dept_id = d.dept_id;
-- 5) left anti join
SELECT e.* FROM Employee e LEFT JOIN department d ON e.dept_id = d.dept_id WHERE d.dept_id IS NULL;
-- 6)right anti join
SELECT d.* FROM Department d LEFT JOIN Employee e ON d.dept_id = e.dept_id WHERE e.emp_id IS NULL;
-- 7)inner join
SELECT e.emp_name, d.dept_name,e.salary FROM Employee e, Department d WHERE e.dept_id = d.dept_id;
-- 8)alternative left join
select e.emp_name,d.dept_name,e.salary from Employee e left join Department d on e.dept_id = d.dept_id;   
SELECT e.emp_name,d.dept_name,e.salary FROM Department d RIGHT JOIN Employee e ON d.dept_id = e.dept_id;
-- alternative right join
SELECT e.emp_name,d.dept_name,e.salary FROM Employee e RIGHT JOIN Department d ON e.dept_id = d.dept_id;
SELECT e.emp_name,d.dept_name,e.salary FROM Department d LEFT JOIN Employee e ON d.dept_id = e.dept_id;
-- 9) cross join
SELECT e.emp_name,d.dept_name FROM Employee e CROSS JOIN Department d;
-- 10) self join
ALTER TABLE Employee ADD ManagerID INT;
select * from Employee;
-- 
UPDATE Employee SET ManagerID = 2 WHERE emp_id = 1;
UPDATE Employee SET ManagerID = 6 WHERE emp_id  = 3;
UPDATE Employee SET ManagerID = 2 WHERE emp_id  = 4;
UPDATE Employee SET ManagerID = 6 WHERE emp_id  = 5;
UPDATE Employee SET ManagerID = NULL WHERE emp_id = 2;
UPDATE Employee SET ManagerID = NULL WHERE emp_id  = 6;
-- 
SELECT e.emp_name AS Employe,m.Emp_name AS Manager FROM Employee e LEFT JOIN Employee m ON e.ManagerID = m.emp_id;
