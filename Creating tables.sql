Use pizzahut;
Drop table orders;
Create table ordres (
order_id int not null,
order_date date not null,
order_time time not null,
primary key(order_id) );

Alter table ordres_details 
Rename to orders_details;

Create table ordres_details (
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key(order_details_id) );