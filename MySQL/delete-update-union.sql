-- join ile update

-- update employees e inner join employee_performance ep
-- on e.id = ep.employee_id
-- set e.email_address = ep.email
-- where ep.email like '%updated%'

-- ---------------------------------------------------------

-- join ile delete

-- siparişi olmayan müşterileri siliniz
-- select c.id, c.first_name from customers as c
-- left join orders as o on o.customer_id= c.id
-- where o.customer_id is null

-- delete customers
-- from customers left join orders
-- on orders.customer_id = customers.id
-- where orders.customer_id is null and customers.id = 13

-- ---------------------------------------------------------
-- union ile çalışma

-- select email from employee_performance
-- union all -- all tekrarlayanları getiriyor
-- select email_address from employees

-- select city from employees
-- union all
-- select city from customers