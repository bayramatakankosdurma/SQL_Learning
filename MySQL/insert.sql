-- insert

insert into employee_performance(employee_id, fullname, email, satis_adeti)

select e.id, CONCAT(e.first_name,' ',e.last_name) as fullname, e.email_address, count(o.id)
from employees as e left join orders o
on e.id = o.employee_id
group by e.id