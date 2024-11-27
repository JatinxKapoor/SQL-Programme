create database Public;

use Public;

CREATE TABLE Information (
    Id INT NOT NULL UNIQUE,
    Age INT NOT NULL CHECK (Age >= 18),
    Name VARCHAR(50) NOT NULL,
    Phone VARCHAR(10) NOT NULL,
    City VARCHAR(50) NOT NULL Default ("Delhi")
);

Insert into Information (Id,Age,Name,sPhone)
values
(1,20,"Jatin","1234567890"),
(2,20,"Jatin","1234567890"),
(3,20,"Jatin","1234567890"),
(4,20,"Jatin","1234567890"),
(5,20,"Jatin","1234567890"),
(6,20,"Jatin","1234567890"),
(7,20,"Jatin","1234567890");

SELECT 
    *
FROM
    Information;

SELECT 
    name, id
FROM
    Information;

SELECT 
    id AS pub_id, name AS pub_name
FROM
    Information;

SELECT 
    name
FROM
    Information
WHERE
    age = 20;

SELECT 
    *
FROM
    Information
WHERE
    Id = 2;

alter table Information 
add Email varchar (50) ;

alter table Information
modify Email varchar (50) after id;

alter table Information
change Id Sno int;

alter table Information
drop column Sno;

alter table information
rename Public_info;

alter table information
add gender varchar(1) ;

SELECT 
    *
FROM
    information;

SELECT 
    *
FROM
    information
WHERE
    age <= 21;

SELECT 
    *
FROM
    information
WHERE
    age >= 21;

SELECT 
    *
FROM
    information
WHERE
    city = 'agra';

SELECT 
    *
FROM
    information;

SELECT 
    *
FROM
    information
WHERE
    age > 18 AND age < 21;

SELECT 
    *
FROM
    information
WHERE
    age > 18 OR age < 20;

SELECT 
    *
FROM
    information
WHERE
    age = 18 AND city = 'Delhi';

SELECT 
    *
FROM
    information
WHERE
    age = 18 OR city = 'Delhi';

SELECT 
    *
FROM
    information
WHERE
    city = 'Bhopal' OR city = 'Delhi';

SELECT 
    *
FROM
    information
WHERE
    NOT (city = 'Delhi' OR city = 'Agra');

SELECT 
    *
FROM
    information
WHERE
    city != 'Delhi' AND city != 'Agra';

SELECT 
    *
FROM
    information
WHERE
    gender = 'M' AND city = 'Delhi'
        OR city = 'Agra';

SELECT 
    *
FROM
    information
WHERE
    age IN (18 , 21);


use public;


SELECT 
    *
FROM
    information
WHERE
    age = 18 OR age = 19 OR age = 20;

SELECT 
    *
FROM
    information
WHERE
    age IN (18 , 20);

SELECT 
    *
FROM
    information
WHERE
    NOT city IN ('Delhi' , 'Bhopal');

UPDATE information 
SET 
    name = 'Ram'
WHERE
    id = 1;

SELECT 
    *
FROM
    information;



insert into information( ID, NAME ,age, gender,PHONE,CITY)
values
(8,"Ram kumar",19,"M",4022155,"Agra"),
(9,"Sarita kumari",21,"F",4034421,"Delhi"),
(10,"Salman khan",20,"M",4056221,"Agra"),
(11,"Juhi chawla",18,"F",4089821,"Bhopal"),
(12,"Anil kapoor",22,"M",4025221,"Agra"),
(13,"John abrahim",21,"M",4033776,"Delhi");

 set sql_safe_updates=0;
 
 
UPDATE information 
SET 
    age = 18
WHERE
    id = 1;


UPDATE information 
SET 
    age = 19;

UPDATE information 
SET 
    age = 18
WHERE
    id = 2 OR id = 3;

use public;

SELECT 
    *
FROM
    information;

SELECT 
    *
FROM
    information
WHERE
    age BETWEEN 18 AND 21;
 
SELECT 
    *
FROM
    information
WHERE
    id BETWEEN 2 AND 5;
 
SELECT 
    *
FROM
    information
WHERE
    name BETWEEN 'a' AND 'k';
 
 
DELETE FROM information 
WHERE
    id = 1;
 
DELETE FROM information 
WHERE
    age > 21;
 
 truncate table information;
 
 drop table information;
 
SELECT 
    *
FROM
    information
