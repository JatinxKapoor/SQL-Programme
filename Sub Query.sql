Create Database subquery;
use subquery;
CREATE TABLE ques (
    emp_id INT,
    name VARCHAR(50),
    dept_id INT,
    salary INT,
    age INT,
    city VARCHAR(50)
);

insert into ques (emp_id,name,dept_id,salary,age,city)
values
(1,'alice',101,50000,28,'new york'),
(2,'bob',102,55000,35,'chicago'),
(3,'charlie',101,60000,38,'los angeles'),
(4,'david',103,45000,25,'new york'),
(5,'eve',104,60000,45,'san diego');

CREATE TABLE dept (
    dept_id INT,
    dept_name VARCHAR(50)
);


insert into dept(dept_id,dept_name)
values
(101,'hr'),
(102,'sales'),
(103,'it'),
(104,'finance');


/* get the name of employees who earn maximum salary in each department */

select name , dept_id from ques where dept_id in ( select dept_id from ques group by dept_id having salary = ( select max(salary) from ques));

select name , dept_id from ques where dept_id in ( select dept_id from ques group by dept_id having salary = max(salary));

/* Find employees who are older than the average age of employees in their department */

select name , dept_id from ques where age > ( select avg(age) from ques);

select avg(age) from ques;

/* Find the name of employees who earn less than BOB*/

select name from ques where salary < ( select salary from ques where name = 'bob');

/* Get the name of employees who work in department with 2 employees*/

select name,dept_id from ques where dept_id in ( select dept_id from ques group by dept_id having count(dept_id)>=2);

/* Find the departments with no emplyees older than 30 */

select dept_id,dept_name from dept where dept_id NOT in ( select dept_id from ques where age > 30);

/* Get the names employees who live in the same city as highest - paid employees */

select name,city from ques where city = ( select city from ques where salary = (select max(salary) from ques));


/* Find the department with at least one employee earning more than 55000*/

select dept_name from dept where dept_id in ( select dept_id from ques where salary > 55000);



/* List the names of employees who are younger than all employees in it department */

insert into ques (emp_id,name,dept_id,salary,age,city)
values
(6,'Jatin',103,80000,19,'Delhi'),
(7,'Abhishek',103,70000,20,'Haryana');

SET SQL_SAFE_UPDATES = 0;


update ques 
set city = 'new york' where emp_id = 6;

update ques
set city = 'los angeles' where emp_id = 7;


select name,dept_id from ques where age = (select min(age) from ques where dept_id = ( select dept_id from dept where dept_name = 'it'));
