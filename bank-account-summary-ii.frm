# Write your MySQL query statement below
select u.name as 'NAME', sum(t.amount) 'BALANCE'
from Users u join Transactions t
on u.account = t.account
group by u.account
having sum(t.amount)>10000;