WHERE
    name LIKE 'S%';
 
SELECT 
    *
FROM
    information
WHERE
    name LIKE '%R';
 
SELECT 
    *
FROM
    information
WHERE
    name LIKE '%am%';
 
SELECT 
    *
FROM
    information
WHERE
    phone LIKE '%21';
 
SELECT 
    *
FROM
    information
WHERE
    name LIKE '_a%';
 
SELECT 
    *
FROM
    information
WHERE
    name LIKE '__a%';
 
SELECT 
    *
FROM
    information
WHERE
    name LIKE '___n%';
 
SELECT 
    *
FROM
    information
WHERE
    name REGEXP 'ra';
 
SELECT 
    *
FROM
    information
WHERE
    name REGEXP '^ra';

SELECT 
    *
FROM
    information
WHERE
    name REGEXP 'an$';
 
SELECT 
    *
FROM
    information
WHERE
    name REGEXP 'ram|kapoor|khan';

SELECT 
    *
FROM
    information
WHERE
    name REGEXP '^ram|kapoor|^khan';


SELECT 
    *
FROM
    information
WHERE
    name REGEXP '^ram|kapoor|khan$';
 
 
SELECT 
    *
FROM
    information
WHERE
    name REGEXP '[rm]';
    
    
SELECT 
    *
FROM
    information
WHERE
    name REGEXP '[is]';
    
    
SELECT 
    *
FROM
    information
WHERE
    name REGEXP '[rm]a';
    
    
SELECT 
    *
FROM
    information
WHERE
    name REGEXP '[rmh]a';
    
SELECT 
    *
FROM
    information
WHERE
    name REGEXP 'r[am]';
    
SELECT 
    *
FROM
    information
ORDER BY name;
    
SELECT 
    *
FROM
    information
ORDER BY name ASC;
    
SELECT 
    *
FROM
    information
ORDER BY name DESC;

SELECT 
    *
FROM
    information
ORDER BY name , city;

SELECT 
    *
FROM
    information
WHERE
    city = 'agra'
ORDER BY name DESC;

SELECT 
    *
FROM
    information
ORDER BY name;

use public;
    
SELECT 
    *
FROM
    information
WHERE
    city = 'delhi'
ORDER BY name DESC;

SELECT DISTINCT
    city
FROM
    information;

UPDATE information 
SET 
    city = 'agra',
    name = 'jatin',
    phone = 1234567
WHERE
    id = 8;
    
SELECT 
    *
FROM
    information;
  
SELECT 
    *
FROM
    information
WHERE
    city = 'agra'
LIMIT 5;
  
SELECT 
    name, city
FROM
    information
WHERE
    city = 'agra'
LIMIT 3;
  
SELECT 
    COUNT(*)
FROM
    information;
  
SELECT 
    COUNT(name)
FROM
    information;
  
SELECT 
    COUNT(DISTINCT city)
FROM
    information;
  
SELECT 
    AVG(age) AS average_age
FROM
    information;
  
SELECT 
    AVG(name)
FROM
    information;
  
SELECT 5 + 6;
  
SELECT 5 * 6 AS total;
  
  use public;
  
SELECT 15 / 3;
  
SELECT 16 % 3;
  
SELECT 
    id, name, age + 5 AS 'new age'
FROM
    information;
  
SELECT PI();
  
SELECT ROUND(PI(), 2);

SELECT ROUND(100 / 3, 4);
  
SELECT ROUND(4.3);
  
SELECT ROUND(4.7);
  
SELECT ROUND(4.5);
  
SELECT CEIL(4.1);

SELECT FLOOR(4.3);
  
SELECT CEIL(4.0);

SELECT FLOOR(4.0);

SELECT CEIL(4.01);

SELECT FLOOR(4.01);

SELECT POW(4, 3);

SELECT SQRT(64);

SELECT SQRT(5), ROUND(SQRT(5), 2);

SELECT ABS(- 2.25);

SELECT ABS(2.25);

SELECT ABS(+ 2);

SELECT SIGN(- 25);
 
SELECT SIGN(25);

SELECT SIGN(0);

SELECT RAND();

SELECT RAND() * 100;


SELECT 
    id, UPPER(name), age
FROM
    information;

SELECT 
    id, UCASE(name), age
FROM
    information;

SELECT 
    id, LOWER(name), age
FROM
    information;

SELECT 
    id, LCASE(name), age
FROM
    information;

