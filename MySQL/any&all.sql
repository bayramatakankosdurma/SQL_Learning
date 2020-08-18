-- any & all

-- select id, product_name, list_price from products
-- where id = any(2,3,5,10)
-- (id=2) or (id=3) or (id=5) or (id=10)

-- ------------------------------------------------------

-- select id, product_name, list_price from products
-- where id= any (select product_id from order_details where quantity >10)

-- ------------------------------------------------------

-- select id, product_name, list_price from products
-- where id > all (select product_id from order_details where quantity >10)

-- ------------------------------------------------------

-- select avg(salary) from customers2
-- select * from customers2 where salary> any(select avg(salary) from customers2)

-- select * from customers2 where age > any(select age from customers2 where salary >5000)
