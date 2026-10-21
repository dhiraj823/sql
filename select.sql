use parks_and_recreation;
select *
from parks_and_recreation . employee_demographics;

select first_name,
last_name,
birth_date,
(age + 10) * 10
from parks_and_recreation . employee_demographics;

select distinct  first_name,gender 
from parks_and_recreation.employee_demographics;

select * 
from parks_and_recreation.employee_salary;

select employee_id(1),salary 
from parks_and_recreation.employee_salary;

SELECT 
    *
FROM
    parks_and_recreation.parks_departments;





