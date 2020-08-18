-- select * from orders inner join customers 
-- on orders.customer_id = customers.id
-- where customers.city ='New York'

select order_id, products.product_name,
(order_details.unit_price * order_details.quantity) total,
CONCAT(customers.first_name, customers.last_name) customername, orders.order_date from orders 
inner join customers on orders.customer_id = customers.id
inner join order_details on order_details.order_id = orders.id
inner join products on products.id = order_details.product_id
order by customername

select order_id, sum(order_details.unit_price * order_details.quantity) total, 
CONCAT(customers.first_name, customers.last_name) customername, orders.order_date from orders 
inner join customers on orders.customer_id = customers.id
inner join order_details on order_details.order_id = orders.id
inner join products on products.id = order_details.product_id
group by orders.id