/*Select id, lcase(name), age from information;*/

SELECT 
    id, name, CHARACTER_LENGTH(name)
FROM
    information;
    

SELECT 
    id, name, CHAR_LENGTH(name) AS characters
FROM
    information;

SELECT 
    id, name, LENGTH(name) AS characters
FROM
    information;

/*Concatination;*/



SELECT 
    id, name, CONCAT(name, age)
FROM
    information;


UPDATE information 
SET 
    name = 'Jatin Kapoor'
WHERE
    id = 8;

SELECT 
    CONCAT('Jatin', '-', 'Kapoor') AS Name
FROM
    information;

SELECT 
    CONCAT_WS( 'Jatin','!', 'Kapoor', 'Hello', 'World') AS Name
FROM
    information;

/*Need to ask from mam*/

SELECT 
    CONCAT_WS('-','Jatin', 'Kapoor', 'Hello', 'World') AS Name
FROM
    information;

SELECT '         Jatin Kapoor          ' AS Name;

SELECT LTRIM('     Jatin Kapoor         ') AS Name;

SELECT RTRIM('     Jatin Kapoor                          ') AS Name;

SELECT TRIM('     Jatin Kapoor                          ') AS Name;

SELECT POSITION('World' IN 'Hello World') AS position_no;

SELECT POSITION('l' IN 'Hello World') AS position_no;

/*position(sub string in string)*/

SELECT INSTR('Hello World', 'el') AS position_no;

SELECT INSTR('Hello World', 'ell') AS position_no;

/* instr(string,substring)*/

SELECT LOCATE('l', 'Hello World', 2) AS position_no;

SELECT LOCATE('l', 'Hello World', 3) AS position_no;

SELECT LOCATE('l', 'Hello World', 7) AS position_no;

/* locate(sub string,string,start position)*/

SELECT SUBSTRING('Jatin Kapoor', 3);

SELECT SUBSTRING('Jatin Kapoor', 5);

SELECT SUBSTRING('Jatin Kapoor', 3, 6);

SELECT SUBSTRING('Jatin Kapoor', - 6, 3);

SELECT MID('Jatin Kapoor', - 6, 3);

SELECT SUBSTRING_INDEX('www.NeemaJha.net', '.', 1);

SELECT SUBSTRING_INDEX('www.NeemaJha.net', '.', 2);

SELECT SUBSTRING_INDEX('www.NeemaJha.net', 'e', 2);

SELECT SUBSTRING_INDEX('www.NeemaJha.net', 'e', 3);

SELECT LEFT('Neema Jha', 3);

SELECT RIGHT('Neema Jha', 3);

SELECT LPAD('Neema Jha', 20, '*');

SELECT LPAD('Neema Jha', 20, '-');

SELECT REVERSE('Neema Jha');

SELECT REPLACE('Neema Jha ', 'Jha', 'Mam');

SELECT 
    REPLACE('Neema Jha Neema Jha ',
        'Jha',
        'Mam');

/*when the bracket name is greater on left side it gives 1*/
SELECT STRCMP('Neema Jha', 'Neema');
/*when the name is same and the length the output is zero*/
SELECT STRCMP('Neema Jha', 'Neema Jha');
/*when the bracket name is bigger than left it gives negative 1*/
SELECT STRCMP('Neema', 'Neema Jha');

SELECT FIELD('a', 'x', 'a', 'k');

SELECT FIELD('a', 'X', 'A', 'k');

SELECT FIELD(5, 0, 1, 2, 3, 4, 5, 6);

SELECT FIND_IN_SET('ram', 'Ram,mohan,Mohan');

SELECT FIELD('ram', 'Ram', 'mohan', 'Shyam');

SELECT HEX('Neema Jha') AS value;

SELECT CURRENT_DATE();

SELECT CURDATE();

SELECT SYSDATE();

SELECT NOW();

SELECT DATE('2024-10-14 10:08:21');

SELECT MONTH('2024-10-14 10:08:21');

SELECT MONTHNAME('2024-10-14 10:08:21');

SELECT YEAR('2024-10-14 10:08:21');

SELECT QUARTER('2024-10-14 10:08:21');

SELECT DAYNAME('2024-10-14 10:08:21');

SELECT DAYOFMONTH('2024-10-14 10:08:21');

SELECT DAYOFWEEK('2024-10-14 10:08:21');

SELECT DAYOFYEAR('2024-10-14 10:08:21');

