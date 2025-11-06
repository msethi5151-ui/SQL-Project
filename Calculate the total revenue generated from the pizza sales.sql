-- Calculate the total revenue generated from the pizza sales

Select 
Round(sum(orders_details.quantity * pizzas.price),2) as total_sales
from orders_details join pizzas
on  pizzas.pizza_id = orders_details.pizza_id ;