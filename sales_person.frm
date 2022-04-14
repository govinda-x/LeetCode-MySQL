# Write your MySQL query statement below
select sp.name as name 
from SalesPerson sp 
where sp.sales_id not in (
select o.sales_id
from orders o join company c
on o.com_id = c.com_id
where c.name = 'RED'
)