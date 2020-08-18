-- select CONCAT(c.first_name, c.last_name) customername, o.id as orderid from customers c
-- left join orders o
-- on o.customer_id =c.id
-- where o.id is null
-- order by customername;

-- select p.id, p.product_name from products p left join order_details od 
-- on p.id =od.product_id
-- where od.id is null;

-- select o.id, e.first_name from orders o right join employees e 
-- on e.id = o.employee_id
-- where o.id is null
-- order by o.id

-- ------------------------------------------------------------
-- hangi üründen kaç tane satılmış? products, order details.

-- select p.id , p.product_name, count(*) adet from products p inner join order_details od
-- on p.id= od.product_id
-- group by p.id
-- order by adet DESC

-- ------------------------------------------------------------
-- en çok kazandıran ilk 3 ürün hangisidir? order details - quantity, products join
-- select p.id, p.product_name, sum(od.quantity * od.unit_price) as kazanç from products as p inner join order_details as od
-- on p.id= od.product_id 
-- group by p.id
-- order by kazanç DESC
-- limit 3

-- -------------------------------------------------------------
-- hangi kargo şirketlerine toplam ne kadar ödeme yapılmış? orders, shippers
-- select s.company, sum(o.shipping_fee) as total from orders as o inner join shippers as s
-- on s.id = o.shipper_id 
-- group by s.id
-- order by total DESC

-- -------------------------------------------------------------
-- en uygun kargo ücreti hangisidir?shippers, orders
-- select s.company, avg(o.shipping_fee) as ortalama from orders o inner join shippers s
-- on s.id= o.shipper_id
-- where o.shipping_fee >0
-- group by s.id
-- having count(o.id) >5