SELECT WEEK('2024-10-14 10:08:21');

SELECT WEEKDAY('2024-10-14 10:08:21');

SELECT YEARWEEK('2024-10-14 10:08:21');

SELECT LAST_DAY('2024-10-14 10:08:21');

SELECT EXTRACT(MONTH FROM '2024-02-14 10:08:21');

SELECT EXTRACT(HOUR FROM '2024-02-14 10:08:21');

SELECT ADDDATE('2024-10-14', INTERVAL 10 DAY);

SELECT ADDDATE('2024-10-14', INTERVAL 1 MONTH);

SELECT ADDDATE('2024-10-14', INTERVAL 10 DAY);

SELECT 
    DATE_ADD('2024-10-14',
        INTERVAL 5000 MINUTE);

SELECT MAKTEDATE(2024, 16);

SELECT SUBDATE('2024-10-14', INTERVAL 1 DAY);

/* Time Function*/

SELECT CURRENT_TIME();

SELECT CURTIME();

SELECT CURRENT_TIMESTAMP();

SELECT LOCALTIME();

SELECT LOCALTIMESTAMP();

SELECT TIME('2024-10-14 10:08:21');

SELECT HOUR('2024-10-14 10:08:21');

SELECT TIMEDIFF('15:35:24', '10:08:21');

alter table Product
drop column abc;

use company;

SELECT 
    *
FROM
    Product;

SELECT DISTINCT
    (product_name)
FROM
    Product;

SELECT 
    COUNT(DISTINCT quantity)
FROM
    Product;

SELECT 
    Product_name, SUM(quantity) AS 'Total Quantity sold'
FROM
    Product
GROUP BY Product_name;


SELECT 
    Product_name, AVG(price) AS 'Average Price'
FROM
    Product
GROUP BY Product_name;

SELECT 
    Region, COUNT(Sales_id)
FROM
    Product
GROUP BY Region;

SELECT 
    Region, SUM(quantity)
FROM
    Product
GROUP BY Region;


SELECT 
    Region, SUM(quantity)
FROM
    Product
GROUP BY Region
HAVING SUM(quantity) > 11;

SELECT 
    Product_name, SUM(price * quantity)
FROM
    Product
GROUP BY Product_name;

/* find the region where total sales greater than 5000*/
SELECT 
    Region, SUM(price * quantity)
FROM
    product
GROUP BY Region
HAVING SUM(price * quantity) > 5000;

/* find the average quantity sold for each product AND show product with average quantity greater than*/
SELECT 
    Product_name, AVG(quantity)
FROM
    product
GROUP BY Product_name
HAVING AVG(quantity) > 4;

/* Get the count of products in different region*/
SELECT 
    Region, COUNT(Product_name)
FROM
    product
GROUP BY Region;

/* Find the product with highest total sales amount*/
SELECT 
    Product_name, SUM(price * quantity)
FROM
    product
GROUP BY Product_name
HAVING SUM(price * quantity)
ORDER BY SUM(price * quantity) DESC;

SELECT 
    Product_name, SUM(price * quantity)
FROM
    product
GROUP BY Product_name
ORDER BY SUM(price * quantity) DESC
LIMIT 1;

SELECT 
    Product_name, AVG(quantity)
FROM
    Product
GROUP BY Product_name
HAVING AVG(quantity) > 4;

     /* Select
     from
     where
     group by
     having
     order by
     limit*/
     
     
SELECT 
    Product_name = 'Laptop', SUM(price * quantity)
FROM
    product
GROUP BY Product_name = 'Laptop';



Create database School;

use School;
use company;

SELECT 
    *
FROM
    student;

Insert into school.Course(Student_id,Course)
values
(102,'Eng'),
(103,'Math'),
(105,'Science'),
(107,'C.S');

alter table school.course
rename course;

alter table school.student
rename student;

Insert into student(Student_id,Name)
values
(101,'Adam'),
(102,'Bob'),
(103,'Caesy');

SELECT 
    student.student_id, name, course
FROM
    student
        INNER JOIN
    course ON student.student_id = course.student_id;

SELECT 
    student.student_id, name, course
FROM
    student
        LEFT JOIN
    course ON student.student_id = course.student_id;

SELECT 
    course.student_id, name, course
FROM
    student
        RIGHT JOIN
    course ON student.student_id = course.student_id;
    
    Drop database school;
































