# Write your MySQL query statement below
Select employee_id from (
Select employee_id from employees 
where employee_id not in (select employee_id from salaries)
UNION
Select employee_id from Salaries
where employee_id not in (select employee_id from employees)
    ) as T 
    order by employee_id