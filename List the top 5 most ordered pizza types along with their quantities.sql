-- List the top 5 most ordered pizza types along with their quantities

Select pizza_types.name,
sum(orders_details.quantity) as Quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details on orders_details.pizza_id = pizzas.pizza_id
Group by pizza_types.name 
order by quantity desc limit 5;
