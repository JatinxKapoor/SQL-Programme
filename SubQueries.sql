create database employee;
use employee;
create table emp(
emp_id int ,
name varchar(50),
department varchar(50),
salary int);
create table dept(
dept_id int,
dept_name varchar(50));
insert into emp(emp_id,name,department,salary)
values
(1,'john','hr',5000),
(2,'alice','it',7000),
(3,'bob','finance',6000),
(4,'eve','it',8000),
(5,'charlie','finance',7500);
insert into dept(dept_id,dept_name)
values
(1,'hr'),
(2,'it'),
(3,'finance');

# Find employees with salaries greater than the average salary of all employees.

select name,salary from emp where salary > (select avg(salary) from emp); 

# Find employees whose salary is higher than the salary of 'Alice'. 

select name,salary from emp where salary > ( select salary from emp where name = 'alice');

# List employees who belong to a department that has the name 'IT'.

select name from emp where department in ( select dept_name from dept where dept_name = 'it');

# Get the names of employees who earn the highest salary in their department.
 
select name,department,salary from emp where salary in ( select max(salary) from emp group by department);

#  Retrieve the departments where at least one employee earns more than 7000. 

select dept_name from dept where dept_name in ( select department from emp where salary > 7000);

# List employees who do not belong to any department in the departments table. 

select name from emp where department in ( select dept_name from dept group by dept_name having count(dept_name) = 0);

# Find the second-highest salary among employees. 

select name from emp where salary = ( select salary from emp order by salary desc limit 1 offset 1 );

# Retrieve the names of employees who work in the department with the highest number of employees. 

select name , department from emp where department in  ( select department from emp group by department having count(department)>1);

#  Find employees who earn more than the average salary in their department.

select name , department from emp where salary in (select avg(salary) from emp group by department );

# Retrieve employees whose salary is above 7000 and belong to departments in the departments table. 

select name , department from emp where salary > 7000 and department in (select dept_name from dept);

# List all departments that have no employees. 

select department from emp where emp_id in ( select emp_id from emp group by emp_id having count(emp_id) = 0);

#  Find employees who have the same salary as another employee in a different department. 

select name from emp e1 where salary in ( select salary from emp e2 where e1.department != e2.department and e1.salary = e2.salary);

# Get the total salary of the department with the maximum total salary. 

select department, sum(salary), max(salary)
from emp
group by department;

#  Retrieve employees whose department has more than two employees. 

select  name , department from emp where department in ( select department from emp group by department having count(department) >= 2);

# 15. Find employees whose salary is higher than the average salary of employees in the IT department.

select name from emp where salary > ( select avg(salary) from emp where department = 'it');

