/*Create a database named library and a table named books with the following columns:
id (INT, Primary Key, Auto Increment)
title (VARCHAR(255))
author (VARCHAR(100))
year (YEAR)
genre (VARCHAR(100))*/

create database Library;

use Library;

CREATE TABLE Books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    year YEAR NOT NULL,
    genre VARCHAR(100)
);

SELECT 
    *
FROM
    Books;



/*Insert the following book records into the books table:
"The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"
"Pride and Prejudice", "Jane Austen", 1813, "Romance"
"To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"
"1984", "George Orwell", 1949, "Dystopian"
"Moby Dick", "Herman Melville", 1851, "Adventure"*/


INSERT INTO books (title, author, year, genre) 
VALUES 
("The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"),
("Pride and Prejudice", "Jane Austen", 1813, "Romance"),
("To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),
("1984", "George Orwell", 1949, "Dystopian"),
("Moby Dick", "Herman Melville", 1851, "Adventure");

alter table Books 
modify Year int;

select * from Books;


/*Write a query to select all books where the title starts with the letter 'T' using the LIKE operator.*/

select * from Books where title like "T%";



/*Write a query to find all books where the author's last name ends with 'son' using the LIKE operator.*/

select * from Books where author like "%son";
/*(There is no author whose last name ends with 'son')*/


/* Write a query to find all books where the title contains the word 'and' using the LIKE operator.*/

select * from Books where title like '%and%';


/* Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.*/

select * from Books where title like '%birds';
/* (There is not title that ends with the word 'bird')*/


/*Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.*/

SELECT * 
FROM Books 
WHERE title REGEXP '^.{3}$';
/* (There is no title which have exactly 3 characters)*/

/*Write a query to select all books where the title contains a number using the REGEXP operator.*/

select * from Books where title Regexp '[0-9]';

/* Write a query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator.*/

select * from Books where author Regexp '^[A-Ja-j]';

/*Write a query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.*/

select * from Books where genre Regexp 'Fiction|Adventure';

/*Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.*/

select * from Books where title Regexp '[A-Z]';

/*Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.*/

Select * from Books where year Like '18%' or '19[0-5]%';


/*Write a query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.*/


select * from Books where author Regexp '^[A-Za-z]+[A-Za-z]+$';
/*There is no author's name with exactly 2 words*/


/*Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.*/

SELECT * 
FROM books 
WHERE title REGEXP '^P[A-Za-z]*[A-Za-z]+$';

/* There is no title starts with the letter 'P' and contains exactly two words*/


/*Write a query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.*/

select title from Books where title Regexp '!|@|#';








INSERT INTO books (title, author, year, genre) 
VALUES 
("@Jatin!Kapoor","!@#abc",1999,"abc!@#");




/* Practice*/


select title from books where title like 't%';
select author from books where author like ' %son ';
select title from books where title like '%and%';
select title from books where title like '%bird';
select title from books where title regexp '^.{3}$';
select title from books where title regexp '[0-9]';
select author from books where author regexp '^[A-Ja-j]';
select genre from books where genre regexp 'Fiction|Adventure';
select title from books where title regexp '[A-Z]';
select year from books where year like '18% ' or '19%[5-0]';
select author from books where author regexp '^[A-Za-z]+[A-Za-z]$';
select title from books where title regexp '^P[A-Za-z]+[A-Za-z]$';
select title from books where title regexp '@|!|#|$|%';











