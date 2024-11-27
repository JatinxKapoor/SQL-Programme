create database Office;
use Office;

Insert into department(dept_id,dept_name)
values
(101,'HR'),
(102,'Sales'),
(103,'IT'),
(104,'Marketing');

Insert into employee(emp_id,emp_name,dept_id,salary)
values
(1,'Alice',101,6000),
(2,'Bob',102,7000),
(3,'Charlie',103,8000),
(4,'David',104,7500),
(5,'Eve',105,8500);

/* retrieve employ name and department name for each employee*/

/* find all the employees who work in the sales department */

select * from employee
join department 
on employee.dept_id = department.dept_id
where department.dept_name = 'sales';

select e.emp_name,d.dept_name
from employee e
Left join department d
on e.dept_id=d.dept_id;

insert into project(project_id,project_name,dept_id)
values
(1,'A',101),
(2,'B',102),
(3,'C',103),
(4,'D',104);

/* list projects names along with the department names.*/

select p.project_name,d.dept_name
from project p
left join department d
on p.dept_id=d.dept_id;

/* Retrieve the department name for employees whose salary is more than 7500*/

select emp_name,dept_name,salary
from employee e
left join department d
on d.dept_id=e.dept_id
where salary > 7500;



/* find the number of employees in each department */

select d.dept_name,count(e.emp_id) as "total number of employees"
from department d
right join employee e
on d.dept_id=e.dept_id
group by d.dept_name 
order by d.dept_name;


/* Get total salary of each departmant*/

select d.dept_name,sum(e.salary)
from department d
inner join employee e
on d.dept_id=e.dept_id
group by d.dept_name;


update employee
set dept_id=101 where emp_id=5;

/* Find all departments that have no employees */

select d.dept_name,count(e.emp_id)
from department d
left join employee e
on d.dept_id=e.dept_id
group by d.dept_name
having count(e.emp_id)=0;

/* List the employees names and their respective project names.*/

select e.emp_id,e.emp_name,p.project_name
from employee e
right join project p
on e.dept_id = p.dept_id;

/* find the employee and the project name for employees in hr department;*/

select e.emp_name,e.emp_id,p.project_name,d.dept_name
from employee e
inner join project p
on e.dept_id = p.dept_id
right join department d
on e.dept_id = d.dept_id
where d.dept_name = 'hr';

/* Retrieve deparments with more than 1 project name */

select d.dept_id,p.project_name
from department d
inner join project p
on d.dept_id = p.dept_id
where d.dept_id
having p.project_name>1;

/* Find employees who work in departments that are not assigned any projects.*/

select * from department;
select * from project;

select d.dept_name,d.dept_id,e.emp_name,e.emp_id,count(p.project_name)
from department d
right join employee e
on d.dept_id = e.dept_id
left join project p
on d.dept_id = p.dept_id
group by e.emp_id
having count(p.project_name)=0;

/* List the departments along with the number of employees and projects */

select d.dept_name,sum(e.emp_id),count(p.project_name)
from department d 
left join employee e 
on d.dept_id = e.emp_id
left join project p
on d.dept_id=p.dept_id
group by d.dept_id
having count(p.project_name)>0;

/* get the department and total salary spent on employees for deparetment with atleast 2 employees*/

select d.dept_id,sum(salary)
from department d
left join  employee e
on d.dept_id = e.dept_id
group by d.dept_id
having sum(salary) > 2 Limit 2;
























