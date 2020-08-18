-- select id, order_date from orders
-- where status_id = (select id from orders_status where status_name='Shipped')

-- select c.id, c.first_name as 'name', c.last_name as surname,
-- (select count(o.id) from orders as o where o.customer_id = c.id) as ordercount
-- from customers as c having ordercount>0

-- select id, product_name from products
-- where id in(select product_id from order_details where quantity>100)

-- ----------------------------------------------
-- exists

-- select id, first_name from customers as c
-- where EXISTS (select id from orders as o where c.id = o.customer_id and payment_type='Credit Card')

-- select id, first_name, last_name from customers as c
-- where EXISTS (select count(*) from orders as o where c.id= o.customer_id group by o.customer_id having count(*)>2)

