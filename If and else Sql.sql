Create database data;
use data;
create table employee(
emp_id int not null,
name varchar(10),
department varchar(10),
salary int not null,
joining_year int not null);

insert into employee(emp_id,name,department,salary,joining_year)
values
(101,"Alice","HR",60000,2020),
(102,"Bob","IT",75000,2018),
(103,"Charlie","FINANCE",50000,2021),
(104,"David","IT",80000,2015),
(105,"Eve","HR",45000,2022);

/* Write a query to calculate a  10% bonus if the salary is greater than or equal to 60000. otherwise, calculate a 5% bnous, display emp_id,name and the calculated bonus. */

select emp_id,name,
IF(salary >= 60000 , salary * 0.10 , salary *0.05) AS 'Bonus' 
from employee;

alter table employee
rename emp;

# 2. Write a query to classify employee as "experinced" if their joining_year is before 2020 and "Newcomer" otherwise. display emp_id, name and the cetegory.

select emp_id , name , department , 
if (joining_year<2020 , "experinced" , "Newcomer") as category
from emp;

# 3. Write a query to diplay emp_id, name and a status of "High earner" or "Average earner" for employee in the "IT" department, depanding on whether salary exceeds 75000.

select emp_id , name , department ,
if(salary > 75000 ,"High Earner","Average Earner" ) as "Status" from emp where department = 'IT';

# 4. Write a query to mark employee as "eligible for promotion" if they are in "IT" department and their salary is greater then 70000. Mark other as "Not eligible".

select emp_id , name , department ,
if(salary > 70000 And Department = 'IT',"eligible for promotion","not eligible" ) as "Status" from emp ;

# 5. Determine if emp_id in the employee table is even or odd. 

select emp_id , name,
if(mod(emp_id, 2) = 0 , 'EVEN' , 'ODD') from emp; 

# 6. Check wheather joining_year is leap year or not.

SELECT emp_id, name, joining_year,
       IF((joining_year % 4 = 0 AND joining_year % 100 != 0) OR (joining_year % 400 = 0), 'Leap year', 'Not a leap year') AS leap_year_status
FROM emp;

