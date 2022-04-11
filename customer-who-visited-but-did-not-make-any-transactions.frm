# Write your MySQL query statement below
select customer_id, count(*) 'count_no_trans'
from Visits 
where visit_id not in 
(
    select visit_id from Transactions 
)
group by customer_id
order by count(*) desc;