create database Marketing;
use Marketing;
create table sales(
sale_id int not null unique primary key,
product_id int not null,
customer_id int not null,
sales_date date,
quantity int not null , 
unit_price int not null,
region varchar(50) not null);

insert into sales(sale_id,product_id,customer_id,sales_date,quantity,unit_price,region)
values
(1,101,1001,'2024-01-05',5,200,'north'),
(2,102,1002,'2024-01-10',10,150,'east'),
(3,103,1003,'2024-02-15',2,300,'north'),
(4,104,1004,'2024-02-20',7,250,'west'),
(5,105,1005,'2024-03-05',1,200,'east');

/* Write a query to calculate the total sales (Quantity * UnitPrice) for each product.*/

select product_id,sum(quantity*unit_price) as "total sales" from sales
group by product_id;

/* Write a query to find the total number of products sold in each region. */

select region , sum(quantity) as "total number of product sold" from sales
group by region;

/* Write a query to get the average sales amount per product. */

select product_id,avg(quantity*unit_price) as "average sales amount per product" from sales
group by product_id;

update sales
set product_id = 101 where sale_id=5;

/* Find the regions where total sales are more than 3000. */

select region , sum(quantity*unit_price) as"total sales" from sales
group  by region
having sum(quantity*unit_price)>3000;

/* Write a query to get the maximum quantity sold for each product.*/

select product_id,max(quantity) from sales
group by product_id;

/* Write a query to calculate the average quantity of products sold per region. */

select region, avg(quantity) from sales
group by region;

/* Find the product IDs that have generated a total sales amount of more than 1000. */

select product_id ,sum(quantity*unit_price) from sales
group by product_id
having sum(quantity*unit_price)>1000;

/* Write a query to get the total number of sales (rows) made for each customer. */

select customer_id,count(quantity) from sales
group by customer_id;

update sales
set customer_id = 1001 where sale_id = 4;

/* Find the products for which the average quantity sold is less than 5. */

select product_id , avg(quantity) from sales
group by product_id
having avg(quantity)<5;

/*Write a query to find the sum of total sales for each customer in each region.*/

select customer_id,region,sum(quantity*unit_price) from sales
group by customer_id,region;

/* Write a query to calculate the total sales for each month. */

select sales_date,sum(quantity*unit_price) from sales
group by sales_date;

/* Find the regions where the average unit price is more than 200. */

select region,avg(unit_price) from sales
group by region 
having avg(unit_price)>200;

/* Write a query to get the minimum and maximum quantity sold per region.  */

select region , min(quantity),max(quantity) from sales 
group by region;

/* Find the customers who have made more than 2 purchases.*/

select customer_id,count(product_id) from sales /* query*/
group by customer_id
having count(product_id)>1;


/* Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.*/

select product_id,sum(quantity*unit_price) from sales
group by product_id
having sum(quantity*unit_price)>1500;


