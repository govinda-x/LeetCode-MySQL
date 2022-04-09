# Write your MySQL query statement below
Select name as 'Customers' 
from Customers 
where customers.id not in (select customerid from orders );
 