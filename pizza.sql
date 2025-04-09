create database Pizza;
use Pizza;

# Retrieve the total number of orders placed.
select count(order_id) as " total number of orders placed " from orders;

#Calculate the total revenue generated from pizza sales.
select round(sum(od.quantity*p.price),2)
from od
inner join pizza p
on od.pizza_id = p.pizza_id;

#Identify the highest-priced pizza.
select pizza_id from pizza order by price desc limit 1;
 
#Identify the most common pizza size ordered.
select p.size , count(od.order_details_id)
from pizza p 
join od
on p.pizza_id = od.pizza_id
group by p.size
order by count(od.order_details_id) desc 
limit 1;

# List the top 5 most ordered pizza types along with their quantities
select pt.name,
sum(od.quantity)
from pt
join pizza
on pt.pizza_type_id = pizza.pizza_type_id
join od
on od.pizza_id = pizza.pizza_id
group by pt.name
order by sum(od.quantity) desc
limit 5;

# Join the necessary tables to find the total quantity of each pizza category ordered.
select pt.category,sum(od.quantity)
from pt
join pizza
on pt.pizza_type_id = pizza.pizza_type_id
join od
on od.pizza_id = pizza.pizza_id
group by pt.category
order by sum(od.quantity) desc;

# determine the distribution of orders by hour of the day.
select hour(time) , count(order_id) from orders
group by hour(time);

#Join the relevant table to find the category wise distribution of pizzas.
select category, count(name) from pt
group by category;

# Group the orders by date and calculate the average number of pizzas ordered per day.
select round(avg(quantity),0) as average_pizza_per_day from (select orders.date , sum(od.quantity)
from orders
join od
on orders.order_id = od.order_id
group by orders.date) as order_quantity;

# Determine the top3 most ordered pizza types based on revenue

select pt.name , sum(pizza.price*od.quantity) as revenue
from pt
join pizza
on pt.pizza_type_id = pizza.pizza_type_id
join od
on od.pizza_id = pizza.pizza_id
group by pt.name
order by sum(pizza.price) desc
limit 3;

# Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pt.category, 
    SUM(pizza.price * od.quantity) / 
    (SELECT ROUND(SUM(od.quantity * pizza.price), 2) 
     FROM pt 
     JOIN pizza ON pt.pizza_type_id = pizza.pizza_type_id
     JOIN od ON od.pizza_id = pizza.pizza_id) * 100 AS revenue_percentage
FROM pt
JOIN pizza ON pt.pizza_type_id = pizza.pizza_type_id
JOIN od ON od.pizza_id = pizza.pizza_id
GROUP BY pt.category
ORDER BY revenue_percentage DESC;

# analyze the cumlative revenue generated over time.alter

select date,
sum(revenue) over(order by order_date)
from
(select orders.date,
sum(od.quantity * pizza.price)
from od 
join pizza
on od.pizza_id = pizza.pizza_id
join orders
on orders.order_id = od.order_id
group by orders.date) ;

#based on revenue for each pizza category

select category, name, revenue,
rank() over(partition by category order by revenue desc) as rn
from
(select pt.category, pt.name,
sum((od.quantity) * pizza.price) as revenue
from pt 
join pizza
on pt.pizza_type_id = pizza.pizza_type_id
join od
on od.pizza_id = pizza.pizza_id
group by pt.category, pt.names);


 